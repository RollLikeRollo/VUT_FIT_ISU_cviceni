%include "rw32-2018.inc"

section .data
    ; zde budou vase data
section .bss
    pole resd 10
    
section .text
_main:
    push ebp
    mov ebp, esp
    
    mov ecx,10
    for:

        mov [pole + ecx*4 - 4], ecx

    loop for

    

    pop ebp
    ret