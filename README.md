An attempt at emulating some of the functionality available in Rust for return, propagation and handling of errors
# Plan

## Type Layout
### Result
```fortran
type Result
    type(T) :: Ok
    type(Error) :: Err = Error("", "", 0)
    logical :: E = .false.
end type Result
```

### Error
```fortran
type Error
    character(*) :: message
    character(*) :: src
    integer :: error_code    
end type Error
```

### Notes
- Should the error type be generic or tailored according to the type of the corresponding value?
    - For now
- Base (abstract?) types for the Result type should minimise repeated code
- Support for allocatable/static arrays

## Methods
- Check the E field and return Ok if error free
- Result reading subroutine parses both Ok and Err fields and populates intent(out) arguments with the contents
- If no error, code continues as usual using the Ok value
- On Err
    - Detect that an error has been flagged
    - `STOP` execution and print error message
    - Return `Result` instance to calling subroutine for higher level error handling 
    
    
### Initialisation
- Initialise standard error/error output channel units

