# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\dimna\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\193.6911.21\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\dimna\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\193.6911.21\bin\cmake\win\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\dimna\Desktop\ml-course\svm\smo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\dimna\Desktop\ml-course\svm\smo\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/smo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/smo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/smo.dir/flags.make

CMakeFiles/smo.dir/main.cpp.obj: CMakeFiles/smo.dir/flags.make
CMakeFiles/smo.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\dimna\Desktop\ml-course\svm\smo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/smo.dir/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\smo.dir\main.cpp.obj -c C:\Users\dimna\Desktop\ml-course\svm\smo\main.cpp

CMakeFiles/smo.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/smo.dir/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\dimna\Desktop\ml-course\svm\smo\main.cpp > CMakeFiles\smo.dir\main.cpp.i

CMakeFiles/smo.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/smo.dir/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\dimna\Desktop\ml-course\svm\smo\main.cpp -o CMakeFiles\smo.dir\main.cpp.s

# Object files for target smo
smo_OBJECTS = \
"CMakeFiles/smo.dir/main.cpp.obj"

# External object files for target smo
smo_EXTERNAL_OBJECTS =

smo.exe: CMakeFiles/smo.dir/main.cpp.obj
smo.exe: CMakeFiles/smo.dir/build.make
smo.exe: CMakeFiles/smo.dir/linklibs.rsp
smo.exe: CMakeFiles/smo.dir/objects1.rsp
smo.exe: CMakeFiles/smo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\dimna\Desktop\ml-course\svm\smo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable smo.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\smo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/smo.dir/build: smo.exe

.PHONY : CMakeFiles/smo.dir/build

CMakeFiles/smo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\smo.dir\cmake_clean.cmake
.PHONY : CMakeFiles/smo.dir/clean

CMakeFiles/smo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\dimna\Desktop\ml-course\svm\smo C:\Users\dimna\Desktop\ml-course\svm\smo C:\Users\dimna\Desktop\ml-course\svm\smo\cmake-build-debug C:\Users\dimna\Desktop\ml-course\svm\smo\cmake-build-debug C:\Users\dimna\Desktop\ml-course\svm\smo\cmake-build-debug\CMakeFiles\smo.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/smo.dir/depend

