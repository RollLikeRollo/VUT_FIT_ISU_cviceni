%include "rw32-2018.inc"

section .data
    ; zde budou vase data

    
section .bss

    var resw 4
            
section .text
_main:
    push ebp
    mov ebp, esp
    
    ; prikad slidy 3, strana 13

    call ReadInt16
    mov bx,ax
    call ReadInt16
    
    add [var+0],ax
    add [var+0],bx
    
    add [var+2],ax
    sub [var+2],bx
    
    add [var+4],bx
    sub [var+4],ax
    
 
    sub [var+8],ax
    sub [var+8],bx
    
    
    pop ebp
    ret