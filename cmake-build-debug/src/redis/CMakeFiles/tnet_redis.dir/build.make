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
include src/redis/CMakeFiles/tnet_redis.dir/depend.make

# Include the progress variables for this target.
include src/redis/CMakeFiles/tnet_redis.dir/progress.make

# Include the compile flags for this target's objects.
include src/redis/CMakeFiles/tnet_redis.dir/flags.make

src/redis/CMakeFiles/tnet_redis.dir/hiredis.c.o: src/redis/CMakeFiles/tnet_redis.dir/flags.make
src/redis/CMakeFiles/tnet_redis.dir/hiredis.c.o: ../src/redis/hiredis.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/redis/CMakeFiles/tnet_redis.dir/hiredis.c.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tnet_redis.dir/hiredis.c.o   -c /home/qwerty/my_proj/net/src/redis/hiredis.c

src/redis/CMakeFiles/tnet_redis.dir/hiredis.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tnet_redis.dir/hiredis.c.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/qwerty/my_proj/net/src/redis/hiredis.c > CMakeFiles/tnet_redis.dir/hiredis.c.i

src/redis/CMakeFiles/tnet_redis.dir/hiredis.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tnet_redis.dir/hiredis.c.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/qwerty/my_proj/net/src/redis/hiredis.c -o CMakeFiles/tnet_redis.dir/hiredis.c.s

src/redis/CMakeFiles/tnet_redis.dir/redisclient.cpp.o: src/redis/CMakeFiles/tnet_redis.dir/flags.make
src/redis/CMakeFiles/tnet_redis.dir/redisclient.cpp.o: ../src/redis/redisclient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/redis/CMakeFiles/tnet_redis.dir/redisclient.cpp.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tnet_redis.dir/redisclient.cpp.o -c /home/qwerty/my_proj/net/src/redis/redisclient.cpp

src/redis/CMakeFiles/tnet_redis.dir/redisclient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tnet_redis.dir/redisclient.cpp.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwerty/my_proj/net/src/redis/redisclient.cpp > CMakeFiles/tnet_redis.dir/redisclient.cpp.i

src/redis/CMakeFiles/tnet_redis.dir/redisclient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tnet_redis.dir/redisclient.cpp.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwerty/my_proj/net/src/redis/redisclient.cpp -o CMakeFiles/tnet_redis.dir/redisclient.cpp.s

src/redis/CMakeFiles/tnet_redis.dir/redisconnection.cpp.o: src/redis/CMakeFiles/tnet_redis.dir/flags.make
src/redis/CMakeFiles/tnet_redis.dir/redisconnection.cpp.o: ../src/redis/redisconnection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/redis/CMakeFiles/tnet_redis.dir/redisconnection.cpp.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tnet_redis.dir/redisconnection.cpp.o -c /home/qwerty/my_proj/net/src/redis/redisconnection.cpp

src/redis/CMakeFiles/tnet_redis.dir/redisconnection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tnet_redis.dir/redisconnection.cpp.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwerty/my_proj/net/src/redis/redisconnection.cpp > CMakeFiles/tnet_redis.dir/redisconnection.cpp.i

src/redis/CMakeFiles/tnet_redis.dir/redisconnection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tnet_redis.dir/redisconnection.cpp.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwerty/my_proj/net/src/redis/redisconnection.cpp -o CMakeFiles/tnet_redis.dir/redisconnection.cpp.s

src/redis/CMakeFiles/tnet_redis.dir/redistrans.cpp.o: src/redis/CMakeFiles/tnet_redis.dir/flags.make
src/redis/CMakeFiles/tnet_redis.dir/redistrans.cpp.o: ../src/redis/redistrans.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/redis/CMakeFiles/tnet_redis.dir/redistrans.cpp.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tnet_redis.dir/redistrans.cpp.o -c /home/qwerty/my_proj/net/src/redis/redistrans.cpp

