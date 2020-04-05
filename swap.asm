%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    ; zde bude vas kod
    
    call ReadInt32      ;eax=18
    mov ebx,eax         ;eax=18 ebx=18
    call ReadInt32      ;eax=66 ebx=18
    call WriteInt32     ;write=66
    call WriteNewLine
    mov eax,ebx         ;eax=18 ebx=18
    call WriteInt32

    pop ebp
    ret