cmake_minimum_required(VERSION 3.3)
project(Tutorial)

# set version number
set(Tutorial_VERSION_MAJOR 1)
set(Tutorial_VERSION_MINOR 0)

# configure a header file to pass some of the CMake settings to the source code
configure_file(
  "${PROJECT_SOURCE_DIR}/TutorialConfig.h.in"
  "${PROJECT_BINARY_DIR}/TutorialConfig.h"
  )

add_executable(Tutorial tutorial.cxx)

target_include_directories(Tutorial PUBLIC
							"$/bin"
							)
