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
CMAKE_SOURCE_DIR = /Users/caterinagiardi/note_manager

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/caterinagiardi/note_manager/cmake-build-debug

# Include any dependencies generated for this target.
include test/CMakeFiles/runNoteManagerTests.dir/depend.make
# Include the progress variables for this target.
include test/CMakeFiles/runNoteManagerTests.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/runNoteManagerTests.dir/flags.make

test/CMakeFiles/runNoteManagerTests.dir/runAllTests.cpp.o: test/CMakeFiles/runNoteManagerTests.dir/flags.make
test/CMakeFiles/runNoteManagerTests.dir/runAllTests.cpp.o: ../test/runAllTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/caterinagiardi/note_manager/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/runNoteManagerTests.dir/runAllTests.cpp.o"
	cd /Users/caterinagiardi/note_manager/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runNoteManagerTests.dir/runAllTests.cpp.o -c /Users/caterinagiardi/note_manager/test/runAllTests.cpp

test/CMakeFiles/runNoteManagerTests.dir/runAllTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runNoteManagerTests.dir/runAllTests.cpp.i"
	cd /Users/caterinagiardi/note_manager/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/caterinagiardi/note_manager/test/runAllTests.cpp > CMakeFiles/runNoteManagerTests.dir/runAllTests.cpp.i

test/CMakeFiles/runNoteManagerTests.dir/runAllTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runNoteManagerTests.dir/runAllTests.cpp.s"
	cd /Users/caterinagiardi/note_manager/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/caterinagiardi/note_manager/test/runAllTests.cpp -o CMakeFiles/runNoteManagerTests.dir/runAllTests.cpp.s

test/CMakeFiles/runNoteManagerTests.dir/NoteTest.cpp.o: test/CMakeFiles/runNoteManagerTests.dir/flags.make
test/CMakeFiles/runNoteManagerTests.dir/NoteTest.cpp.o: ../test/NoteTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/caterinagiardi/note_manager/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/runNoteManagerTests.dir/NoteTest.cpp.o"
	cd /Users/caterinagiardi/note_manager/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runNoteManagerTests.dir/NoteTest.cpp.o -c /Users/caterinagiardi/note_manager/test/NoteTest.cpp

test/CMakeFiles/runNoteManagerTests.dir/NoteTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runNoteManagerTests.dir/NoteTest.cpp.i"
	cd /Users/caterinagiardi/note_manager/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/caterinagiardi/note_manager/test/NoteTest.cpp > CMakeFiles/runNoteManagerTests.dir/NoteTest.cpp.i

test/CMakeFiles/runNoteManagerTests.dir/NoteTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runNoteManagerTests.dir/NoteTest.cpp.s"
	cd /Users/caterinagiardi/note_manager/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/caterinagiardi/note_manager/test/NoteTest.cpp -o CMakeFiles/runNoteManagerTests.dir/NoteTest.cpp.s

test/CMakeFiles/runNoteManagerTests.dir/NoteManagerFixture.cpp.o: test/CMakeFiles/runNoteManagerTests.dir/flags.make
test/CMakeFiles/runNoteManagerTests.dir/NoteManagerFixture.cpp.o: ../test/NoteManagerFixture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/caterinagiardi/note_manager/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/CMakeFiles/runNoteManagerTests.dir/NoteManagerFixture.cpp.o"
	cd /Users/caterinagiardi/note_manager/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runNoteManagerTests.dir/NoteManagerFixture.cpp.o -c /Users/caterinagiardi/note_manager/test/NoteManagerFixture.cpp

test/CMakeFiles/runNoteManagerTests.dir/NoteManagerFixture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runNoteManagerTests.dir/NoteManagerFixture.cpp.i"
	cd /Users/caterinagiardi/note_manager/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/caterinagiardi/note_manager/test/NoteManagerFixture.cpp > CMakeFiles/runNoteManagerTests.dir/NoteManagerFixture.cpp.i

test/CMakeFiles/runNoteManagerTests.dir/NoteManagerFixture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runNoteManagerTests.dir/NoteManagerFixture.cpp.s"
	cd /Users/caterinagiardi/note_manager/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/caterinagiardi/note_manager/test/NoteManagerFixture.cpp -o CMakeFiles/runNoteManagerTests.dir/NoteManagerFixture.cpp.s

test/CMakeFiles/runNoteManagerTests.dir/CollectionTest.cpp.o: test/CMakeFiles/runNoteManagerTests.dir/flags.make
test/CMakeFiles/runNoteManagerTests.dir/CollectionTest.cpp.o: ../test/CollectionTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/caterinagiardi/note_manager/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object test/CMakeFiles/runNoteManagerTests.dir/CollectionTest.cpp.o"
	cd /Users/caterinagiardi/note_manager/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runNoteManagerTests.dir/CollectionTest.cpp.o -c /Users/caterinagiardi/note_manager/test/CollectionTest.cpp

