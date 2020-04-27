%include "rw32-2018.inc"

section .data
    pole dd 1,2,3
section .bss
    pole2 resd 3

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov eax,[pole]
    neg eax 
    mov [pole2],eax
    
    neg eax
    mov ebx,[pole+4]
    sub eax,ebx
    mov [pole2+4],eax
    
    mov ecx,[pole+8]
    mov eax,[pole]
    sub ecx,ebx
    sub ecx,eax
    sub ecx,100
    
    mov [pole2+8],ecx
    
    pop ebp
    ret