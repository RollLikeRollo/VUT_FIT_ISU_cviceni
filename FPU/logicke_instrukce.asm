%include "rw32-2018.inc"

section .data
    str1 db "Jsou stejne",10,0
    str2 db "jsou jine",10,0

section .text
_main:
    push ebp
    mov ebp, esp
    
    ; fpu porovnava ale neobsahuje instrukce podmineneho skoku
    
    ; porovnavame instrukci fcomi
    
    call ReadDouble
    call ReadDouble

    fcomi st1
    
    jnz jine
    jp jine
    jc jine
stejne:
    mov esi, str1
    jmp konec
jine:
    mov esi, str2
konec:    
    call WriteString
    pop ebp
    ret