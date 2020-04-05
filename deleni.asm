%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov eax, 1000000
    mov edx, eax
    sar edx,16
    
    mov bx,2

    idiv bx
    
    Call WriteInt32

    pop ebp
    ret