src/redis/CMakeFiles/tnet_redis.dir/redistrans.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tnet_redis.dir/redistrans.cpp.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwerty/my_proj/net/src/redis/redistrans.cpp > CMakeFiles/tnet_redis.dir/redistrans.cpp.i

src/redis/CMakeFiles/tnet_redis.dir/redistrans.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tnet_redis.dir/redistrans.cpp.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwerty/my_proj/net/src/redis/redistrans.cpp -o CMakeFiles/tnet_redis.dir/redistrans.cpp.s

src/redis/CMakeFiles/tnet_redis.dir/sds.c.o: src/redis/CMakeFiles/tnet_redis.dir/flags.make
src/redis/CMakeFiles/tnet_redis.dir/sds.c.o: ../src/redis/sds.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object src/redis/CMakeFiles/tnet_redis.dir/sds.c.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tnet_redis.dir/sds.c.o   -c /home/qwerty/my_proj/net/src/redis/sds.c

src/redis/CMakeFiles/tnet_redis.dir/sds.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tnet_redis.dir/sds.c.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/qwerty/my_proj/net/src/redis/sds.c > CMakeFiles/tnet_redis.dir/sds.c.i

src/redis/CMakeFiles/tnet_redis.dir/sds.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tnet_redis.dir/sds.c.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/qwerty/my_proj/net/src/redis/sds.c -o CMakeFiles/tnet_redis.dir/sds.c.s

# Object files for target tnet_redis
tnet_redis_OBJECTS = \
"CMakeFiles/tnet_redis.dir/hiredis.c.o" \
"CMakeFiles/tnet_redis.dir/redisclient.cpp.o" \
"CMakeFiles/tnet_redis.dir/redisconnection.cpp.o" \
"CMakeFiles/tnet_redis.dir/redistrans.cpp.o" \
"CMakeFiles/tnet_redis.dir/sds.c.o"

# External object files for target tnet_redis
tnet_redis_EXTERNAL_OBJECTS =

lib/libtnet_redis.a: src/redis/CMakeFiles/tnet_redis.dir/hiredis.c.o
lib/libtnet_redis.a: src/redis/CMakeFiles/tnet_redis.dir/redisclient.cpp.o
lib/libtnet_redis.a: src/redis/CMakeFiles/tnet_redis.dir/redisconnection.cpp.o
lib/libtnet_redis.a: src/redis/CMakeFiles/tnet_redis.dir/redistrans.cpp.o
lib/libtnet_redis.a: src/redis/CMakeFiles/tnet_redis.dir/sds.c.o
lib/libtnet_redis.a: src/redis/CMakeFiles/tnet_redis.dir/build.make
lib/libtnet_redis.a: src/redis/CMakeFiles/tnet_redis.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library ../../lib/libtnet_redis.a"
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && $(CMAKE_COMMAND) -P CMakeFiles/tnet_redis.dir/cmake_clean_target.cmake
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tnet_redis.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/redis/CMakeFiles/tnet_redis.dir/build: lib/libtnet_redis.a

.PHONY : src/redis/CMakeFiles/tnet_redis.dir/build

src/redis/CMakeFiles/tnet_redis.dir/clean:
	cd /home/qwerty/my_proj/net/cmake-build-debug/src/redis && $(CMAKE_COMMAND) -P CMakeFiles/tnet_redis.dir/cmake_clean.cmake
.PHONY : src/redis/CMakeFiles/tnet_redis.dir/clean

src/redis/CMakeFiles/tnet_redis.dir/depend:
	cd /home/qwerty/my_proj/net/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/qwerty/my_proj/net /home/qwerty/my_proj/net/src/redis /home/qwerty/my_proj/net/cmake-build-debug /home/qwerty/my_proj/net/cmake-build-debug/src/redis /home/qwerty/my_proj/net/cmake-build-debug/src/redis/CMakeFiles/tnet_redis.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/redis/CMakeFiles/tnet_redis.dir/depend

