%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadDouble     ;nacte 64b do st0
    call ReadFloat      ;nacte 32b do eax
    
    call WriteNewLine
    
    call WriteDouble     ;vypise 64b hodnotu z st0
   ; call WriteFloat      ;vypise 32b z eax

    pop ebp
    ret