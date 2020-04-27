%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    fldpi
    fldpi
    faddp st1   ;secte do st0 a vymaze st1

    pop ebp
    ret