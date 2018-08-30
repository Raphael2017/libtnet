//
// Created by qwerty on 8/27/18.
//

#include "Buffer.h"
#include <assert.h>
#include <string.h>

using namespace tnet;

Buffer::Buffer(size_t sz)
    : buff_(sz), readidx_(0), writeidx_(0)
{

}
void Buffer::reset()
{
    readidx_ = 0;
    writeidx_ = 0;
}
size_t Buffer::readable() const
{
    return writeidx_ - readidx_;
}
size_t Buffer::writable() const
{
    return buff_.size() - writeidx_;
}
size_t Buffer::read(void* dst, size_t sz)
{
    assert(sz <= readable());
    char* cur = &*(buff_.begin() + readidx_);
    ::memcpy(dst, cur, sz);
    readidx_ += sz;
    if (0 == readable())
        reset();
    return sz;
}
size_t Buffer::write(void* src, size_t sz)
{
    ensureEnoughSpace(sz);
    char* cur = &*(buff_.begin() + writeidx_);
    ::memcpy(cur, src, sz);
    writeidx_ += sz;
    return sz;
}

void Buffer::ensureEnoughSpace(size_t sz)
{
    if (sz > writable())
    {
        buff_.resize(writeidx_ + sz);
    }
}
