//
// Created by qwerty on 9/13/18.
//

#ifndef TNET_SESSION_H
#define TNET_SESSION_H

#include <memory>
#include "connection.h"
#include "Buffer.h"
#include "message.h"



namespace smb{
    class proxyserver;
    class session : public std::enable_shared_from_this<session>
    {
    public:
        session(proxyserver* proxy, tnet::IOLoop* loop, std::weak_ptr<tnet::Connection> con1) : m_loop(loop), con1_(con1), proxy_(proxy) {}
        ~session();
        void start();
        void leave();

    private:
        void onClientMsg(std::shared_ptr<message>);
        void onServerMsg(std::shared_ptr<message>);
        void setFirstMsg(std::shared_ptr<message> msg) { firstMsg_ = msg; }
    private:
        static void onConnEvent(std::weak_ptr<session> ss, const tnet::ConnectionPtr_t& conn, tnet::ConnEvent event, const void* context);
        // LengthHeaderCodec
        std::shared_ptr<message> messageCodec(const tnet::ConnectionPtr_t& conn, const void* context);

        std::weak_ptr<tnet::Connection> con1_;
        std::weak_ptr<tnet::Connection> con2_;
        tnet::Buffer buff1_;
        tnet::Buffer buff2_;
        tnet::IOLoop* m_loop;
        proxyserver* proxy_;
        std::shared_ptr<message> firstMsg_;
    };
}


#endif //TNET_SESSION_H
