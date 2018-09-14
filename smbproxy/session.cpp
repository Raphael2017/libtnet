//
// Created by qwerty on 9/13/18.
//

#include "session.h"
#include "sockutil.h"
#include "address.h"
#include "smbproxy.h"
#include <arpa/inet.h>

using namespace smb;
using namespace tnet;

session::~session()
{

}

void session::start()
{
    auto con1 = con1_.lock();
    con1->setEventCallback(std::bind(&session::onConnEvent, std::weak_ptr<session>(shared_from_this()), std::placeholders::_1,
                                     std::placeholders::_2, std::placeholders::_3));
}

void session::leave()
{
    proxy_->leave(shared_from_this());
}

void session::onConnEvent(std::weak_ptr<session> ss, const tnet::ConnectionPtr_t& conn, tnet::ConnEvent event, const void* context)
{
    auto sess = ss.lock();
    if (!sess) return;
    switch (event)
    {
        case tnet::Conn_ReadEvent:
        {
            auto msg = sess->messageCodec(conn, context);
            if (!msg) return;
            auto con1 = sess->con1_.lock();
            auto con2 = sess->con2_.lock();
            if (con1 && con2)
            {
                if (con1 == conn)
                {
                    sess->onClientMsg(msg);
                }
                else
                {
                    sess->onServerMsg(msg);
                }

            }
            else if (con1 && !con2)
            {
                sess->setFirstMsg(msg);
                int fd = SockUtil::create();
                ConnectionPtr_t con = std::make_shared<Connection>(sess->m_loop, fd);

                sess->con2_ = std::weak_ptr<Connection>(con);
                con->setEventCallback(std::bind(&session::onConnEvent, ss, std::placeholders::_1,
                                                 std::placeholders::_2, std::placeholders::_3));
                con->connect(Address("10.86.32.74", 445));
            }
            else
            {
                // error
            }
        }
            break;
        case tnet::Conn_CloseEvent:
        {
            auto con1 = sess->con1_.lock();
            auto con2 = sess->con2_.lock();
            if (con1)
            {
                con1->shutDown();
            }

            if (con2)
            {
                con2->shutDown();
            }
            sess->leave();
        }
            break;
        case tnet::Conn_ConnectEvent:
        {
            if (sess->firstMsg_)
            {
                sess->onClientMsg(sess->firstMsg_);
                sess->setFirstMsg(nullptr);
            }
        }
        break;
        default:
            break;
    }
}

std::shared_ptr<message> session::messageCodec(const tnet::ConnectionPtr_t& conn, const void* context)
{
    tnet::Buffer& cache_ = (conn == con1_.lock()) ? buff1_ : buff2_;
    const tnet::StackBuffer* buffer = static_cast<const tnet::StackBuffer*>(context);
    cache_.write((void*)buffer->buffer, buffer->count);
    while (cache_.readable() >= message::header_length)
    {
        int32_t len = cache_.peek<int32_t >();
        len = ntohl(len);
        if (len < 0)
        {
            conn->shutDown();   // err
        }
        else if (cache_.readable() >= len + message::header_length)
        {
            std::shared_ptr<message> msg(new message(len + message::header_length));
            cache_.read(msg->data_, len + message::header_length);
            return msg;
        }
        else
        {
            break;  // not enough
        }
    }
    return nullptr;
}

void session::onClientMsg(std::shared_ptr<message> msg)
{
    auto con2 = con2_.lock();
    if (!con2) return;
    con2->send(msg->getStr());  // just dispatch
}

void session::onServerMsg(std::shared_ptr<message> msg)
{
    auto con1 = con1_.lock();
    if (!con1) return;
    con1->send(msg->getStr());  // just dispatch
}