%include "rw32-2018.inc"

section .data
    CONST dd 0.5
    Y dd 1.0
    X dd 0.0

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadDouble
    call odmocnina
    call WriteDouble

    pop ebp
    ret
    
odmocnina:
    push ebp
    mov ebp, esp
    
    mov ebx, 0
    mov eax, 100
    fst dword [X]
    
    do_while:
    fld dword [X]
    fdiv dword [Y]
    fadd dword [Y]
    fmul dword [CONST]
    fst dword [Y]
    dec eax
    cmp eax, ebx
    fstp st1
    jne do_while
    end:

    pop ebp
    ret