# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /home/timpo/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/183.4886.39/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/timpo/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/183.4886.39/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/timpo/ClionProjects/intrusive_ptr

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/timpo/ClionProjects/intrusive_ptr/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/intrusive_ptr.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/intrusive_ptr.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/intrusive_ptr.dir/flags.make

CMakeFiles/intrusive_ptr.dir/main.cpp.o: CMakeFiles/intrusive_ptr.dir/flags.make
CMakeFiles/intrusive_ptr.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/timpo/ClionProjects/intrusive_ptr/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/intrusive_ptr.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/intrusive_ptr.dir/main.cpp.o -c /home/timpo/ClionProjects/intrusive_ptr/main.cpp

CMakeFiles/intrusive_ptr.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/intrusive_ptr.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timpo/ClionProjects/intrusive_ptr/main.cpp > CMakeFiles/intrusive_ptr.dir/main.cpp.i

CMakeFiles/intrusive_ptr.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/intrusive_ptr.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timpo/ClionProjects/intrusive_ptr/main.cpp -o CMakeFiles/intrusive_ptr.dir/main.cpp.s

# Object files for target intrusive_ptr
intrusive_ptr_OBJECTS = \
"CMakeFiles/intrusive_ptr.dir/main.cpp.o"

# External object files for target intrusive_ptr
intrusive_ptr_EXTERNAL_OBJECTS =

intrusive_ptr: CMakeFiles/intrusive_ptr.dir/main.cpp.o
intrusive_ptr: CMakeFiles/intrusive_ptr.dir/build.make
intrusive_ptr: CMakeFiles/intrusive_ptr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/timpo/ClionProjects/intrusive_ptr/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable intrusive_ptr"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/intrusive_ptr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/intrusive_ptr.dir/build: intrusive_ptr

.PHONY : CMakeFiles/intrusive_ptr.dir/build

CMakeFiles/intrusive_ptr.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/intrusive_ptr.dir/cmake_clean.cmake
.PHONY : CMakeFiles/intrusive_ptr.dir/clean

CMakeFiles/intrusive_ptr.dir/depend:
	cd /home/timpo/ClionProjects/intrusive_ptr/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/timpo/ClionProjects/intrusive_ptr /home/timpo/ClionProjects/intrusive_ptr /home/timpo/ClionProjects/intrusive_ptr/cmake-build-debug /home/timpo/ClionProjects/intrusive_ptr/cmake-build-debug /home/timpo/ClionProjects/intrusive_ptr/cmake-build-debug/CMakeFiles/intrusive_ptr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/intrusive_ptr.dir/depend
