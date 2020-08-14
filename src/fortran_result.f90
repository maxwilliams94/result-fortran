module fortran_result

    use types, only : result_int, result_real, &
            Error
    use kinds, only : int64, dp

    implicit none

    interface parse_result
        module procedure parse_result_int
        module procedure parse_result_real
    end interface parse_result

contains

    subroutine parse_result_int(result, Ok, Err)
        type(result_int), intent(in) :: result
        integer(int64), intent(out) :: Ok
        type(Error), intent(out) :: Err

        Ok = result%Ok
        Err = result%Error

    end subroutine parse_result_int

    subroutine parse_result_real(result, Ok, Err)
        type(result_real), intent(in) :: result
        real(dp), intent(out) :: Ok
        type(Error), intent(out) :: Err

        Ok = result%Ok
        Err = result%Error

    end subroutine parse_result_real

end module fortran_result