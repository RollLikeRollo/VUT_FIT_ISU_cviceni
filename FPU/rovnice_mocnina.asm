%include "rw32-2018.inc"

section .data
    ; odmocnina x^2 + y^2
    str1 db "PI je vetsi",10,0
    str2 db "Cislo je vetsi",10,0

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadDouble
    call ReadDouble
    
    fmul st0
    fxch st1        ;vymeni st1 a st0
    fmul st0
    
    fadd st1
    
    fsqrt
    
    call WriteDouble
    
    fst st1
    fldpi
    fcomi st1
    jc cislovetsi
PIvetsi:
    mov esi, str1
    jmp konec
cislovetsi:
    mov esi, str2
konec:   
    call WriteNewLine
    call WriteString

    pop ebp
    ret