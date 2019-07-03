cmake_minimum_required(VERSION 3.3)
project(LabExample)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_library( myLib STATIC ./source/block.c )
add_executable(LabExample ./source/block.c)
target_link_libraries(LabExample myLib)

add_library(sharedLib SHARED ./source/block.c)
add_executable(LabExample ./source/block.c)
target_link_libraries(LabExample sharedLib)