# Download automatically, you can also just copy the conan.cmake file
if(NOT EXISTS "${CMAKE_BINARY_DIR}/conan.cmake")
   message(STATUS "Downloading conan.cmake from https://github.com/conan-io/cmake-conan")
   file(DOWNLOAD "https://raw.githubusercontent.com/conan-io/cmake-conan/master/conan.cmake"
                  "${CMAKE_BINARY_DIR}/conan.cmake")
endif()

include(${CMAKE_BINARY_DIR}/conan.cmake)

set(ENV{PATH} "${PROJECT_SOURCE_DIR}/.virtualenv/Scripts/;$ENV{PATH}")
set(ENV{CONAN_USER_HOME} ${CMAKE_BINARY_DIR})

conan_cmake_run(CONANFILE conanfile.txt BASIC_SETUP CMAKE_TARGETS BUILD missing )


