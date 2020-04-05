%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadInt32
    mov edx,0
    
    mov ebx,4
    mul ebx
    
    call WriteInt32

    pop ebp
    ret