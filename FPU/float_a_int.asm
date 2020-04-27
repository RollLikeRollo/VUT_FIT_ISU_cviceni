%include "rw32-2018.inc"

section .data
   var dd 10

section .text
_main:
    push ebp
    mov ebp, esp
    
    fild dword [var]

    pop ebp
    ret