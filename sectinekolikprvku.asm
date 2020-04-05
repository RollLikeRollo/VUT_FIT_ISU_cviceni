%include "rw32-2018.inc"

section .data
    pole dd 1,2,3,4,5,6,7,8,9,10
    pole2 dd 1,1,1,1,1,1,1,1,1,1
    pole3 dd 1,2,4,8,16,32,64,128,256,512
    
section .bss

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov esi, pole
    call ReadInt32
    call Secti
    call WriteInt32
    call WriteNewLine
    
     mov esi, pole2
    call ReadInt32
    call Secti
    call WriteInt32
    call WriteNewLine
    
    mov esi, pole3
    call ReadInt32
    call Secti
    call WriteInt32
    call WriteNewLine
   

    pop ebp
    ret

Secti:          
    push ecx
    push ebx
    push esi
    
    mov ecx, eax    ;ecx je pocet prvku
    mov ebx, 0      ;pocitadlo
    mov eax,0       ;soucet
    while:
    add eax,[esi+ebx*4]
    add ebx,1
    cmp ebx,ecx
    jl while
    
    pop ecx
    pop ebx
    pop esi
    ret
    