%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .bss

    promenna resd 1

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadInt32
    mov [promenna],eax
    
    call ReadInt32
    add [promenna],eax

    pop ebp
    ret