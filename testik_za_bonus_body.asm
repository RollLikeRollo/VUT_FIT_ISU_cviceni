%include "rw32-2018.inc"

section .data
    vystup dd 1
section .bss
    string resb 9    

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov edi, string ;nacti string
    mov ebx, 8      ;omez delku stringu
    call ReadString ;read zw vstupu
    
    mov al,0
    mov edi,[string+0]
    add al,[string+1]
    mov edi,[string+0]
    add al,[string+1]
    mov edi,[string+2]
    add al,[string+2]
    mov edi,[string+3]
    add al,[string+3]
    mov edi,[string+4]
    add al,[string+4]
    mov edi,[string+5]
    add al,[string+5]
    mov edi,[string+6]
    add al,[string+6]
    mov edi,[string+7]
    add al,[string+7]
    mov edi,[string+8]
    add al,[string+8]
    
    mov [vystup],al
    

    pop ebp
    ret