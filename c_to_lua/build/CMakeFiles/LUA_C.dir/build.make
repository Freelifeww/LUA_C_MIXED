# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = /home/share/samba/freelife_study/LUA_C_MIXED/c_to_lua

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/share/samba/freelife_study/LUA_C_MIXED/c_to_lua/build

# Include any dependencies generated for this target.
include CMakeFiles/LUA_C.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LUA_C.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LUA_C.dir/flags.make

CMakeFiles/LUA_C.dir/main.c.o: CMakeFiles/LUA_C.dir/flags.make
CMakeFiles/LUA_C.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/share/samba/freelife_study/LUA_C_MIXED/c_to_lua/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/LUA_C.dir/main.c.o"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/LUA_C.dir/main.c.o   -c /home/share/samba/freelife_study/LUA_C_MIXED/c_to_lua/main.c

CMakeFiles/LUA_C.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LUA_C.dir/main.c.i"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/share/samba/freelife_study/LUA_C_MIXED/c_to_lua/main.c > CMakeFiles/LUA_C.dir/main.c.i

CMakeFiles/LUA_C.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LUA_C.dir/main.c.s"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/share/samba/freelife_study/LUA_C_MIXED/c_to_lua/main.c -o CMakeFiles/LUA_C.dir/main.c.s

CMakeFiles/LUA_C.dir/main.c.o.requires:

.PHONY : CMakeFiles/LUA_C.dir/main.c.o.requires

CMakeFiles/LUA_C.dir/main.c.o.provides: CMakeFiles/LUA_C.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/LUA_C.dir/build.make CMakeFiles/LUA_C.dir/main.c.o.provides.build
.PHONY : CMakeFiles/LUA_C.dir/main.c.o.provides

CMakeFiles/LUA_C.dir/main.c.o.provides.build: CMakeFiles/LUA_C.dir/main.c.o


# Object files for target LUA_C
LUA_C_OBJECTS = \
"CMakeFiles/LUA_C.dir/main.c.o"

# External object files for target LUA_C
LUA_C_EXTERNAL_OBJECTS =

LUA_C: CMakeFiles/LUA_C.dir/main.c.o
LUA_C: CMakeFiles/LUA_C.dir/build.make
LUA_C: CMakeFiles/LUA_C.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/share/samba/freelife_study/LUA_C_MIXED/c_to_lua/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable LUA_C"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LUA_C.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LUA_C.dir/build: LUA_C

.PHONY : CMakeFiles/LUA_C.dir/build

CMakeFiles/LUA_C.dir/requires: CMakeFiles/LUA_C.dir/main.c.o.requires

.PHONY : CMakeFiles/LUA_C.dir/requires

CMakeFiles/LUA_C.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LUA_C.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LUA_C.dir/clean

CMakeFiles/LUA_C.dir/depend:
	cd /home/share/samba/freelife_study/LUA_C_MIXED/c_to_lua/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/share/samba/freelife_study/LUA_C_MIXED/c_to_lua /home/share/samba/freelife_study/LUA_C_MIXED/c_to_lua /home/share/samba/freelife_study/LUA_C_MIXED/c_to_lua/build /home/share/samba/freelife_study/LUA_C_MIXED/c_to_lua/build /home/share/samba/freelife_study/LUA_C_MIXED/c_to_lua/build/CMakeFiles/LUA_C.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LUA_C.dir/depend

