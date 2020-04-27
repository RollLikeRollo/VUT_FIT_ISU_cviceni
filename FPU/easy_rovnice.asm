%include "rw32-2018.inc"

section .data
    var1 dq 0.3
    var2 dq 2.0

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadDouble
     fmul qword [var1]
    call ReadDouble
    
    fadd qword [var2]
    
    fdiv st1, st0
    
    fstp st0
    
    call WriteDouble
    
    fstp st0

    pop ebp
    ret