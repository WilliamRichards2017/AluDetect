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
include libs/CMakeFiles/aludetect_core.dir/depend.make

# Include the progress variables for this target.
include libs/CMakeFiles/aludetect_core.dir/progress.make

# Include the compile flags for this target's objects.
include libs/CMakeFiles/aludetect_core.dir/flags.make

libs/CMakeFiles/aludetect_core.dir/polyATail.cpp.o: libs/CMakeFiles/aludetect_core.dir/flags.make
libs/CMakeFiles/aludetect_core.dir/polyATail.cpp.o: libs/polyATail.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object libs/CMakeFiles/aludetect_core.dir/polyATail.cpp.o"
	cd /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/libs && /usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aludetect_core.dir/polyATail.cpp.o -c /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/libs/polyATail.cpp

libs/CMakeFiles/aludetect_core.dir/polyATail.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aludetect_core.dir/polyATail.cpp.i"
	cd /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/libs && /usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/libs/polyATail.cpp > CMakeFiles/aludetect_core.dir/polyATail.cpp.i

libs/CMakeFiles/aludetect_core.dir/polyATail.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aludetect_core.dir/polyATail.cpp.s"
	cd /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/libs && /usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/libs/polyATail.cpp -o CMakeFiles/aludetect_core.dir/polyATail.cpp.s

libs/CMakeFiles/aludetect_core.dir/polyATail.cpp.o.requires:
.PHONY : libs/CMakeFiles/aludetect_core.dir/polyATail.cpp.o.requires

libs/CMakeFiles/aludetect_core.dir/polyATail.cpp.o.provides: libs/CMakeFiles/aludetect_core.dir/polyATail.cpp.o.requires
	$(MAKE) -f libs/CMakeFiles/aludetect_core.dir/build.make libs/CMakeFiles/aludetect_core.dir/polyATail.cpp.o.provides.build
.PHONY : libs/CMakeFiles/aludetect_core.dir/polyATail.cpp.o.provides

libs/CMakeFiles/aludetect_core.dir/polyATail.cpp.o.provides.build: libs/CMakeFiles/aludetect_core.dir/polyATail.cpp.o

# Object files for target aludetect_core
aludetect_core_OBJECTS = \
"CMakeFiles/aludetect_core.dir/polyATail.cpp.o"

# External object files for target aludetect_core
aludetect_core_EXTERNAL_OBJECTS =

libs/libaludetect_core.a: libs/CMakeFiles/aludetect_core.dir/polyATail.cpp.o
libs/libaludetect_core.a: libs/CMakeFiles/aludetect_core.dir/build.make
libs/libaludetect_core.a: libs/CMakeFiles/aludetect_core.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libaludetect_core.a"
	cd /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/libs && $(CMAKE_COMMAND) -P CMakeFiles/aludetect_core.dir/cmake_clean_target.cmake
	cd /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/libs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aludetect_core.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libs/CMakeFiles/aludetect_core.dir/build: libs/libaludetect_core.a
.PHONY : libs/CMakeFiles/aludetect_core.dir/build

libs/CMakeFiles/aludetect_core.dir/requires: libs/CMakeFiles/aludetect_core.dir/polyATail.cpp.o.requires
.PHONY : libs/CMakeFiles/aludetect_core.dir/requires

libs/CMakeFiles/aludetect_core.dir/clean:
	cd /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/libs && $(CMAKE_COMMAND) -P CMakeFiles/aludetect_core.dir/cmake_clean.cmake
.PHONY : libs/CMakeFiles/aludetect_core.dir/clean

libs/CMakeFiles/aludetect_core.dir/depend:
	cd /uufs/chpc.utah.edu/common/home/u0401321/AluDetect && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /uufs/chpc.utah.edu/common/home/u0401321/AluDetect /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/libs /uufs/chpc.utah.edu/common/home/u0401321/AluDetect /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/libs /uufs/chpc.utah.edu/common/home/u0401321/AluDetect/libs/CMakeFiles/aludetect_core.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libs/CMakeFiles/aludetect_core.dir/depend

