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
include CMakeFiles/unit_testing_self_contained.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/unit_testing_self_contained.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/unit_testing_self_contained.dir/flags.make

CMakeFiles/unit_testing_self_contained.dir/main.cpp.o: CMakeFiles/unit_testing_self_contained.dir/flags.make
CMakeFiles/unit_testing_self_contained.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/caterinagiardi/Downloads/note_manager/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/unit_testing_self_contained.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/unit_testing_self_contained.dir/main.cpp.o -c /Users/caterinagiardi/Downloads/note_manager/main.cpp

CMakeFiles/unit_testing_self_contained.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unit_testing_self_contained.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/caterinagiardi/Downloads/note_manager/main.cpp > CMakeFiles/unit_testing_self_contained.dir/main.cpp.i

CMakeFiles/unit_testing_self_contained.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unit_testing_self_contained.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/caterinagiardi/Downloads/note_manager/main.cpp -o CMakeFiles/unit_testing_self_contained.dir/main.cpp.s

# Object files for target unit_testing_self_contained
unit_testing_self_contained_OBJECTS = \
"CMakeFiles/unit_testing_self_contained.dir/main.cpp.o"

# External object files for target unit_testing_self_contained
unit_testing_self_contained_EXTERNAL_OBJECTS =

unit_testing_self_contained: CMakeFiles/unit_testing_self_contained.dir/main.cpp.o
unit_testing_self_contained: CMakeFiles/unit_testing_self_contained.dir/build.make
unit_testing_self_contained: libcore.a
unit_testing_self_contained: CMakeFiles/unit_testing_self_contained.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/caterinagiardi/Downloads/note_manager/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable unit_testing_self_contained"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unit_testing_self_contained.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/unit_testing_self_contained.dir/build: unit_testing_self_contained
.PHONY : CMakeFiles/unit_testing_self_contained.dir/build

CMakeFiles/unit_testing_self_contained.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/unit_testing_self_contained.dir/cmake_clean.cmake
.PHONY : CMakeFiles/unit_testing_self_contained.dir/clean

CMakeFiles/unit_testing_self_contained.dir/depend:
	cd /Users/caterinagiardi/Downloads/note_manager/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/caterinagiardi/Downloads/note_manager /Users/caterinagiardi/Downloads/note_manager /Users/caterinagiardi/Downloads/note_manager/cmake-build-debug /Users/caterinagiardi/Downloads/note_manager/cmake-build-debug /Users/caterinagiardi/Downloads/note_manager/cmake-build-debug/CMakeFiles/unit_testing_self_contained.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/unit_testing_self_contained.dir/depend
