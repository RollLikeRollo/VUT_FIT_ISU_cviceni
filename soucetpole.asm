%include "rw32-2018.inc"

section .data
    pole1 dw 1,2,3,4,5
    pole2 dw 11,12,13,14,15
    
section .bss
    poles resw 5

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov ebx,0
    
while:
    mov ax,[pole1 + ebx]   
    add ax,[pole2 + ebx]
    mov [poles + ebx],ax
    call WriteInt32
    call WriteNewLine
    
    add ebx,2
    cmp ebx,10
    jl while

    pop ebp
    ret