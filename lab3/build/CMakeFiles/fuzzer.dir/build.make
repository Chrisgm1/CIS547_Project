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
include CMakeFiles/fuzzer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/fuzzer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fuzzer.dir/flags.make

CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.o: CMakeFiles/fuzzer.dir/flags.make
CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.o: ../src/Fuzzer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.o -c /lab3/src/Fuzzer.cpp

CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /lab3/src/Fuzzer.cpp > CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.i

CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /lab3/src/Fuzzer.cpp -o CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.s

CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.o.requires:

.PHONY : CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.o.requires

CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.o.provides: CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.o.requires
	$(MAKE) -f CMakeFiles/fuzzer.dir/build.make CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.o.provides.build
.PHONY : CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.o.provides

CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.o.provides.build: CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.o


CMakeFiles/fuzzer.dir/src/Utils.cpp.o: CMakeFiles/fuzzer.dir/flags.make
CMakeFiles/fuzzer.dir/src/Utils.cpp.o: ../src/Utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/fuzzer.dir/src/Utils.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fuzzer.dir/src/Utils.cpp.o -c /lab3/src/Utils.cpp

CMakeFiles/fuzzer.dir/src/Utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fuzzer.dir/src/Utils.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /lab3/src/Utils.cpp > CMakeFiles/fuzzer.dir/src/Utils.cpp.i

CMakeFiles/fuzzer.dir/src/Utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fuzzer.dir/src/Utils.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /lab3/src/Utils.cpp -o CMakeFiles/fuzzer.dir/src/Utils.cpp.s

CMakeFiles/fuzzer.dir/src/Utils.cpp.o.requires:

.PHONY : CMakeFiles/fuzzer.dir/src/Utils.cpp.o.requires

CMakeFiles/fuzzer.dir/src/Utils.cpp.o.provides: CMakeFiles/fuzzer.dir/src/Utils.cpp.o.requires
	$(MAKE) -f CMakeFiles/fuzzer.dir/build.make CMakeFiles/fuzzer.dir/src/Utils.cpp.o.provides.build
.PHONY : CMakeFiles/fuzzer.dir/src/Utils.cpp.o.provides

CMakeFiles/fuzzer.dir/src/Utils.cpp.o.provides.build: CMakeFiles/fuzzer.dir/src/Utils.cpp.o


# Object files for target fuzzer
fuzzer_OBJECTS = \
"CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.o" \
"CMakeFiles/fuzzer.dir/src/Utils.cpp.o"

# External object files for target fuzzer
fuzzer_EXTERNAL_OBJECTS =

fuzzer: CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.o
fuzzer: CMakeFiles/fuzzer.dir/src/Utils.cpp.o
fuzzer: CMakeFiles/fuzzer.dir/build.make
fuzzer: CMakeFiles/fuzzer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable fuzzer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fuzzer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fuzzer.dir/build: fuzzer

.PHONY : CMakeFiles/fuzzer.dir/build

CMakeFiles/fuzzer.dir/requires: CMakeFiles/fuzzer.dir/src/Fuzzer.cpp.o.requires
CMakeFiles/fuzzer.dir/requires: CMakeFiles/fuzzer.dir/src/Utils.cpp.o.requires

.PHONY : CMakeFiles/fuzzer.dir/requires

CMakeFiles/fuzzer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fuzzer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fuzzer.dir/clean

CMakeFiles/fuzzer.dir/depend:
	cd /lab3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /lab3 /lab3 /lab3/build /lab3/build /lab3/build/CMakeFiles/fuzzer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fuzzer.dir/depend

