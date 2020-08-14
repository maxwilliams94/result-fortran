module something

    use kinds, only : dp, int64
    use types, only : result_real, result_int, Error
    use fortran_result, only : parse_result

    implicit none

contains

    function do_something(arg1, arg2) result(R)
        use kinds, only : int64
        integer(int64), intent(in) :: arg1, arg2
        type(result_int) :: R

        if (arg1 + arg2 <= 10) then
            R%Ok = arg1 + arg2
        else
            R%error%error_code = 1
        end if

    end function do_something

    function do_something_2(arg1, arg2) result(R)
        use kinds, only : dp
        real(dp), intent(in) :: arg1, arg2
        type(result_real) :: R

        if (arg1 + arg2 <= 10.0_dp) then
            R%Ok = arg1 + arg2
        else
            R%error%error_code = 1
        end if

    end function do_something_2

end module something
