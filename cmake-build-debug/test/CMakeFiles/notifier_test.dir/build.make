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
include test/CMakeFiles/notifier_test.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/notifier_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/notifier_test.dir/flags.make

test/CMakeFiles/notifier_test.dir/notifier_test.cpp.o: test/CMakeFiles/notifier_test.dir/flags.make
test/CMakeFiles/notifier_test.dir/notifier_test.cpp.o: ../test/notifier_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/notifier_test.dir/notifier_test.cpp.o"
	cd /home/qwerty/my_proj/net/cmake-build-debug/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/notifier_test.dir/notifier_test.cpp.o -c /home/qwerty/my_proj/net/test/notifier_test.cpp

test/CMakeFiles/notifier_test.dir/notifier_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/notifier_test.dir/notifier_test.cpp.i"
	cd /home/qwerty/my_proj/net/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qwerty/my_proj/net/test/notifier_test.cpp > CMakeFiles/notifier_test.dir/notifier_test.cpp.i

test/CMakeFiles/notifier_test.dir/notifier_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/notifier_test.dir/notifier_test.cpp.s"
	cd /home/qwerty/my_proj/net/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qwerty/my_proj/net/test/notifier_test.cpp -o CMakeFiles/notifier_test.dir/notifier_test.cpp.s

# Object files for target notifier_test
notifier_test_OBJECTS = \
"CMakeFiles/notifier_test.dir/notifier_test.cpp.o"

# External object files for target notifier_test
notifier_test_EXTERNAL_OBJECTS =

bin/notifier_test: test/CMakeFiles/notifier_test.dir/notifier_test.cpp.o
bin/notifier_test: test/CMakeFiles/notifier_test.dir/build.make
bin/notifier_test: lib/libtnet.a
bin/notifier_test: test/CMakeFiles/notifier_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/qwerty/my_proj/net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/notifier_test"
	cd /home/qwerty/my_proj/net/cmake-build-debug/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/notifier_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/notifier_test.dir/build: bin/notifier_test

.PHONY : test/CMakeFiles/notifier_test.dir/build

test/CMakeFiles/notifier_test.dir/clean:
	cd /home/qwerty/my_proj/net/cmake-build-debug/test && $(CMAKE_COMMAND) -P CMakeFiles/notifier_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/notifier_test.dir/clean

test/CMakeFiles/notifier_test.dir/depend:
	cd /home/qwerty/my_proj/net/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/qwerty/my_proj/net /home/qwerty/my_proj/net/test /home/qwerty/my_proj/net/cmake-build-debug /home/qwerty/my_proj/net/cmake-build-debug/test /home/qwerty/my_proj/net/cmake-build-debug/test/CMakeFiles/notifier_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/notifier_test.dir/depend

