# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /uufs/chpc.utah.edu/common/home/u0401321/AluDetect

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /uufs/chpc.utah.edu/common/home/u0401321/AluDetect

# Include any dependencies generated for this target.
include tests/CMakeFiles/runTests.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/runTests.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/runTests.dir/flags.make

tests/CMakeFiles/runTests.dir/polyATest.cpp.o: tests/CMakeFiles/runTests.dir/flags.make
tests/CMakeFiles/runTests.dir/polyATest.cpp.o: tests/polyATest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/runTests.dir/polyATest.cpp.o"
	cd /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/tests && /usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/runTests.dir/polyATest.cpp.o -c /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/tests/polyATest.cpp

tests/CMakeFiles/runTests.dir/polyATest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runTests.dir/polyATest.cpp.i"
	cd /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/tests && /usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/tests/polyATest.cpp > CMakeFiles/runTests.dir/polyATest.cpp.i

tests/CMakeFiles/runTests.dir/polyATest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runTests.dir/polyATest.cpp.s"
	cd /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/tests && /usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/tests/polyATest.cpp -o CMakeFiles/runTests.dir/polyATest.cpp.s

tests/CMakeFiles/runTests.dir/polyATest.cpp.o.requires:
.PHONY : tests/CMakeFiles/runTests.dir/polyATest.cpp.o.requires

tests/CMakeFiles/runTests.dir/polyATest.cpp.o.provides: tests/CMakeFiles/runTests.dir/polyATest.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/runTests.dir/build.make tests/CMakeFiles/runTests.dir/polyATest.cpp.o.provides.build
.PHONY : tests/CMakeFiles/runTests.dir/polyATest.cpp.o.provides

tests/CMakeFiles/runTests.dir/polyATest.cpp.o.provides.build: tests/CMakeFiles/runTests.dir/polyATest.cpp.o

# Object files for target runTests
runTests_OBJECTS = \
"CMakeFiles/runTests.dir/polyATest.cpp.o"

# External object files for target runTests
runTests_EXTERNAL_OBJECTS =

tests/runTests: tests/CMakeFiles/runTests.dir/polyATest.cpp.o
tests/runTests: tests/CMakeFiles/runTests.dir/build.make
tests/runTests: src/libaludetect.a
tests/runTests: tests/CMakeFiles/runTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable runTests"
	cd /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/runTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/runTests.dir/build: tests/runTests
.PHONY : tests/CMakeFiles/runTests.dir/build

tests/CMakeFiles/runTests.dir/requires: tests/CMakeFiles/runTests.dir/polyATest.cpp.o.requires
.PHONY : tests/CMakeFiles/runTests.dir/requires

tests/CMakeFiles/runTests.dir/clean:
	cd /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/tests && $(CMAKE_COMMAND) -P CMakeFiles/runTests.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/runTests.dir/clean

tests/CMakeFiles/runTests.dir/depend:
	cd /uufs/chpc.utah.edu/common/home/u0401321/AluDetect && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /uufs/chpc.utah.edu/common/home/u0401321/AluDetect /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/tests /uufs/chpc.utah.edu/common/home/u0401321/AluDetect /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/tests /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/tests/CMakeFiles/runTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/runTests.dir/depend

