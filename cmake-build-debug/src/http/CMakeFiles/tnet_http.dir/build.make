# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/qwerty/bin/clion-2018.2.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/qwerty/bin/clion-2018.2.1/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/qwerty/my_proj/net

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/qwerty/my_proj/net/cmake-build-debug

# Include any dependencies generated for this target.
include src/http/CMakeFiles/tnet_http.dir/depend.make

# Include the progress variables for this target.
include src/http/CMakeFiles/tnet_http.dir/progress.make

# Include the compile flags for this target's objects.
include src/http/CMakeFiles/tnet_http.dir/flags.make

src/http/CMakeFiles/tnet_http.dir/http_parser.c.o: src/http/CMakeFiles/tnet_http.dir/flags.make
src/http/CMakeFiles/tnet_http.dir/http_parser.c.o: ../src/http/http_parser.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/http/CMakeFiles/tnet_http.dir/http_parser.c.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tnet_http.dir/http_parser.c.o   -c /home/qwerty/my_proj/net/src/http/http_parser.c

src/http/CMakeFiles/tnet_http.dir/http_parser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tnet_http.dir/http_parser.c.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/qwerty/my_proj/net/src/http/http_parser.c > CMakeFiles/tnet_http.dir/http_parser.c.i

src/http/CMakeFiles/tnet_http.dir/http_parser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tnet_http.dir/http_parser.c.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/qwerty/my_proj/net/src/http/http_parser.c -o CMakeFiles/tnet_http.dir/http_parser.c.s

src/http/CMakeFiles/tnet_http.dir/httpclient.cpp.o: src/http/CMakeFiles/tnet_http.dir/flags.make
src/http/CMakeFiles/tnet_http.dir/httpclient.cpp.o: ../src/http/httpclient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/http/CMakeFiles/tnet_http.dir/httpclient.cpp.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tnet_http.dir/httpclient.cpp.o -c /home/qwerty/my_proj/net/src/http/httpclient.cpp

src/http/CMakeFiles/tnet_http.dir/httpclient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tnet_http.dir/httpclient.cpp.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwerty/my_proj/net/src/http/httpclient.cpp > CMakeFiles/tnet_http.dir/httpclient.cpp.i

src/http/CMakeFiles/tnet_http.dir/httpclient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tnet_http.dir/httpclient.cpp.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwerty/my_proj/net/src/http/httpclient.cpp -o CMakeFiles/tnet_http.dir/httpclient.cpp.s

src/http/CMakeFiles/tnet_http.dir/httpconnection.cpp.o: src/http/CMakeFiles/tnet_http.dir/flags.make
src/http/CMakeFiles/tnet_http.dir/httpconnection.cpp.o: ../src/http/httpconnection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/http/CMakeFiles/tnet_http.dir/httpconnection.cpp.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tnet_http.dir/httpconnection.cpp.o -c /home/qwerty/my_proj/net/src/http/httpconnection.cpp

src/http/CMakeFiles/tnet_http.dir/httpconnection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tnet_http.dir/httpconnection.cpp.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwerty/my_proj/net/src/http/httpconnection.cpp > CMakeFiles/tnet_http.dir/httpconnection.cpp.i

src/http/CMakeFiles/tnet_http.dir/httpconnection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tnet_http.dir/httpconnection.cpp.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwerty/my_proj/net/src/http/httpconnection.cpp -o CMakeFiles/tnet_http.dir/httpconnection.cpp.s

src/http/CMakeFiles/tnet_http.dir/httpconnector.cpp.o: src/http/CMakeFiles/tnet_http.dir/flags.make
src/http/CMakeFiles/tnet_http.dir/httpconnector.cpp.o: ../src/http/httpconnector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/http/CMakeFiles/tnet_http.dir/httpconnector.cpp.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tnet_http.dir/httpconnector.cpp.o -c /home/qwerty/my_proj/net/src/http/httpconnector.cpp

