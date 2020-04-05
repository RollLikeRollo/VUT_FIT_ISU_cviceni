%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadInt32
    
    cmp eax,0
    jl mensi
    
    call WriteInt32

    pop ebp
    ret
    
mensi:
    neg eax
    call WriteInt32

    pop ebp
    ret