set(CMAKE_CXX_FLAGS "-std=c++0x ${CMAKE_CXX_FLAGS}")

include_directories(../src)
include_directories(../src/http)
include_directories(../src/redis)

set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)

add_executable(server1 server1.cpp)
target_link_libraries(server1 tnet)

add_executable(client1 client1.cpp)
target_link_libraries(client1 tnet)

