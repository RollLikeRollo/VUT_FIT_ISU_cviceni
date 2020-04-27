%include "rw32-2018.inc"

section .data
    pA dd 12,23,42,1,0,52,-1,129,99
    pB dd 0,0,0,0,0,0,0,0,0,0
    N dd 8
    x dd 10

section .text
_main:
    push ebp
    mov ebp, esp
    
    push pB
    mov eax, [x]
    push eax
    mov eax, [N]
    push eax
    push pA
        
    call subX
    add esp,16
    

    pop ebp
    ret
    
subX:
    push ebp
    mov ebp, esp
    push ecx
    push ebx
    push edx
    
    mov ebx, [ebp+8]        ;pA
    mov ecx, [ebp+12]       ;N
    mov edx, [ebp+20]       ;pB
        
    mov eax, [ebp + 8]
    cmp eax, 0
    mov eax,-1
    je .konec
    mov eax, [ebp + 20]
    cmp eax,0
    mov eax,-2
    je .konec

  .for:
    mov eax,[ebx + ecx*4]
    sub eax,[ebp+16]
    mov [edx + ecx*4],eax
    
    dec ecx
    cmp ecx,0
    jge .for

    mov eax, 0
  .konec:
    pop edx
    pop ebx
    pop ecx
    pop ebp
    ret