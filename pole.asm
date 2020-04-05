%include "rw32-2018.inc"

section .data
    ; zde budou vase data
section .bss
    pole resw 4

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadInt16
    mov cx,ax
    call ReadInt16
    mov bx,ax
    add ax,cx
    mov [pole],ax
    mov ax,bx
    sub ax,cx
    mov [pole+2],ax
    mov ax,cx
    sub cx,bx
    mov [pole+4],cx
    mov cx,0
    sub cx,ax
    sub cx,bx
    mov [pole+6],cx
    

    pop ebp
    ret