%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadInt32
    call WriteBin32
    
    mov ecx,0
    mov ebx,0
    while:
    ror eax,1
    adc ebx,0
    
    add ecx,1
    cmp ecx,32
    jl while
    
    mov eax,ebx
    call WriteNewLine
    call WriteInt32
    

    pop ebp
    ret