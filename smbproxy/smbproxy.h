//
// Created by qwerty on 9/13/18.
//

#ifndef TNET_SMBPROXY_H
#define TNET_SMBPROXY_H

#include "tcpserver.h"
#include "session.h"
#include <set>

namespace smb {
    class proxyserver {
    public:
        proxyserver(tnet::TcpServer &sv)
                : sv_(sv) {
        }

        void leave(std::shared_ptr<session> s)
        {
            sessions_.erase(s);
        }

        void handle_accept(tnet::ConnectionPtr_t conn);

        void onConnEvent(const tnet::ConnectionPtr_t &conn, tnet::ConnEvent event, const void *context);
    private:
        tnet::TcpServer &sv_;
        std::set<std::shared_ptr<session>> sessions_;
    };

}
#endif //TNET_SMBPROXY_H
