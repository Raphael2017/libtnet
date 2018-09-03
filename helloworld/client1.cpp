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
#include <thread>

#include <cstdlib>

#include "ioloop.h"
#include "sockutil.h"


using namespace std;
using namespace std::placeholders;

using namespace tnet;

std::thread* pth = nullptr;
Buffer cache_;

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
        int32_t a = body_length_;
        memcpy(data_, &a, header_length);
    }

private:
    char data_[header_length + max_body_length];
    size_t body_length_;
};

void procInput(ConnectionPtr_t conn)
{
    char line[chat_message::max_body_length + 1];
    while (std::cin.getline(line, chat_message::max_body_length + 1))
    {
        chat_message msg;
        msg.body_length(strlen(line));
        memcpy(msg.body(), line, msg.body_length());// line to msg
        msg.encode_header();
        std::string data(msg.data(), msg.length());
        conn->send(data);
    }
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

        }
        else if (cache_.readable() >= len + chat_message::header_length)
        {
            chat_message msg;
            cache_.read(msg.data(), chat_message::header_length);
            msg.body_length(len);
            cache_.read(msg.body(), len);
            std::cout.write(msg.body(), msg.body_length()); // print read_msg_'s body
            std::cout << "\n";
        }
        else
        {
            break;  // not enough
        }
    }
}

void onConnEvent(const ConnectionPtr_t& conn, ConnEvent event, const void* context)
{
    switch(event)
    {
        case Conn_ReadEvent:
        {
            handleRead(context);
        }
            break;
        case Conn_CloseEvent:
            LOG_INFO("close");
            break;
        case Conn_ErrorEvent:
            LOG_INFO("error");
            break;
        case Conn_ConnectEvent:
        {
            LOG_INFO("connect");
            pth = new std::thread(std::bind(&procInput, conn));
        }
            break;
        default:
            break;
    }
}



int main()
{
    IOLoop loop;

    int fd = SockUtil::create();

    ConnectionPtr_t conn = std::make_shared<Connection>(&loop, fd);

    conn->setEventCallback(std::bind(&onConnEvent, _1, _2, _3));

    conn->connect(Address(11181));

    loop.start();
    pth->join();
    delete pth;
    return 0;
}
