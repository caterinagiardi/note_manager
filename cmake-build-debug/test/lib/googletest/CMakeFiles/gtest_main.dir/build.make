# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/caterinagiardi/Downloads/note_manager

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/caterinagiardi/Downloads/note_manager/cmake-build-debug

# Include any dependencies generated for this target.
include test/lib/googletest/CMakeFiles/gtest_main.dir/depend.make
# Include the progress variables for this target.
include test/lib/googletest/CMakeFiles/gtest_main.dir/progress.make

# Include the compile flags for this target's objects.
include test/lib/googletest/CMakeFiles/gtest_main.dir/flags.make

test/lib/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: test/lib/googletest/CMakeFiles/gtest_main.dir/flags.make
test/lib/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: ../test/lib/googletest/src/gtest_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/caterinagiardi/Downloads/note_manager/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/lib/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"
	cd /Users/caterinagiardi/Downloads/note_manager/cmake-build-debug/test/lib/googletest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.o -c /Users/caterinagiardi/Downloads/note_manager/test/lib/googletest/src/gtest_main.cc

test/lib/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest_main.dir/src/gtest_main.cc.i"
	cd /Users/caterinagiardi/Downloads/note_manager/cmake-build-debug/test/lib/googletest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/caterinagiardi/Downloads/note_manager/test/lib/googletest/src/gtest_main.cc > CMakeFiles/gtest_main.dir/src/gtest_main.cc.i

test/lib/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest_main.dir/src/gtest_main.cc.s"
	cd /Users/caterinagiardi/Downloads/note_manager/cmake-build-debug/test/lib/googletest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/caterinagiardi/Downloads/note_manager/test/lib/googletest/src/gtest_main.cc -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.s

# Object files for target gtest_main
gtest_main_OBJECTS = \
"CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"

# External object files for target gtest_main
gtest_main_EXTERNAL_OBJECTS =

test/lib/googletest/libgtest_maind.a: test/lib/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o
test/lib/googletest/libgtest_maind.a: test/lib/googletest/CMakeFiles/gtest_main.dir/build.make
test/lib/googletest/libgtest_maind.a: test/lib/googletest/CMakeFiles/gtest_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/caterinagiardi/Downloads/note_manager/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgtest_maind.a"
	cd /Users/caterinagiardi/Downloads/note_manager/cmake-build-debug/test/lib/googletest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean_target.cmake
	cd /Users/caterinagiardi/Downloads/note_manager/cmake-build-debug/test/lib/googletest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/lib/googletest/CMakeFiles/gtest_main.dir/build: test/lib/googletest/libgtest_maind.a
.PHONY : test/lib/googletest/CMakeFiles/gtest_main.dir/build

test/lib/googletest/CMakeFiles/gtest_main.dir/clean:
	cd /Users/caterinagiardi/Downloads/note_manager/cmake-build-debug/test/lib/googletest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean.cmake
.PHONY : test/lib/googletest/CMakeFiles/gtest_main.dir/clean

test/lib/googletest/CMakeFiles/gtest_main.dir/depend:
	cd /Users/caterinagiardi/Downloads/note_manager/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/caterinagiardi/Downloads/note_manager /Users/caterinagiardi/Downloads/note_manager/test/lib/googletest /Users/caterinagiardi/Downloads/note_manager/cmake-build-debug /Users/caterinagiardi/Downloads/note_manager/cmake-build-debug/test/lib/googletest /Users/caterinagiardi/Downloads/note_manager/cmake-build-debug/test/lib/googletest/CMakeFiles/gtest_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/lib/googletest/CMakeFiles/gtest_main.dir/depend

