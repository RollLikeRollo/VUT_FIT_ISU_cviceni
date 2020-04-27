%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    fldpi
    fldz
    fld1
    
    fld st2     ;vezme st2 a nakopiruje do st0

    pop ebp
    ret