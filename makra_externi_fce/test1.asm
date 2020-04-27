%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov ecx, 4
    mov esi, 0
    call task31

    call WriteInt32

    pop ebp
    ret
    
task31:
    push ebp
    mov ebp, esp
    
    cmp ecx, 0
    jl vyjimka
    mov eax, 1
    cmp esi, 0
    jmp skip


vyjimka:
    cmp esi, 0
    je vyjimka2
    mov eax,2
    jmp skip
vyjimka2:
    mov eax, 3
skip:
    
    pop ebp
    ret