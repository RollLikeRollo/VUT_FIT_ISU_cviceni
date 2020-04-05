%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadInt32
    mov ebx,eax
    call ReadInt32
    cmp eax,ebx
    jg vetsi
    
    mov eax,ebx
    call WriteInt32

    pop ebp
    ret
    
vetsi:

    call WriteInt32
    
    pop ebp
    ret