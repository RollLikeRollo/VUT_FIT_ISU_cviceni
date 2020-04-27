%include "rw32-2018.inc"

section .data
    str1 db "Druhe vetsi",10,0
    str2 db "Prvni vetsi",10,0
section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadDouble
    call ReadDouble

    fcomi st1
    
    jc druhevetsi
prvnivetsi:
    mov esi, str1
    jmp konec
druhevetsi:
    mov esi, str2
konec:    
    call WriteString

    pop ebp
    ret