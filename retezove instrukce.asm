%include "rw32-2018.inc"

section .data
    pole1 dw 1,2,3,4,5,6,7
    pole2 dw 1,2,3,4,5,6,7
    pocet dd 7

section .bss

section .text
_main:
    push ebp
    mov ebp, esp
    
    
    mov esi, pole1
    mov edi, pole2
    mov ecx, [pocet]
    
    mov eax, 8
    
    repe cmpsw
    je stejne
    mov eax, 0
    jmp konec
    stejne:
        mov eax, 1
    konec:
   
    call WriteInt32
    
    pop ebp
    ret