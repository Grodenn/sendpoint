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
include tests/server/CMakeFiles/getpart.dir/depend.make

# Include the progress variables for this target.
include tests/server/CMakeFiles/getpart.dir/progress.make

# Include the compile flags for this target's objects.
include tests/server/CMakeFiles/getpart.dir/flags.make

tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o: /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/mprintf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Isak/Documents/projects/sendpoint/libs/curl-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o   -c /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/mprintf.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/mprintf.c.i"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/mprintf.c > CMakeFiles/getpart.dir/__/__/lib/mprintf.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/mprintf.c.s"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/mprintf.c -o CMakeFiles/getpart.dir/__/__/lib/mprintf.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o.requires:

.PHONY : tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o.requires

tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o.provides: tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o.requires
	$(MAKE) -f tests/server/CMakeFiles/getpart.dir/build.make tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o.provides.build
.PHONY : tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o.provides

tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o.provides.build: tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o


tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o: /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/nonblock.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Isak/Documents/projects/sendpoint/libs/curl-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o   -c /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/nonblock.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/nonblock.c.i"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/nonblock.c > CMakeFiles/getpart.dir/__/__/lib/nonblock.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/nonblock.c.s"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/nonblock.c -o CMakeFiles/getpart.dir/__/__/lib/nonblock.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o.requires:

.PHONY : tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o.requires

tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o.provides: tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o.requires
	$(MAKE) -f tests/server/CMakeFiles/getpart.dir/build.make tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o.provides.build
.PHONY : tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o.provides

tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o.provides.build: tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o


tests/server/CMakeFiles/getpart.dir/__/__/lib/strequal.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/strequal.c.o: /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/strequal.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Isak/Documents/projects/sendpoint/libs/curl-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/strequal.c.o"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/getpart.dir/__/__/lib/strequal.c.o   -c /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/strequal.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/strequal.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/strequal.c.i"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/strequal.c > CMakeFiles/getpart.dir/__/__/lib/strequal.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/strequal.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/strequal.c.s"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/strequal.c -o CMakeFiles/getpart.dir/__/__/lib/strequal.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/strequal.c.o.requires:

.PHONY : tests/server/CMakeFiles/getpart.dir/__/__/lib/strequal.c.o.requires

tests/server/CMakeFiles/getpart.dir/__/__/lib/strequal.c.o.provides: tests/server/CMakeFiles/getpart.dir/__/__/lib/strequal.c.o.requires
	$(MAKE) -f tests/server/CMakeFiles/getpart.dir/build.make tests/server/CMakeFiles/getpart.dir/__/__/lib/strequal.c.o.provides.build
.PHONY : tests/server/CMakeFiles/getpart.dir/__/__/lib/strequal.c.o.provides

tests/server/CMakeFiles/getpart.dir/__/__/lib/strequal.c.o.provides.build: tests/server/CMakeFiles/getpart.dir/__/__/lib/strequal.c.o


tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o: /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/strtoofft.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Isak/Documents/projects/sendpoint/libs/curl-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o   -c /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/strtoofft.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.i"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/strtoofft.c > CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.s"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/strtoofft.c -o CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o.requires:

.PHONY : tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o.requires

tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o.provides: tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o.requires
	$(MAKE) -f tests/server/CMakeFiles/getpart.dir/build.make tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o.provides.build
.PHONY : tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o.provides

tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o.provides.build: tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o


tests/server/CMakeFiles/getpart.dir/__/__/lib/timeval.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/timeval.c.o: /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/timeval.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Isak/Documents/projects/sendpoint/libs/curl-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/timeval.c.o"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/getpart.dir/__/__/lib/timeval.c.o   -c /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/timeval.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/timeval.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/timeval.c.i"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/timeval.c > CMakeFiles/getpart.dir/__/__/lib/timeval.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/timeval.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/timeval.c.s"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/timeval.c -o CMakeFiles/getpart.dir/__/__/lib/timeval.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/timeval.c.o.requires:

.PHONY : tests/server/CMakeFiles/getpart.dir/__/__/lib/timeval.c.o.requires

tests/server/CMakeFiles/getpart.dir/__/__/lib/timeval.c.o.provides: tests/server/CMakeFiles/getpart.dir/__/__/lib/timeval.c.o.requires
	$(MAKE) -f tests/server/CMakeFiles/getpart.dir/build.make tests/server/CMakeFiles/getpart.dir/__/__/lib/timeval.c.o.provides.build
