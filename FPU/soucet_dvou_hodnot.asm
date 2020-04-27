%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadDouble
    call ReadDouble    ;prvni se posune z st0 do st1
    fadd st1
    
    call WriteDouble
    
    
    pop ebp
    ret