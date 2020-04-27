%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    ; zde bude vas kod
    call ReadInt32
    mov ebx,eax
    call ReadInt32
    mov ecx,eax
    call ReadInt32
    mov edx,eax
    
    add ecx,edx
    sub ebx,ecx
    mov eax,ebx
    
    call WriteInt32

    pop ebp
    ret