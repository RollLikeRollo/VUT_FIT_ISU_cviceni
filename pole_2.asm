%include "rw32-2018.inc"

section .data
    ; zde budou vase data
    ini dd 1,2,4

section .bss

    nini resd 3

section .text
_main:
    push ebp
    mov ebp, esp
    
    ; slidy cviceni 3 strana 17

    mov eax,[ini]
    neg eax
    mov [nini],eax
    
    mov eax,[ini]
    sub eax,[ini+4]
    mov [nini+4],eax
    
    mov eax,[ini+8]
    sub eax,[ini]
    sub eax,[ini+4]
    sub eax,100         ;nebo add eax,-100
    mov [nini+8],eax
    


    pop ebp
    ret