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
include CMakeFiles/LabExampleShared.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LabExampleShared.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LabExampleShared.dir/flags.make

CMakeFiles/LabExampleShared.dir/program.c.o: CMakeFiles/LabExampleShared.dir/flags.make
CMakeFiles/LabExampleShared.dir/program.c.o: ../program.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/LabExampleShared.dir/program.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/LabExampleShared.dir/program.c.o   -c /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/program.c

CMakeFiles/LabExampleShared.dir/program.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LabExampleShared.dir/program.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/program.c > CMakeFiles/LabExampleShared.dir/program.c.i

CMakeFiles/LabExampleShared.dir/program.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LabExampleShared.dir/program.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/program.c -o CMakeFiles/LabExampleShared.dir/program.c.s

CMakeFiles/LabExampleShared.dir/program.c.o.requires:

.PHONY : CMakeFiles/LabExampleShared.dir/program.c.o.requires

CMakeFiles/LabExampleShared.dir/program.c.o.provides: CMakeFiles/LabExampleShared.dir/program.c.o.requires
	$(MAKE) -f CMakeFiles/LabExampleShared.dir/build.make CMakeFiles/LabExampleShared.dir/program.c.o.provides.build
.PHONY : CMakeFiles/LabExampleShared.dir/program.c.o.provides

CMakeFiles/LabExampleShared.dir/program.c.o.provides.build: CMakeFiles/LabExampleShared.dir/program.c.o


# Object files for target LabExampleShared
LabExampleShared_OBJECTS = \
"CMakeFiles/LabExampleShared.dir/program.c.o"

# External object files for target LabExampleShared
LabExampleShared_EXTERNAL_OBJECTS =

LabExampleShared: CMakeFiles/LabExampleShared.dir/program.c.o
LabExampleShared: CMakeFiles/LabExampleShared.dir/build.make
LabExampleShared: libsharedLib.so
LabExampleShared: CMakeFiles/LabExampleShared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable LabExampleShared"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LabExampleShared.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LabExampleShared.dir/build: LabExampleShared

.PHONY : CMakeFiles/LabExampleShared.dir/build

CMakeFiles/LabExampleShared.dir/requires: CMakeFiles/LabExampleShared.dir/program.c.o.requires

.PHONY : CMakeFiles/LabExampleShared.dir/requires

CMakeFiles/LabExampleShared.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LabExampleShared.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LabExampleShared.dir/clean

CMakeFiles/LabExampleShared.dir/depend:
	cd /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/cmake /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/cmake /mnt/c/open-source-software/OSS-labs/labs/lab-05/Lab-Example/cmake/CMakeFiles/LabExampleShared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LabExampleShared.dir/depend

