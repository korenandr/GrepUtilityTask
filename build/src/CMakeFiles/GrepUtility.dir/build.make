# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/andrei/mapbox

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andrei/mapbox/build

# Include any dependencies generated for this target.
include src/CMakeFiles/GrepUtility.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/GrepUtility.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/GrepUtility.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/GrepUtility.dir/flags.make

src/CMakeFiles/GrepUtility.dir/main.cpp.o: src/CMakeFiles/GrepUtility.dir/flags.make
src/CMakeFiles/GrepUtility.dir/main.cpp.o: /home/andrei/mapbox/src/main.cpp
src/CMakeFiles/GrepUtility.dir/main.cpp.o: src/CMakeFiles/GrepUtility.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/andrei/mapbox/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/GrepUtility.dir/main.cpp.o"
	cd /home/andrei/mapbox/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/GrepUtility.dir/main.cpp.o -MF CMakeFiles/GrepUtility.dir/main.cpp.o.d -o CMakeFiles/GrepUtility.dir/main.cpp.o -c /home/andrei/mapbox/src/main.cpp

src/CMakeFiles/GrepUtility.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GrepUtility.dir/main.cpp.i"
	cd /home/andrei/mapbox/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrei/mapbox/src/main.cpp > CMakeFiles/GrepUtility.dir/main.cpp.i

src/CMakeFiles/GrepUtility.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GrepUtility.dir/main.cpp.s"
	cd /home/andrei/mapbox/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrei/mapbox/src/main.cpp -o CMakeFiles/GrepUtility.dir/main.cpp.s

src/CMakeFiles/GrepUtility.dir/utils.cpp.o: src/CMakeFiles/GrepUtility.dir/flags.make
src/CMakeFiles/GrepUtility.dir/utils.cpp.o: /home/andrei/mapbox/src/utils.cpp
src/CMakeFiles/GrepUtility.dir/utils.cpp.o: src/CMakeFiles/GrepUtility.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/andrei/mapbox/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/GrepUtility.dir/utils.cpp.o"
	cd /home/andrei/mapbox/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/GrepUtility.dir/utils.cpp.o -MF CMakeFiles/GrepUtility.dir/utils.cpp.o.d -o CMakeFiles/GrepUtility.dir/utils.cpp.o -c /home/andrei/mapbox/src/utils.cpp

src/CMakeFiles/GrepUtility.dir/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GrepUtility.dir/utils.cpp.i"
	cd /home/andrei/mapbox/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrei/mapbox/src/utils.cpp > CMakeFiles/GrepUtility.dir/utils.cpp.i

src/CMakeFiles/GrepUtility.dir/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GrepUtility.dir/utils.cpp.s"
	cd /home/andrei/mapbox/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrei/mapbox/src/utils.cpp -o CMakeFiles/GrepUtility.dir/utils.cpp.s

# Object files for target GrepUtility
GrepUtility_OBJECTS = \
"CMakeFiles/GrepUtility.dir/main.cpp.o" \
"CMakeFiles/GrepUtility.dir/utils.cpp.o"

# External object files for target GrepUtility
GrepUtility_EXTERNAL_OBJECTS =

bin/GrepUtility: src/CMakeFiles/GrepUtility.dir/main.cpp.o
bin/GrepUtility: src/CMakeFiles/GrepUtility.dir/utils.cpp.o
bin/GrepUtility: src/CMakeFiles/GrepUtility.dir/build.make
bin/GrepUtility: src/CMakeFiles/GrepUtility.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/andrei/mapbox/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/GrepUtility"
	cd /home/andrei/mapbox/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GrepUtility.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/GrepUtility.dir/build: bin/GrepUtility
.PHONY : src/CMakeFiles/GrepUtility.dir/build

src/CMakeFiles/GrepUtility.dir/clean:
	cd /home/andrei/mapbox/build/src && $(CMAKE_COMMAND) -P CMakeFiles/GrepUtility.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/GrepUtility.dir/clean

src/CMakeFiles/GrepUtility.dir/depend:
	cd /home/andrei/mapbox/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andrei/mapbox /home/andrei/mapbox/src /home/andrei/mapbox/build /home/andrei/mapbox/build/src /home/andrei/mapbox/build/src/CMakeFiles/GrepUtility.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/CMakeFiles/GrepUtility.dir/depend

