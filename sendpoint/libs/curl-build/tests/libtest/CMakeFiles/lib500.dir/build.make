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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Isak/Documents/projects/sendpoint/libs/curl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Isak/Documents/projects/sendpoint/libs/curl-build

# Include any dependencies generated for this target.
include tests/libtest/CMakeFiles/lib500.dir/depend.make

# Include the progress variables for this target.
include tests/libtest/CMakeFiles/lib500.dir/progress.make

# Include the compile flags for this target's objects.
include tests/libtest/CMakeFiles/lib500.dir/flags.make

tests/libtest/CMakeFiles/lib500.dir/lib500.c.o: tests/libtest/CMakeFiles/lib500.dir/flags.make
tests/libtest/CMakeFiles/lib500.dir/lib500.c.o: /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/libtest/lib500.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Isak/Documents/projects/sendpoint/libs/curl-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/libtest/CMakeFiles/lib500.dir/lib500.c.o"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib500.dir/lib500.c.o   -c /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/libtest/lib500.c

tests/libtest/CMakeFiles/lib500.dir/lib500.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib500.dir/lib500.c.i"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/libtest/lib500.c > CMakeFiles/lib500.dir/lib500.c.i

tests/libtest/CMakeFiles/lib500.dir/lib500.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib500.dir/lib500.c.s"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/libtest/lib500.c -o CMakeFiles/lib500.dir/lib500.c.s

tests/libtest/CMakeFiles/lib500.dir/lib500.c.o.requires:

.PHONY : tests/libtest/CMakeFiles/lib500.dir/lib500.c.o.requires

tests/libtest/CMakeFiles/lib500.dir/lib500.c.o.provides: tests/libtest/CMakeFiles/lib500.dir/lib500.c.o.requires
	$(MAKE) -f tests/libtest/CMakeFiles/lib500.dir/build.make tests/libtest/CMakeFiles/lib500.dir/lib500.c.o.provides.build
.PHONY : tests/libtest/CMakeFiles/lib500.dir/lib500.c.o.provides

tests/libtest/CMakeFiles/lib500.dir/lib500.c.o.provides.build: tests/libtest/CMakeFiles/lib500.dir/lib500.c.o


tests/libtest/CMakeFiles/lib500.dir/first.c.o: tests/libtest/CMakeFiles/lib500.dir/flags.make
tests/libtest/CMakeFiles/lib500.dir/first.c.o: /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/libtest/first.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Isak/Documents/projects/sendpoint/libs/curl-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/libtest/CMakeFiles/lib500.dir/first.c.o"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib500.dir/first.c.o   -c /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/libtest/first.c

tests/libtest/CMakeFiles/lib500.dir/first.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib500.dir/first.c.i"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/libtest/first.c > CMakeFiles/lib500.dir/first.c.i

tests/libtest/CMakeFiles/lib500.dir/first.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib500.dir/first.c.s"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/libtest/first.c -o CMakeFiles/lib500.dir/first.c.s

tests/libtest/CMakeFiles/lib500.dir/first.c.o.requires:

.PHONY : tests/libtest/CMakeFiles/lib500.dir/first.c.o.requires

tests/libtest/CMakeFiles/lib500.dir/first.c.o.provides: tests/libtest/CMakeFiles/lib500.dir/first.c.o.requires
	$(MAKE) -f tests/libtest/CMakeFiles/lib500.dir/build.make tests/libtest/CMakeFiles/lib500.dir/first.c.o.provides.build
.PHONY : tests/libtest/CMakeFiles/lib500.dir/first.c.o.provides

tests/libtest/CMakeFiles/lib500.dir/first.c.o.provides.build: tests/libtest/CMakeFiles/lib500.dir/first.c.o


tests/libtest/CMakeFiles/lib500.dir/testutil.c.o: tests/libtest/CMakeFiles/lib500.dir/flags.make
tests/libtest/CMakeFiles/lib500.dir/testutil.c.o: /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/libtest/testutil.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Isak/Documents/projects/sendpoint/libs/curl-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/libtest/CMakeFiles/lib500.dir/testutil.c.o"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib500.dir/testutil.c.o   -c /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/libtest/testutil.c

tests/libtest/CMakeFiles/lib500.dir/testutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib500.dir/testutil.c.i"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/libtest/testutil.c > CMakeFiles/lib500.dir/testutil.c.i

tests/libtest/CMakeFiles/lib500.dir/testutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib500.dir/testutil.c.s"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/libtest/testutil.c -o CMakeFiles/lib500.dir/testutil.c.s

tests/libtest/CMakeFiles/lib500.dir/testutil.c.o.requires:

.PHONY : tests/libtest/CMakeFiles/lib500.dir/testutil.c.o.requires

