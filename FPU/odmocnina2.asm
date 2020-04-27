%include "rw32-2018.inc"

section .data
    mensi db "Je mensi jak pi" ,10,0
    vetsi db "Je vetsi jak pi" ,10,0

section .text
_main:
    push ebp
    mov ebp, esp
    pusha
    
    call ReadDouble
    fmul st0, st0
    
    call ReadDouble
    fmul st0, st0
    
    fadd st1
    
    fsqrt
    

    fldpi
    fcomi st1
    jb skip
    mov esi, mensi
    jmp skip2
  skip:
    mov esi, vetsi
 skip2:
    call WriteString
    
    popa
    finit
    pop ebp
    ret
    
