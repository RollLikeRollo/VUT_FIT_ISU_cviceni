%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    ; zde bude vas kod
    
    call ReadInt32      ;eax=5
    mov ebx,eax         ;eax=5 ebx=5
    add eax,ebx
    add eax,ebx
    add eax,ebx
    
    call WriteInt32  
    
    pop ebp
    ret