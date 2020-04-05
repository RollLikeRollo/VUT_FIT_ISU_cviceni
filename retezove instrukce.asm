%include "rw32-2018.inc"

section .data
    login db "xzbori20",0
    ne db "jsou jine",0
    ano db "jsou stejne",0
section .bss
    pole resb 9
section .text
_main:
    push ebp
    mov ebp, esp
    
    mov ebx,8
    mov edi, pole
    call ReadString
   
    mov esi,login
    
    mov ecx,8
    repe cmpsb
    je stejne
    mov esi, ne
    jmp konec
    stejne:
     mov esi, ano
    konec:
    call WriteString
    pop ebp
    ret