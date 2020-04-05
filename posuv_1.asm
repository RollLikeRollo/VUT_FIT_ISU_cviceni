%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov al, 6   ;0000 0110
    call WriteBin8
    call WriteNewLine
    call WriteInt8

    shl al, 1   ;0000 1100 - doplni se nula vlevo
    
    call WriteNewLine
    call WriteBin8
    call WriteNewLine
    call WriteInt8
    
    shr al, 1   ;0000 0110 - doplni se nula - logicky,
                             ;doplni se cislo - aritmeticky
    
    call WriteNewLine
    call WriteBin8
    call WriteNewLine
    call WriteInt8

    pop ebp
    ret