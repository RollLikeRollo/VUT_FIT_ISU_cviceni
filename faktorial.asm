%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadUInt32
    
    push eax
    
    call factorial
    add esp,4

    call WriteUInt32

    pop ebp
    ret
    
factorial:
    push ebp
    mov ebp, esp
    
    push ebx
    push edx
    
    mov ebx, [ebp + 8]
 
    mov eax,1
    cmp ebx,1
    jle konec

    sub ebx,1
    push ebx
    call factorial
    add esp,4
    
    mul dword [ebp + 8]

    konec:        
    pop edx
    pop ebx
    pop ebp
    ret