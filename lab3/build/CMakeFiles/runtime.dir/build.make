# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /lab3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /lab3/build

# Include any dependencies generated for this target.
include CMakeFiles/runtime.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/runtime.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/runtime.dir/flags.make

CMakeFiles/runtime.dir/lib/runtime.c.o: CMakeFiles/runtime.dir/flags.make
CMakeFiles/runtime.dir/lib/runtime.c.o: ../lib/runtime.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/runtime.dir/lib/runtime.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/runtime.dir/lib/runtime.c.o   -c /lab3/lib/runtime.c

CMakeFiles/runtime.dir/lib/runtime.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/runtime.dir/lib/runtime.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /lab3/lib/runtime.c > CMakeFiles/runtime.dir/lib/runtime.c.i

CMakeFiles/runtime.dir/lib/runtime.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/runtime.dir/lib/runtime.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /lab3/lib/runtime.c -o CMakeFiles/runtime.dir/lib/runtime.c.s

CMakeFiles/runtime.dir/lib/runtime.c.o.requires:

.PHONY : CMakeFiles/runtime.dir/lib/runtime.c.o.requires

CMakeFiles/runtime.dir/lib/runtime.c.o.provides: CMakeFiles/runtime.dir/lib/runtime.c.o.requires
	$(MAKE) -f CMakeFiles/runtime.dir/build.make CMakeFiles/runtime.dir/lib/runtime.c.o.provides.build
.PHONY : CMakeFiles/runtime.dir/lib/runtime.c.o.provides

CMakeFiles/runtime.dir/lib/runtime.c.o.provides.build: CMakeFiles/runtime.dir/lib/runtime.c.o


# Object files for target runtime
runtime_OBJECTS = \
"CMakeFiles/runtime.dir/lib/runtime.c.o"

# External object files for target runtime
runtime_EXTERNAL_OBJECTS =

libruntime.so: CMakeFiles/runtime.dir/lib/runtime.c.o
libruntime.so: CMakeFiles/runtime.dir/build.make
libruntime.so: CMakeFiles/runtime.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared module libruntime.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/runtime.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/runtime.dir/build: libruntime.so

.PHONY : CMakeFiles/runtime.dir/build

CMakeFiles/runtime.dir/requires: CMakeFiles/runtime.dir/lib/runtime.c.o.requires

.PHONY : CMakeFiles/runtime.dir/requires

CMakeFiles/runtime.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/runtime.dir/cmake_clean.cmake
.PHONY : CMakeFiles/runtime.dir/clean

CMakeFiles/runtime.dir/depend:
	cd /lab3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /lab3 /lab3 /lab3/build /lab3/build /lab3/build/CMakeFiles/runtime.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/runtime.dir/depend

