include_directories("${CMAKE_SOURCE_DIR}/src")
set(DIR "src")

set(SOURCE_CODE
        ${DIR}/types.f90
        ${DIR}/kinds.f90
        ${DIR}/fortran_result.f90
        PARENT_SCOPE
    )

