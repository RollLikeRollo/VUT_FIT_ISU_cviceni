%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov ax,1000
    mov bx,200
    
    imul bx
    
    call WriteInt32
    
    shl edx,16
    mov dx,ax
    mov eax,edx
    
    call WriteNewLine
    call WriteInt32

    pop ebp
    ret