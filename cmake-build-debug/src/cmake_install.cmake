# Install script for directory: /home/qwerty/my_proj/net/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/qwerty/my_proj/net/cmake-build-debug/lib/libtnet.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tnet" TYPE FILE FILES
    "/home/qwerty/my_proj/net/src/address.h"
    "/home/qwerty/my_proj/net/src/connection.h"
    "/home/qwerty/my_proj/net/src/connector.h"
    "/home/qwerty/my_proj/net/src/connector.inl"
    "/home/qwerty/my_proj/net/src/log.h"
    "/home/qwerty/my_proj/net/src/nocopyable.h"
    "/home/qwerty/my_proj/net/src/notifier.h"
    "/home/qwerty/my_proj/net/src/signaler.h"
    "/home/qwerty/my_proj/net/src/sockutil.h"
    "/home/qwerty/my_proj/net/src/spinlock.h"
    "/home/qwerty/my_proj/net/src/stringutil.h"
    "/home/qwerty/my_proj/net/src/tcpserver.h"
    "/home/qwerty/my_proj/net/src/timer.h"
    "/home/qwerty/my_proj/net/src/timingwheel.h"
    "/home/qwerty/my_proj/net/src/tnet.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/qwerty/my_proj/net/cmake-build-debug/src/http/cmake_install.cmake")
  include("/home/qwerty/my_proj/net/cmake-build-debug/src/redis/cmake_install.cmake")

endif()

