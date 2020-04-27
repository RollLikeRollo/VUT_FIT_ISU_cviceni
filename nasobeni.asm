%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov ax,1222
    mov bx,-223
    
    imul bx           ;spatny vysledek pokud pretece
    
    call WriteInt32
    
    shl edx,16              ;proti preteceni
    mov dx,ax
    mov eax,edx
    
    call WriteNewLine
    call WriteInt32     ;spravny vysledek

    pop ebp
    ret