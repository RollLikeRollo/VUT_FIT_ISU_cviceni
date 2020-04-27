%include "rw32-2018.inc"

section .data
    var1 dq 0.3
    var2 dq 2.0

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadDouble
    call ReadDouble ;st0 = 2.5 st1 = 1.5
    
    fld qword [var1]    ;st0 = 0.3 st1 = 2.5 st2 = 1.5
    fmul st2            ;st0 = 0.3*1.5 st1 = 2.5 st2 = 1.5
    fst st3             ;st0 = 0.3*1.5 st1 = 2.5 st2 = 1.5, st3 = 0.3*1.5
    fstp st0            ;st0 = 2.5 st1 = 1.5, st2 = 0.3*1.5
    fadd   qword [var2] ;st0 = 4.5 st1 = 1.5, st2 = 0.3*1.5
    
    fxch st2            ;st0 = 0.3*1.5 st1 = 1.5, st2 = 4.5
    
    fdiv st2            ;st0 = (0.3*1.5)/4.5 st1 = 1.5, st2 = 4.5
    
    call WriteDouble
    
    finit       ;vsechno vymaza
    
    pop ebp
    ret