.PHONY : tests/server/CMakeFiles/getpart.dir/__/__/lib/timeval.c.o.provides

tests/server/CMakeFiles/getpart.dir/__/__/lib/timeval.c.o.provides.build: tests/server/CMakeFiles/getpart.dir/__/__/lib/timeval.c.o


tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o: /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/warnless.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Isak/Documents/projects/sendpoint/libs/curl-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/getpart.dir/__/__/lib/warnless.c.o   -c /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/warnless.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/warnless.c.i"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/warnless.c > CMakeFiles/getpart.dir/__/__/lib/warnless.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/warnless.c.s"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/warnless.c -o CMakeFiles/getpart.dir/__/__/lib/warnless.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o.requires:

.PHONY : tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o.requires

tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o.provides: tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o.requires
	$(MAKE) -f tests/server/CMakeFiles/getpart.dir/build.make tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o.provides.build
.PHONY : tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o.provides

tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o.provides.build: tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o


tests/server/CMakeFiles/getpart.dir/getpart.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/getpart.c.o: /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/server/getpart.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Isak/Documents/projects/sendpoint/libs/curl-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object tests/server/CMakeFiles/getpart.dir/getpart.c.o"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/getpart.dir/getpart.c.o   -c /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/server/getpart.c

tests/server/CMakeFiles/getpart.dir/getpart.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/getpart.c.i"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/server/getpart.c > CMakeFiles/getpart.dir/getpart.c.i

tests/server/CMakeFiles/getpart.dir/getpart.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/getpart.c.s"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/server/getpart.c -o CMakeFiles/getpart.dir/getpart.c.s

tests/server/CMakeFiles/getpart.dir/getpart.c.o.requires:

.PHONY : tests/server/CMakeFiles/getpart.dir/getpart.c.o.requires

tests/server/CMakeFiles/getpart.dir/getpart.c.o.provides: tests/server/CMakeFiles/getpart.dir/getpart.c.o.requires
	$(MAKE) -f tests/server/CMakeFiles/getpart.dir/build.make tests/server/CMakeFiles/getpart.dir/getpart.c.o.provides.build
.PHONY : tests/server/CMakeFiles/getpart.dir/getpart.c.o.provides

tests/server/CMakeFiles/getpart.dir/getpart.c.o.provides.build: tests/server/CMakeFiles/getpart.dir/getpart.c.o


tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o: /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/base64.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Isak/Documents/projects/sendpoint/libs/curl-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/getpart.dir/__/__/lib/base64.c.o   -c /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/base64.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/base64.c.i"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/base64.c > CMakeFiles/getpart.dir/__/__/lib/base64.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/base64.c.s"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/base64.c -o CMakeFiles/getpart.dir/__/__/lib/base64.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o.requires:

.PHONY : tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o.requires

tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o.provides: tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o.requires
	$(MAKE) -f tests/server/CMakeFiles/getpart.dir/build.make tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o.provides.build
.PHONY : tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o.provides

tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o.provides.build: tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o


tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o: /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/memdebug.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Isak/Documents/projects/sendpoint/libs/curl-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o   -c /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/memdebug.c

tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/__/__/lib/memdebug.c.i"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/memdebug.c > CMakeFiles/getpart.dir/__/__/lib/memdebug.c.i

tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/__/__/lib/memdebug.c.s"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Isak/Documents/projects/sendpoint/libs/curl/lib/memdebug.c -o CMakeFiles/getpart.dir/__/__/lib/memdebug.c.s

tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o.requires:

.PHONY : tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o.requires

tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o.provides: tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o.requires
	$(MAKE) -f tests/server/CMakeFiles/getpart.dir/build.make tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o.provides.build
.PHONY : tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o.provides

tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o.provides.build: tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o


tests/server/CMakeFiles/getpart.dir/testpart.c.o: tests/server/CMakeFiles/getpart.dir/flags.make
tests/server/CMakeFiles/getpart.dir/testpart.c.o: /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/server/testpart.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Isak/Documents/projects/sendpoint/libs/curl-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object tests/server/CMakeFiles/getpart.dir/testpart.c.o"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/getpart.dir/testpart.c.o   -c /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/server/testpart.c

tests/server/CMakeFiles/getpart.dir/testpart.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getpart.dir/testpart.c.i"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/server/testpart.c > CMakeFiles/getpart.dir/testpart.c.i

