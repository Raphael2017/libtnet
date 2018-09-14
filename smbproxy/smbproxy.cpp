//
// Created by qwerty on 9/13/18.
//

#include <cstdio>
#include "smbproxy.h"
#include "address.h"

using namespace smb;

void proxyserver::handle_accept(tnet::ConnectionPtr_t conn)
{
    std::shared_ptr<session> new_session(new session(this, sv_.getLoop(), conn));
    new_session->start();
    sessions_.insert(new_session);
}

void proxyserver::onConnEvent(const tnet::ConnectionPtr_t &conn, tnet::ConnEvent event, const void *context)
{
    switch (event) {
        case tnet::Conn_EstablishedEvent: {
            handle_accept(conn);
        }
            break;
        default:
            break;
    }
}

int main()
{
    tnet::TcpServer s;
    s.setMaxIdleTimeout(600);
    smb::proxyserver sv(s);
    s.listen(tnet::Address(445), std::bind(&smb::proxyserver::onConnEvent, &sv, _1, _2, _3));

    s.start(1);
}