%include "rw32-2018.inc"

section .data
    ; zde budou vase data
    
    soucet dd 0;
    
section .text
_main:
    push ebp
    mov ebp, esp
    
    ; zde bude vas kod

    call ReadInt32
    add [soucet], eax
    call ReadInt32
    add [soucet], eax

    pop ebp
    ret