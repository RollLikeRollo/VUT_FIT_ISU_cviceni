%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov eax, 0x12345678     ;vystup 0x34651278
    call WriteHex32
    call WriteNewLine
    
    rol eax,8 ;
    rol ax,8
    rol eax,24 ;
    rol ah,4 ;
    rol eax,8
    
    call WriteHex32

    pop ebp
    ret