tests/server/CMakeFiles/getpart.dir/testpart.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getpart.dir/testpart.c.s"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/server/testpart.c -o CMakeFiles/getpart.dir/testpart.c.s

tests/server/CMakeFiles/getpart.dir/testpart.c.o.requires:

.PHONY : tests/server/CMakeFiles/getpart.dir/testpart.c.o.requires

tests/server/CMakeFiles/getpart.dir/testpart.c.o.provides: tests/server/CMakeFiles/getpart.dir/testpart.c.o.requires
	$(MAKE) -f tests/server/CMakeFiles/getpart.dir/build.make tests/server/CMakeFiles/getpart.dir/testpart.c.o.provides.build
.PHONY : tests/server/CMakeFiles/getpart.dir/testpart.c.o.provides

tests/server/CMakeFiles/getpart.dir/testpart.c.o.provides.build: tests/server/CMakeFiles/getpart.dir/testpart.c.o


# Object files for target getpart
getpart_OBJECTS = \
"CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o" \
"CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o" \
"CMakeFiles/getpart.dir/__/__/lib/strequal.c.o" \
"CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o" \
"CMakeFiles/getpart.dir/__/__/lib/timeval.c.o" \
"CMakeFiles/getpart.dir/__/__/lib/warnless.c.o" \
"CMakeFiles/getpart.dir/getpart.c.o" \
"CMakeFiles/getpart.dir/__/__/lib/base64.c.o" \
"CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o" \
"CMakeFiles/getpart.dir/testpart.c.o"

# External object files for target getpart
getpart_EXTERNAL_OBJECTS =

tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/strequal.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/timeval.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/getpart.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/testpart.c.o
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/build.make
tests/server/getpart: /usr/lib/libz.dylib
tests/server/getpart: tests/server/CMakeFiles/getpart.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Isak/Documents/projects/sendpoint/libs/curl-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking C executable getpart"
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/getpart.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/server/CMakeFiles/getpart.dir/build: tests/server/getpart

.PHONY : tests/server/CMakeFiles/getpart.dir/build

tests/server/CMakeFiles/getpart.dir/requires: tests/server/CMakeFiles/getpart.dir/__/__/lib/mprintf.c.o.requires
tests/server/CMakeFiles/getpart.dir/requires: tests/server/CMakeFiles/getpart.dir/__/__/lib/nonblock.c.o.requires
tests/server/CMakeFiles/getpart.dir/requires: tests/server/CMakeFiles/getpart.dir/__/__/lib/strequal.c.o.requires
tests/server/CMakeFiles/getpart.dir/requires: tests/server/CMakeFiles/getpart.dir/__/__/lib/strtoofft.c.o.requires
tests/server/CMakeFiles/getpart.dir/requires: tests/server/CMakeFiles/getpart.dir/__/__/lib/timeval.c.o.requires
tests/server/CMakeFiles/getpart.dir/requires: tests/server/CMakeFiles/getpart.dir/__/__/lib/warnless.c.o.requires
tests/server/CMakeFiles/getpart.dir/requires: tests/server/CMakeFiles/getpart.dir/getpart.c.o.requires
tests/server/CMakeFiles/getpart.dir/requires: tests/server/CMakeFiles/getpart.dir/__/__/lib/base64.c.o.requires
tests/server/CMakeFiles/getpart.dir/requires: tests/server/CMakeFiles/getpart.dir/__/__/lib/memdebug.c.o.requires
tests/server/CMakeFiles/getpart.dir/requires: tests/server/CMakeFiles/getpart.dir/testpart.c.o.requires

.PHONY : tests/server/CMakeFiles/getpart.dir/requires

tests/server/CMakeFiles/getpart.dir/clean:
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server && $(CMAKE_COMMAND) -P CMakeFiles/getpart.dir/cmake_clean.cmake
.PHONY : tests/server/CMakeFiles/getpart.dir/clean

tests/server/CMakeFiles/getpart.dir/depend:
	cd /Users/Isak/Documents/projects/sendpoint/libs/curl-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Isak/Documents/projects/sendpoint/libs/curl /Users/Isak/Documents/projects/sendpoint/libs/curl/tests/server /Users/Isak/Documents/projects/sendpoint/libs/curl-build /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server /Users/Isak/Documents/projects/sendpoint/libs/curl-build/tests/server/CMakeFiles/getpart.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/server/CMakeFiles/getpart.dir/depend

