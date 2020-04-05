%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadInt32
    push eax
    call ReadInt32
    push eax
    call ReadInt32
    push eax
    
    call MaxIndex
    
    add esp,12      ;mazani hodnot
    
    call WriteNewLine
    call WriteInt32

    pop ebp
    ret

MaxIndex:
    push ebp
    mov ebp, esp
    
    mov eax,[ebp+8]
    mov ebx,[ebp+12]
    mov ecx,[ebp+16]
    
    cmp eax,ebx
    jl bGreater  
    cmp eax,ecx
    jl cGreater
    mov eax,1
    jmp konec
bGreater:
     cmp ebx,ecx
     jl cGreater
     mov eax, 2
     jmp konec
cGreater:
    mov eax,3    
konec:   
        
    pop ebp
    ret