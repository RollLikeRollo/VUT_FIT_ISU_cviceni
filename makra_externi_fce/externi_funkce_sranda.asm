%include "rw32-2018.inc"

extern _rand
extern _srand
extern _time
section .data
    count dd 0
section .text
_main:
    push ebp
    mov ebp, esp
    
    push 0
    call _time      ; time(NULL)
    add esp,4
    push eax
    call _srand     ; srand(unsigned)time(NULL)
    add esp, 4
    
    call ReadInt32
    push eax
    call printrandom    ; vypis
    add esp,4

    pop ebp
    ret
    
printrandom:
    push ebp
    mov ebp, esp
    pusha
    mov [count],eax
    
    loop:
        
        call _rand
    
        call WriteInt32
        call WriteNewLine
        mov ecx,[count]
        dec ecx
        mov [count],ecx
    jg loop

    popa
    pop ebp
    ret