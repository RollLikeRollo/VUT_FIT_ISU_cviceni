%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    Call ReadInt32
    Call WriteBin32
    mov ebx,0
    mov ecx,0
    
cyklus:

    rol eax,1
    
    adc ebx,0
    add ecx,1   
    
    cmp ecx,32
    
    jb cyklus
    
    mov eax,ebx
    Call WriteNewLine
    Call WriteInt32

    pop ebp
    ret