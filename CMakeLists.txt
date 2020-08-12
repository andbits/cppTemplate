cmake_minimum_required (VERSION 3.15.0)

project( MyTemplate )
include(CTest)

enable_testing()

# Establish compiler settings
#
set(CMAKE_CXX_STANDARD 17)

# Invoke conan to grab dependencies.
#
include( ${PROJECT_SOURCE_DIR}/cmake/conanHelpers.cmake )
add_subdirectory(src)
