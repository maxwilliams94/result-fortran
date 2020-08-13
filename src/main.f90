module types

    type Error
        integer :: t
    end type Error

    type Result
        integer :: success
        type(Error) :: error
    end type Result


end module types