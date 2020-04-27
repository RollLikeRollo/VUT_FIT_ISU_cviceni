%include "rw32-2018.inc"

section .data
    x dd 0
    y dd 0
    vrch dd 0

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadInt16
    mov ebx,eax
    mov [x],eax
    call ReadInt16
    mov [y],eax
    
   cmp ebx,eax
   je konec
    
    mul ebx
    shl edx,16
    mov dx,ax
    mov eax,edx
    
    mov ecx,4
    mul ecx
    shl edx,16
    mov dx,ax
    mov eax,edx
    mov [vrch],eax
    
    mov eax,[x]
    mov ebx,[y]
    
    sub eax,ebx
    
    cmp eax,0
    jge if
    
    neg eax
if:
    mov ebx,[vrch]
    xchg eax,ebx

    mov ax, dx 
    sar edx, 16
    idiv ebx
    
    call WriteInt32
    
    
konec:
    pop ebp
    ret