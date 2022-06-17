cmake_minimum_required(VERSION 3.5)
project(note_manager)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

add_subdirectory(test)

set(SOURCE_FILES Collection.cpp Collection.h Note.cpp Note.h Menu.cpp Menu.h Observer.h CollectionViewer.cpp CollectionViewer.h)
add_executable(note_manager main.cpp)
add_library(core ${SOURCE_FILES})
target_link_libraries(note_manager core)