cmake_minimum_required(VERSION 3.3)
project(Tutorial)

# set version number
set(Tutorial_VERSION_MAJOR 1)
set(Tutorial_VERSION_MINOR 0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_INSTALL_PREFIX .)

# configure a header file to pass some of the CMake settings to the source code
configure_file(
  "./source/TutorialConfig.h.in"
  "./bin/TutorialConfig.h"
  )

add_executable(Tutorial tutorial.cxx)

target_include_directories(Tutorial PUBLIC
							"$./bin"
							)

# should we use our own math functions
option(USE_MYMATH "Use tutorial provided math implementation" ON)

# add the MathFunctions library?
if(USE_MYMATH)
add_subdirectory(MathFunctions)
list(APPEND EXTRA_LIBS MathFunctions)
list(APPEND EXTRA_INCLUDES "./source/MathFunctions")
endif(USE_MYMATH)

# add the executable
add_executable(Tutorial tutorial.cxx)
target_link_libraries(Tutorial MathFunctions)

# add the binary tree to the search path for include files
# so that we will find TutorialConfig.h
target_include_directories(Tutorial PUBLIC
                         "./bin"
                         )

target_include_directories(MathFunctions
            INTERFACE ./source)

install(TARGETS Tutorial DESTINATION bin)
install(FILES "./bin/TutorialConfig.h"
          DESTINATION include
          )

# enable testing
enable_testing()

# does the application run
add_test(NAME Runs COMMAND Tutorial 25)

# does the usage message work?
add_test(NAME Usage COMMAND Tutorial)
set_tests_properties(Usage
	PROPERTIES PASS_REGULAR_EXPRESSION "Usage:.*number"
	)

# define a function to simplify adding tests
function(do_test target arg result)
add_test(NAME Comp${arg} COMMAND ${target} ${arg})
set_tests_properties(Comp${arg}
  PROPERTIES PASS_REGULAR_EXPRESSION ${result}
  )
endfunction(do_test)

# do a bunch of result based tests
do_test(Tutorial 25 "25 is 5")
do_test(Tutorial -25 "-25 is [-nan|nan|0]")
do_test(Tutorial 0.0001 "0.0001 is 0.01")


# does this system provide the log and exp functions?
include(CheckSymbolExists)
set(CMAKE_REQUIRED_LIBRARIES "m")
check_symbol_exists(log "math.h" HAVE_LOG)
check_symbol_exists(exp "math.h" HAVE_EXP)