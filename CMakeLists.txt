cmake_minimum_required(VERSION 3.13)
project(fortran-result VERSION 0.1.0
        DESCRIPTION "Result-style typing for error handling in Fortran"
        LANGUAGES Fortran)

# Library Name
set(TARGET fortran_result)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})
include(cmake/CompilerFlags.cmake)

# Set output folders for exe, libs and modules
set(CMAKE_Fortran_MODULE_DIRECTORY ${PROJECT_BINARY_DIR}/modules)
set(CMAKE_Fortran_BIN_DIRECTORY ${PROJECT_BINARY_DIR}/bin)
set(CMAKE_Fortran_LIB_DIRECTORY ${PROJECT_BINARY_DIR}/lib)
set(default_install_prefix "${PROJECT_BINARY_DIR}/fortran-result-lib")

add_subdirectory(src)
message("${SOURCE_CODE}")
add_library(${TARGET} SHARED ${SOURCE_CODE})
add_library(${TARGET}-static STATIC ${SOURCE_CODE})