tests/libtest/CMakeFiles/lib500.dir/testutil.c.o.provides: tests/libtest/CMakeFiles/lib500.dir/testutil.c.o.requires
	$(MAKE) -f tests/libtest/CMakeFiles/lib500.dir/build.make tests/libtest/CMakeFiles/lib500.dir/testutil.c.o.provides.build
.PHONY : tests/libtest/CMakeFiles/lib500.dir/testutil.c.o.provides

tests/libtest/CMakeFiles/lib500.dir/testutil.c.o.provides.build: tests/libtest/CMakeFiles/lib500.dir/testutil.c.o


tests/libtest/CMakeFiles/lib500.dir/testtrace.c.o: tests/libtest/CMakeFiles/lib500.dir/flags.make
tests/libtest/CMakeFiles/lib500.dir/testtrace.c.o: /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/libtest/testtrace.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Isak/Documents/projects/sendpoint/libs/curl-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object tests/libtest/CMakeFiles/lib500.dir/testtrace.c.o"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib500.dir/testtrace.c.o   -c /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/libtest/testtrace.c

tests/libtest/CMakeFiles/lib500.dir/testtrace.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib500.dir/testtrace.c.i"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/libtest/testtrace.c > CMakeFiles/lib500.dir/testtrace.c.i

tests/libtest/CMakeFiles/lib500.dir/testtrace.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib500.dir/testtrace.c.s"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/libtest/testtrace.c -o CMakeFiles/lib500.dir/testtrace.c.s

tests/libtest/CMakeFiles/lib500.dir/testtrace.c.o.requires:

.PHONY : tests/libtest/CMakeFiles/lib500.dir/testtrace.c.o.requires

tests/libtest/CMakeFiles/lib500.dir/testtrace.c.o.provides: tests/libtest/CMakeFiles/lib500.dir/testtrace.c.o.requires
	$(MAKE) -f tests/libtest/CMakeFiles/lib500.dir/build.make tests/libtest/CMakeFiles/lib500.dir/testtrace.c.o.provides.build
.PHONY : tests/libtest/CMakeFiles/lib500.dir/testtrace.c.o.provides

tests/libtest/CMakeFiles/lib500.dir/testtrace.c.o.provides.build: tests/libtest/CMakeFiles/lib500.dir/testtrace.c.o


# Object files for target lib500
lib500_OBJECTS = \
"CMakeFiles/lib500.dir/lib500.c.o" \
"CMakeFiles/lib500.dir/first.c.o" \
"CMakeFiles/lib500.dir/testutil.c.o" \
"CMakeFiles/lib500.dir/testtrace.c.o"

# External object files for target lib500
lib500_EXTERNAL_OBJECTS =

tests/libtest/lib500: tests/libtest/CMakeFiles/lib500.dir/lib500.c.o
tests/libtest/lib500: tests/libtest/CMakeFiles/lib500.dir/first.c.o
tests/libtest/lib500: tests/libtest/CMakeFiles/lib500.dir/testutil.c.o
tests/libtest/lib500: tests/libtest/CMakeFiles/lib500.dir/testtrace.c.o
tests/libtest/lib500: tests/libtest/CMakeFiles/lib500.dir/build.make
tests/libtest/lib500: lib/libcurl.dylib
tests/libtest/lib500: /usr/lib/libz.dylib
tests/libtest/lib500: tests/libtest/CMakeFiles/lib500.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Isak/Documents/projects/sendpoint/libs/curl-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable lib500"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/libtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib500.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/libtest/CMakeFiles/lib500.dir/build: tests/libtest/lib500

.PHONY : tests/libtest/CMakeFiles/lib500.dir/build

tests/libtest/CMakeFiles/lib500.dir/requires: tests/libtest/CMakeFiles/lib500.dir/lib500.c.o.requires
tests/libtest/CMakeFiles/lib500.dir/requires: tests/libtest/CMakeFiles/lib500.dir/first.c.o.requires
tests/libtest/CMakeFiles/lib500.dir/requires: tests/libtest/CMakeFiles/lib500.dir/testutil.c.o.requires
tests/libtest/CMakeFiles/lib500.dir/requires: tests/libtest/CMakeFiles/lib500.dir/testtrace.c.o.requires

.PHONY : tests/libtest/CMakeFiles/lib500.dir/requires

tests/libtest/CMakeFiles/lib500.dir/clean:
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/libtest && $(CMAKE_COMMAND) -P CMakeFiles/lib500.dir/cmake_clean.cmake
.PHONY : tests/libtest/CMakeFiles/lib500.dir/clean

tests/libtest/CMakeFiles/lib500.dir/depend:
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Isak/Documents/projects/sendpoint/libs/curl /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/libtest /Users/Isak/Documents/projects/sendpoint/libs/curl-build /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/libtest /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/libtest/CMakeFiles/lib500.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/libtest/CMakeFiles/lib500.dir/depend

