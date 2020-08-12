# Conan cmake settings
#
include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

# Add executables or libs here
#
add_executable( app main.cpp )

# Tests
#
add_library( test_main OBJECT test_main.cpp )
add_executable( test1 test1.cpp $<TARGET_OBJECTS:test_main> )

target_include_directories( test_main PUBLIC ${CONAN_INCLUDE_DIRS_CATCH2} )

add_test( NAME MyTest COMMAND $<TARGET_FILE:test1> )