src/http/CMakeFiles/tnet_http.dir/httpconnector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tnet_http.dir/httpconnector.cpp.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwerty/my_proj/net/src/http/httpconnector.cpp > CMakeFiles/tnet_http.dir/httpconnector.cpp.i

src/http/CMakeFiles/tnet_http.dir/httpconnector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tnet_http.dir/httpconnector.cpp.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwerty/my_proj/net/src/http/httpconnector.cpp -o CMakeFiles/tnet_http.dir/httpconnector.cpp.s

src/http/CMakeFiles/tnet_http.dir/httpparser.cpp.o: src/http/CMakeFiles/tnet_http.dir/flags.make
src/http/CMakeFiles/tnet_http.dir/httpparser.cpp.o: ../src/http/httpparser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/http/CMakeFiles/tnet_http.dir/httpparser.cpp.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tnet_http.dir/httpparser.cpp.o -c /home/qwerty/my_proj/net/src/http/httpparser.cpp

src/http/CMakeFiles/tnet_http.dir/httpparser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tnet_http.dir/httpparser.cpp.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwerty/my_proj/net/src/http/httpparser.cpp > CMakeFiles/tnet_http.dir/httpparser.cpp.i

src/http/CMakeFiles/tnet_http.dir/httpparser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tnet_http.dir/httpparser.cpp.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwerty/my_proj/net/src/http/httpparser.cpp -o CMakeFiles/tnet_http.dir/httpparser.cpp.s

src/http/CMakeFiles/tnet_http.dir/httprequest.cpp.o: src/http/CMakeFiles/tnet_http.dir/flags.make
src/http/CMakeFiles/tnet_http.dir/httprequest.cpp.o: ../src/http/httprequest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/http/CMakeFiles/tnet_http.dir/httprequest.cpp.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tnet_http.dir/httprequest.cpp.o -c /home/qwerty/my_proj/net/src/http/httprequest.cpp

src/http/CMakeFiles/tnet_http.dir/httprequest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tnet_http.dir/httprequest.cpp.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwerty/my_proj/net/src/http/httprequest.cpp > CMakeFiles/tnet_http.dir/httprequest.cpp.i

src/http/CMakeFiles/tnet_http.dir/httprequest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tnet_http.dir/httprequest.cpp.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwerty/my_proj/net/src/http/httprequest.cpp -o CMakeFiles/tnet_http.dir/httprequest.cpp.s

src/http/CMakeFiles/tnet_http.dir/httpresponse.cpp.o: src/http/CMakeFiles/tnet_http.dir/flags.make
src/http/CMakeFiles/tnet_http.dir/httpresponse.cpp.o: ../src/http/httpresponse.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/http/CMakeFiles/tnet_http.dir/httpresponse.cpp.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tnet_http.dir/httpresponse.cpp.o -c /home/qwerty/my_proj/net/src/http/httpresponse.cpp

src/http/CMakeFiles/tnet_http.dir/httpresponse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tnet_http.dir/httpresponse.cpp.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwerty/my_proj/net/src/http/httpresponse.cpp > CMakeFiles/tnet_http.dir/httpresponse.cpp.i

src/http/CMakeFiles/tnet_http.dir/httpresponse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tnet_http.dir/httpresponse.cpp.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwerty/my_proj/net/src/http/httpresponse.cpp -o CMakeFiles/tnet_http.dir/httpresponse.cpp.s

src/http/CMakeFiles/tnet_http.dir/httpserver.cpp.o: src/http/CMakeFiles/tnet_http.dir/flags.make
src/http/CMakeFiles/tnet_http.dir/httpserver.cpp.o: ../src/http/httpserver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/http/CMakeFiles/tnet_http.dir/httpserver.cpp.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tnet_http.dir/httpserver.cpp.o -c /home/qwerty/my_proj/net/src/http/httpserver.cpp

