%include "rw32-2018.inc"

section .data
    var db "Hell, world", 10, 0

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov esi, var
    call WriteString

    pop ebp
    ret