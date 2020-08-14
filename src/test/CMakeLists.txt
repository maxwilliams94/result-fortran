include_directories("${CMAKE_SOURCE_DIR}/src/test")
set(DIR "src/test")

set(TEST_SRC
        ${DIR}/test.f90
        ${DIR}/something.f90
        PARENT_SCOPE
    )
