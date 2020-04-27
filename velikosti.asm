%include "rw32-2018.inc"

section .data
    ; zde budou vase data

    var1 dw 10, 20, 30, 40

section .bss

    var2 resw 4    

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov eax

    pop ebp
    ret