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
CMAKE_SOURCE_DIR = /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/cmake

# Include any dependencies generated for this target.
include CMakeFiles/myLib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/myLib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/myLib.dir/flags.make

CMakeFiles/myLib.dir/source/block.c.o: CMakeFiles/myLib.dir/flags.make
CMakeFiles/myLib.dir/source/block.c.o: ../source/block.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/myLib.dir/source/block.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/myLib.dir/source/block.c.o   -c /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/source/block.c

CMakeFiles/myLib.dir/source/block.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/myLib.dir/source/block.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/source/block.c > CMakeFiles/myLib.dir/source/block.c.i

CMakeFiles/myLib.dir/source/block.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/myLib.dir/source/block.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/source/block.c -o CMakeFiles/myLib.dir/source/block.c.s

CMakeFiles/myLib.dir/source/block.c.o.requires:

.PHONY : CMakeFiles/myLib.dir/source/block.c.o.requires

CMakeFiles/myLib.dir/source/block.c.o.provides: CMakeFiles/myLib.dir/source/block.c.o.requires
	$(MAKE) -f CMakeFiles/myLib.dir/build.make CMakeFiles/myLib.dir/source/block.c.o.provides.build
.PHONY : CMakeFiles/myLib.dir/source/block.c.o.provides

CMakeFiles/myLib.dir/source/block.c.o.provides.build: CMakeFiles/myLib.dir/source/block.c.o


# Object files for target myLib
myLib_OBJECTS = \
"CMakeFiles/myLib.dir/source/block.c.o"

# External object files for target myLib
myLib_EXTERNAL_OBJECTS =

libmyLib.a: CMakeFiles/myLib.dir/source/block.c.o
libmyLib.a: CMakeFiles/myLib.dir/build.make
libmyLib.a: CMakeFiles/myLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libmyLib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/myLib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/myLib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/myLib.dir/build: libmyLib.a

.PHONY : CMakeFiles/myLib.dir/build

CMakeFiles/myLib.dir/requires: CMakeFiles/myLib.dir/source/block.c.o.requires

.PHONY : CMakeFiles/myLib.dir/requires

CMakeFiles/myLib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/myLib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/myLib.dir/clean

CMakeFiles/myLib.dir/depend:
	cd /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/cmake /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/cmake /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/cmake/CMakeFiles/myLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/myLib.dir/depend

