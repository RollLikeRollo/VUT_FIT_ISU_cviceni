%include "rw32-2018.inc"

extern _getchar
extern _putchar

section .text
_main:
    push ebp
    mov ebp, esp
    
    
    call _getchar
    
    call WriteInt8
    call WriteNewLine
    push eax
    call _putchar
    add esp, 4
    
    push byte 'K'
    call _putchar
    add esp, 4
    

    pop ebp
    ret