//
// Created by qwerty on 9/13/18.
//

#ifndef TNET_MESSAGE_H
#define TNET_MESSAGE_H

#include <string>

namespace smb {
    class message {
    public:
        message(size_t len);
        ~message();
        std::string getStr() const
        {
            return std::string(data_, len_);
        }
        size_t len_;
        char* data_;
        enum{header_length = 4};
    };

}
#endif //TNET_MESSAGE_H
