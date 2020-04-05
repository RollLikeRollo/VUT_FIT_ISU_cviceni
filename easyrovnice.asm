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
    mov ecx,eax
    call ReadInt32
    add eax,ecx
    sub ebx,eax
    mov eax,ebx
    Call WriteInt32
    
    pop ebp
    ret