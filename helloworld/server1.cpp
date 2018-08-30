#include "Buffer.h"
#include <string.h>
#include <stdio.h>
#include <deque>
#include <memory>
#include <set>
#include <functional>
#include <iostream>
#include <algorithm>
#include "tcpserver.h"
#include "tnet.h"
#include "tcpserver.h"
#include "log.h"
#include "connection.h"
#include "address.h"
#include <string>
#include <map>

using namespace std;
using namespace std::placeholders;

class chat_message
{
    public:
    enum { header_length = 4 };
    enum { max_body_length = 512 };

    chat_message()
    : body_length_(0)
    {
    }

    const char* data() const
    {
        return data_;
    }

    char* data()
    {
        return data_;
    }

    size_t length() const
    {
        return header_length + body_length_;
    }

    const char* body() const
    {
        return data_ + header_length;
    }

    char* body()
    {
        return data_ + header_length;
    }

    size_t body_length() const
    {
        return body_length_;
    }

    void body_length(size_t length)
    {
        body_length_ = length;
        if (body_length_ > max_body_length)
            body_length_ = max_body_length;
    }

    bool decode_header()
    {
        using namespace std; // For strncat and atoi.
        char header[header_length + 1] = "";
        strncat(header, data_, header_length);
        body_length_ = atoi(header);
        if (body_length_ > max_body_length)
        {
            body_length_ = 0;
            return false;
        }
        return true;
    }

    void encode_header()
    {
        using namespace std; // For sprintf and memcpy.
        char header[header_length + 1] = "";
        sprintf(header, "%4d", body_length_);
        memcpy(data_, header, header_length);
    }

    private:
    char data_[header_length + max_body_length];
    size_t body_length_;
};

typedef std::deque<chat_message> chat_message_queue;

class chat_participant
{
public:
    virtual ~chat_participant() {}
    virtual void deliver(const chat_message& msg) = 0;
};

typedef std::shared_ptr<chat_participant> chat_participant_ptr;

class chat_room
{
public:
    void join(chat_participant_ptr participant)
    {
        cout<<__FUNCTION__<<endl;
        participants_.insert(participant);

        std::for_each(recent_msgs_.begin(), recent_msgs_.end(),
                      std::bind(&chat_participant::deliver, participant, _1));
    }

    void leave(chat_participant_ptr participant)
    {
        cout<<__FUNCTION__<<endl;
        participants_.erase(participant);
    }

    // 存入msg到缓冲区队列
    void deliver(const chat_message& msg) // 11 发言
    {
        cout<<__FUNCTION__<<endl;
        recent_msgs_.push_back(msg);
        while (recent_msgs_.size() > max_recent_msgs)
            recent_msgs_.pop_front(); // 将过时发言清出缓冲区

        std::for_each(participants_.begin(), participants_.end(),
                      std::bind(&chat_participant::deliver, _1, std::ref(msg))); // 12
    }
    chat_participant_ptr getParticipant(tnet::ConnectionPtr_t conn) const
    {

    }
private:
    std::set<chat_participant_ptr> participants_; // 当前聊天室的n个参与者：set，不能重复
    enum { max_recent_msgs = 100 }; // 最大最近消息：缓冲区最多保存最近100条发言
    chat_message_queue recent_msgs_; // 消息队列：deque,先到先出
};

class chat_session
        : public chat_participant,
          public std::enable_shared_from_this<chat_session>
{
public:
    chat_session(tnet::ConnectionPtr_t conn, chat_room& room)
            : con_(conn),
              room_(room)
    {

    }

    tnet::ConnectionPtr_t connection()
    {
        return con_;
    }

    void start()
    {
        room_.join(shared_from_this());
    }

    void handleRead(const void* context)
    {
        const tnet::StackBuffer* buffer = static_cast<const tnet::StackBuffer*>(context);
        cache_.write((void*)buffer->buffer, buffer->count);
        while (cache_.readable() >= chat_message::header_length)
        {
            int32_t len = cache_.peek<int32_t >();
            if (len < 0 || len > chat_message::max_body_length)
            {
                connection()->shutDown();   // err
            }
            else if (cache_.readable() >= len + chat_message::header_length)
            {
                chat_message msg;
                cache_.read(msg.data(), chat_message::header_length);
                msg.body_length(len);
                cache_.read(msg.body(), len);
                room_.deliver(msg);
            }
            else
            {
                break;  // not enough
            }
        }
    }

    //存入数据到write_msgs_，送队列的最开始一条发言到buffer
    void deliver(const chat_message& msg) // 12,有几个客户端调用几次
    {
        std::string data(msg.data(), msg.length());
        connection()->send(data);
    }

private:
    tnet::Buffer cache_;
    tnet::ConnectionPtr_t con_;
    chat_room& room_;
};

typedef std::shared_ptr<chat_session> chat_session_ptr;

class chat_server
{
public:
    chat_server(tnet::TcpServer& sv)
            : sv_(sv)
    {

    }
    void handle_accept(tnet::ConnectionPtr_t conn)
    {
        chat_session_ptr new_session(new chat_session(conn, room_));
        new_session->start();
        mmp_[conn.get()] = new_session;
    }
    void onConnEvent(const tnet::ConnectionPtr_t& conn, tnet::ConnEvent event, const void* context)
    {
        switch(event)
        {
            case tnet::Conn_ReadEvent:
            {
                mmp_[conn.get()]->handleRead(context);
            }
                break;
            case tnet::Conn_EstablishedEvent:
            {
                handle_accept(conn);
            }
                break;
            default:
                break;
        }
    }

private:
    std::map<void*, chat_session_ptr> mmp_;
    tnet::TcpServer& sv_;
    chat_room room_;
};

int main()
{
    tnet::TcpServer s;
    chat_server sv(s);
    s.listen(tnet::Address(11182), std::bind(&chat_server::onConnEvent, &sv, _1, _2, _3));

    s.start(1);
}