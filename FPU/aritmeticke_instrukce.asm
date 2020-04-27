%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    fld1
    fldpi
    
    fadd st1        ;vse v debuggeru
    
    fsub st1
    
    fldpi
    
    fmul st1
    
    fdiv st1
    
    fld1
    fldpi
    
    fadd st1, st0
    fadd st0, st1
    
    ;fadd st1,st2   nefuguje, alespon jeden operand musi byt st0

    pop ebp
    ret