test/CMakeFiles/runNoteManagerTests.dir/CollectionTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runNoteManagerTests.dir/CollectionTest.cpp.i"
	cd /Users/caterinagiardi/note_manager/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/caterinagiardi/note_manager/test/CollectionTest.cpp > CMakeFiles/runNoteManagerTests.dir/CollectionTest.cpp.i

test/CMakeFiles/runNoteManagerTests.dir/CollectionTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runNoteManagerTests.dir/CollectionTest.cpp.s"
	cd /Users/caterinagiardi/note_manager/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/caterinagiardi/note_manager/test/CollectionTest.cpp -o CMakeFiles/runNoteManagerTests.dir/CollectionTest.cpp.s

test/CMakeFiles/runNoteManagerTests.dir/MenuTest.cpp.o: test/CMakeFiles/runNoteManagerTests.dir/flags.make
test/CMakeFiles/runNoteManagerTests.dir/MenuTest.cpp.o: ../test/MenuTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/caterinagiardi/note_manager/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object test/CMakeFiles/runNoteManagerTests.dir/MenuTest.cpp.o"
	cd /Users/caterinagiardi/note_manager/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runNoteManagerTests.dir/MenuTest.cpp.o -c /Users/caterinagiardi/note_manager/test/MenuTest.cpp

test/CMakeFiles/runNoteManagerTests.dir/MenuTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runNoteManagerTests.dir/MenuTest.cpp.i"
	cd /Users/caterinagiardi/note_manager/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/caterinagiardi/note_manager/test/MenuTest.cpp > CMakeFiles/runNoteManagerTests.dir/MenuTest.cpp.i

test/CMakeFiles/runNoteManagerTests.dir/MenuTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runNoteManagerTests.dir/MenuTest.cpp.s"
	cd /Users/caterinagiardi/note_manager/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/caterinagiardi/note_manager/test/MenuTest.cpp -o CMakeFiles/runNoteManagerTests.dir/MenuTest.cpp.s

# Object files for target runNoteManagerTests
runNoteManagerTests_OBJECTS = \
"CMakeFiles/runNoteManagerTests.dir/runAllTests.cpp.o" \
"CMakeFiles/runNoteManagerTests.dir/NoteTest.cpp.o" \
"CMakeFiles/runNoteManagerTests.dir/NoteManagerFixture.cpp.o" \
"CMakeFiles/runNoteManagerTests.dir/CollectionTest.cpp.o" \
"CMakeFiles/runNoteManagerTests.dir/MenuTest.cpp.o"

# External object files for target runNoteManagerTests
runNoteManagerTests_EXTERNAL_OBJECTS =

test/runNoteManagerTests: test/CMakeFiles/runNoteManagerTests.dir/runAllTests.cpp.o
test/runNoteManagerTests: test/CMakeFiles/runNoteManagerTests.dir/NoteTest.cpp.o
test/runNoteManagerTests: test/CMakeFiles/runNoteManagerTests.dir/NoteManagerFixture.cpp.o
test/runNoteManagerTests: test/CMakeFiles/runNoteManagerTests.dir/CollectionTest.cpp.o
test/runNoteManagerTests: test/CMakeFiles/runNoteManagerTests.dir/MenuTest.cpp.o
test/runNoteManagerTests: test/CMakeFiles/runNoteManagerTests.dir/build.make
test/runNoteManagerTests: test/lib/googletest/libgtestd.a
test/runNoteManagerTests: test/lib/googletest/libgtest_maind.a
test/runNoteManagerTests: libcore.a
test/runNoteManagerTests: test/lib/googletest/libgtestd.a
test/runNoteManagerTests: test/CMakeFiles/runNoteManagerTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/caterinagiardi/note_manager/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable runNoteManagerTests"
	cd /Users/caterinagiardi/note_manager/cmake-build-debug/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/runNoteManagerTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/runNoteManagerTests.dir/build: test/runNoteManagerTests
.PHONY : test/CMakeFiles/runNoteManagerTests.dir/build

test/CMakeFiles/runNoteManagerTests.dir/clean:
	cd /Users/caterinagiardi/note_manager/cmake-build-debug/test && $(CMAKE_COMMAND) -P CMakeFiles/runNoteManagerTests.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/runNoteManagerTests.dir/clean

test/CMakeFiles/runNoteManagerTests.dir/depend:
	cd /Users/caterinagiardi/note_manager/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/caterinagiardi/note_manager /Users/caterinagiardi/note_manager/test /Users/caterinagiardi/note_manager/cmake-build-debug /Users/caterinagiardi/note_manager/cmake-build-debug/test /Users/caterinagiardi/note_manager/cmake-build-debug/test/CMakeFiles/runNoteManagerTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/runNoteManagerTests.dir/depend

