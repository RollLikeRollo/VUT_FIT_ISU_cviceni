%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov al, 0b00110110   ;AL = 0011 0110
    rol al, 1               ;AL = 0110 1100
    ror al, 2                ;AL = 0001 1011
    stc                 ; CF = 1
    rcl al, 1               ;AL = 0011 0111, CF = 0
    rcr al, 2               ;AL = 1000 1101, CF = 1

    call WriteBin8

    pop ebp
    ret