src/http/CMakeFiles/tnet_http.dir/httpserver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tnet_http.dir/httpserver.cpp.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwerty/my_proj/net/src/http/httpserver.cpp > CMakeFiles/tnet_http.dir/httpserver.cpp.i

src/http/CMakeFiles/tnet_http.dir/httpserver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tnet_http.dir/httpserver.cpp.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwerty/my_proj/net/src/http/httpserver.cpp -o CMakeFiles/tnet_http.dir/httpserver.cpp.s

src/http/CMakeFiles/tnet_http.dir/httputil.cpp.o: src/http/CMakeFiles/tnet_http.dir/flags.make
src/http/CMakeFiles/tnet_http.dir/httputil.cpp.o: ../src/http/httputil.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/http/CMakeFiles/tnet_http.dir/httputil.cpp.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tnet_http.dir/httputil.cpp.o -c /home/qwerty/my_proj/net/src/http/httputil.cpp

src/http/CMakeFiles/tnet_http.dir/httputil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tnet_http.dir/httputil.cpp.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwerty/my_proj/net/src/http/httputil.cpp > CMakeFiles/tnet_http.dir/httputil.cpp.i

src/http/CMakeFiles/tnet_http.dir/httputil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tnet_http.dir/httputil.cpp.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwerty/my_proj/net/src/http/httputil.cpp -o CMakeFiles/tnet_http.dir/httputil.cpp.s

src/http/CMakeFiles/tnet_http.dir/wsclient.cpp.o: src/http/CMakeFiles/tnet_http.dir/flags.make
src/http/CMakeFiles/tnet_http.dir/wsclient.cpp.o: ../src/http/wsclient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/http/CMakeFiles/tnet_http.dir/wsclient.cpp.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tnet_http.dir/wsclient.cpp.o -c /home/qwerty/my_proj/net/src/http/wsclient.cpp

src/http/CMakeFiles/tnet_http.dir/wsclient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tnet_http.dir/wsclient.cpp.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwerty/my_proj/net/src/http/wsclient.cpp > CMakeFiles/tnet_http.dir/wsclient.cpp.i

src/http/CMakeFiles/tnet_http.dir/wsclient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tnet_http.dir/wsclient.cpp.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwerty/my_proj/net/src/http/wsclient.cpp -o CMakeFiles/tnet_http.dir/wsclient.cpp.s

src/http/CMakeFiles/tnet_http.dir/wsconnection.cpp.o: src/http/CMakeFiles/tnet_http.dir/flags.make
src/http/CMakeFiles/tnet_http.dir/wsconnection.cpp.o: ../src/http/wsconnection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/http/CMakeFiles/tnet_http.dir/wsconnection.cpp.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tnet_http.dir/wsconnection.cpp.o -c /home/qwerty/my_proj/net/src/http/wsconnection.cpp

src/http/CMakeFiles/tnet_http.dir/wsconnection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tnet_http.dir/wsconnection.cpp.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwerty/my_proj/net/src/http/wsconnection.cpp > CMakeFiles/tnet_http.dir/wsconnection.cpp.i

src/http/CMakeFiles/tnet_http.dir/wsconnection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tnet_http.dir/wsconnection.cpp.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwerty/my_proj/net/src/http/wsconnection.cpp -o CMakeFiles/tnet_http.dir/wsconnection.cpp.s

src/http/CMakeFiles/tnet_http.dir/wsutil.cpp.o: src/http/CMakeFiles/tnet_http.dir/flags.make
src/http/CMakeFiles/tnet_http.dir/wsutil.cpp.o: ../src/http/wsutil.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/http/CMakeFiles/tnet_http.dir/wsutil.cpp.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tnet_http.dir/wsutil.cpp.o -c /home/qwerty/my_proj/net/src/http/wsutil.cpp

src/http/CMakeFiles/tnet_http.dir/wsutil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tnet_http.dir/wsutil.cpp.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwerty/my_proj/net/src/http/wsutil.cpp > CMakeFiles/tnet_http.dir/wsutil.cpp.i

