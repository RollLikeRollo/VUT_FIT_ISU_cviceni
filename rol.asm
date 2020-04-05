%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov eax,0x12345678
    rol eax,8
    rol ax,8
    rol eax,16
    rol al,4
    ror eax,16
    call WriteHex32

    pop ebp
    ret