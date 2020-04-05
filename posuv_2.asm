%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov al, 10  
    call WriteBin8
    call WriteNewLine
    call WriteInt8

    ror al, 1   ;
    
    call WriteNewLine
    call WriteBin8
    call WriteNewLine
    call WriteInt8
    
    ror al, 1   ;
    
    call WriteNewLine
    call WriteBin8
    call WriteNewLine
    call WriteInt8

    rol al, 4   ;
    
    call WriteNewLine
    call WriteBin8
    call WriteNewLine
    call WriteInt8

    pop ebp
    ret