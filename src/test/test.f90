program test

    use kinds, only : dp, int64
    use types, only : result_real, result_int, Error
    use fortran_result, only : parse_result
    use something, only : do_something, do_something_2

    implicit none

    type(result_int) :: r_int1, r_int2
    type(result_real) :: r_real1, r_real2
    type(Error) :: e_int1, e_int2, e_int3, e_int4
    real(dp) :: s_real1, s_real2
    integer(int64) :: s_int1, s_int2

    !Method

    r_int1 = do_something(2_int64, 3_int64)
    r_int2 = do_something(5_int64, 6_int64)
    r_real1 = do_something_2(2.4_dp, 4.4_dp)
    r_real2 = do_something_2(5.5_dp, 6.2_dp)

    call parse_result(r_int1, s_int1, e_int1)
    write(*,*) r_int1, s_int1, e_int1


end program test

