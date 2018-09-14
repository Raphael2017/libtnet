//
// Created by qwerty on 9/13/18.
//

#include "message.h"

using namespace smb;

message::message(size_t len) : len_(len), data_(new char[len_]) {}
message::~message()
{
    delete[](data_);
}