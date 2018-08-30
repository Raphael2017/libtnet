//
// Created by qwerty on 8/27/18.
//

#ifndef TNET_BUFFER_H
#define TNET_BUFFER_H

#include <cstdlib>
#include <vector>
namespace tnet {


    class Buffer {
    public:
        explicit Buffer(size_t sz = DEFAULT_SZ);
        void reset();
        size_t readable() const;
        size_t writable() const;
        size_t read(void* dst, size_t sz);
        size_t write(void* src, size_t sz);
        template <typename T>
        Buffer& operator<<(T src)
        {
            write(&src, sizeof(src));
            return *this;
        }
        template <typename T>
        Buffer& operator>>(T& dst)
        {
            read(&dst, sizeof(dst));
            return *this;
        }
        template <typename T>
        T peek()
        {
            T dst;
            size_t readidx = readidx_;
            (*this) >> dst;
            readidx_ = readidx;
            return dst;
        }

    private:
        void ensureEnoughSpace(size_t sz);
        std::vector<char> buff_;
        size_t readidx_;
        size_t writeidx_;
        const static size_t DEFAULT_SZ = 1024;
    };

}

#endif //TNET_BUFFER_H
