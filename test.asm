%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadInt32
    mov ebx,eax
    mov eax, 10
    mov eax,ebx
    call WriteInt32

    pop ebp
    ret