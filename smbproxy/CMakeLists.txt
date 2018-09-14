set(CMAKE_CXX_FLAGS "-std=c++0x ${CMAKE_CXX_FLAGS}")

include_directories(../src)

set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)

set(SRCS
        session.cpp
        message.cpp
)

add_library(smb ${SRCS})

add_executable(smbproxy smbproxy.cpp)
target_link_libraries(smbproxy tnet)
target_link_libraries(smbproxy smb)


