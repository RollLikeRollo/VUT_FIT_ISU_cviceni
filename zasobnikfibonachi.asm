%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadInt32
    push eax
    
    call Fibonacci
    call WriteInt32    
    
    add esp,4
    
    pop ebp
    ret
    
Fibonacci:
    push ebp
    mov ebp, esp

    sub esp,4
    
    mov eax,[ebp+8]
    cmp eax,0
    je konec
    cmp eax,1
    je konec
    
    dec eax
    push eax
    call Fibonacci
    mov [ebp-4],eax
    pop eax
    dec eax
    push eax
    call Fibonacci
    add eax, [ebp-4]
    add esp, 4
    
konec:    
    add esp,4
    pop ebp
    ret
 

    