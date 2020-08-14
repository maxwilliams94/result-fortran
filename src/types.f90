module types

    use kinds, only : int64, dp

    implicit none

    type Error
        character(50) :: message = ""
        character(50) :: src = ""
        integer :: error_code = 0
    end type Error

    type result_base
        integer :: success = 0
        type(Error) :: error
    end type result_base

    type, extends(result_base) :: result_int
        integer(int64) :: Ok
    end type result_int

    type, extends(result_base) :: result_real
        real(int64) :: Ok
    end type result_real

end module types