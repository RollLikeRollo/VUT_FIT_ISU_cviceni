%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadInt16
    mov bx,ax
    
    call ReadInt16
    
    cmp ax,bx
    je konec
    jl vymen
    jae pokracuj

pokracuj:        
    mov cx,ax
    sub cx,bx
       
    imul bx
    
    shl edx,16
    mov dx,ax
    mov eax,edx
    
    mov dx,4
    imul dx

    ;deleni zbavit se vrchni casti edx
    
    idiv cx
    
    shl edx,16
    mov dx,ax
    mov eax,edx
    
    call WriteNewLine
    call WriteInt16
    jmp konec
    
vymen:
    mov dx,ax
    mov ax,bx
    mov bx,dx
    jmp pokracuj
    
konec:

    pop ebp
    ret