src/http/CMakeFiles/tnet_http.dir/wsutil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tnet_http.dir/wsutil.cpp.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwerty/my_proj/net/src/http/wsutil.cpp -o CMakeFiles/tnet_http.dir/wsutil.cpp.s

# Object files for target tnet_http
tnet_http_OBJECTS = \
"CMakeFiles/tnet_http.dir/http_parser.c.o" \
"CMakeFiles/tnet_http.dir/httpclient.cpp.o" \
"CMakeFiles/tnet_http.dir/httpconnection.cpp.o" \
"CMakeFiles/tnet_http.dir/httpconnector.cpp.o" \
"CMakeFiles/tnet_http.dir/httpparser.cpp.o" \
"CMakeFiles/tnet_http.dir/httprequest.cpp.o" \
"CMakeFiles/tnet_http.dir/httpresponse.cpp.o" \
"CMakeFiles/tnet_http.dir/httpserver.cpp.o" \
"CMakeFiles/tnet_http.dir/httputil.cpp.o" \
"CMakeFiles/tnet_http.dir/wsclient.cpp.o" \
"CMakeFiles/tnet_http.dir/wsconnection.cpp.o" \
"CMakeFiles/tnet_http.dir/wsutil.cpp.o"

# External object files for target tnet_http
tnet_http_EXTERNAL_OBJECTS =

lib/libtnet_http.a: src/http/CMakeFiles/tnet_http.dir/http_parser.c.o
lib/libtnet_http.a: src/http/CMakeFiles/tnet_http.dir/httpclient.cpp.o
lib/libtnet_http.a: src/http/CMakeFiles/tnet_http.dir/httpconnection.cpp.o
lib/libtnet_http.a: src/http/CMakeFiles/tnet_http.dir/httpconnector.cpp.o
lib/libtnet_http.a: src/http/CMakeFiles/tnet_http.dir/httpparser.cpp.o
lib/libtnet_http.a: src/http/CMakeFiles/tnet_http.dir/httprequest.cpp.o
lib/libtnet_http.a: src/http/CMakeFiles/tnet_http.dir/httpresponse.cpp.o
lib/libtnet_http.a: src/http/CMakeFiles/tnet_http.dir/httpserver.cpp.o
lib/libtnet_http.a: src/http/CMakeFiles/tnet_http.dir/httputil.cpp.o
lib/libtnet_http.a: src/http/CMakeFiles/tnet_http.dir/wsclient.cpp.o
lib/libtnet_http.a: src/http/CMakeFiles/tnet_http.dir/wsconnection.cpp.o
lib/libtnet_http.a: src/http/CMakeFiles/tnet_http.dir/wsutil.cpp.o
lib/libtnet_http.a: src/http/CMakeFiles/tnet_http.dir/build.make
lib/libtnet_http.a: src/http/CMakeFiles/tnet_http.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX static library ../../lib/libtnet_http.a"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && $(CMAKE_COMMAND) -P CMakeFiles/tnet_http.dir/cmake_clean_target.cmake
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tnet_http.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/http/CMakeFiles/tnet_http.dir/build: lib/libtnet_http.a

.PHONY : src/http/CMakeFiles/tnet_http.dir/build

src/http/CMakeFiles/tnet_http.dir/clean:
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/http && $(CMAKE_COMMAND) -P CMakeFiles/tnet_http.dir/cmake_clean.cmake
.PHONY : src/http/CMakeFiles/tnet_http.dir/clean

src/http/CMakeFiles/tnet_http.dir/depend:
	cd /home/qwerty/my_proj/net/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/qwerty/my_proj/net /home/qwerty/my_proj/net/src/http /home/qwerty/my_proj/net/cmake-build-debug /home/qwerty/my_proj/net/cmake-build-debug/src/http /home/qwerty/my_proj/net/cmake-build-debug/src/http/CMakeFiles/tnet_http.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/http/CMakeFiles/tnet_http.dir/depend

