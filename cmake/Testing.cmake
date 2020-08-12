
include( ${PROJECT_SOURCE_DIR}/cmake/Catch.cmake )

macro(discover_and_run_tests appName )
  catch_discover_tests( ${appName} )
endmacro()
