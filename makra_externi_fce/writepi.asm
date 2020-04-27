%include "rw32-2018.inc"
extern _printf


section .data
    text_ptr db "%02d * pi = %f",10,0
    pi dq 0.0
    cislo dq 0.0
section .text
_main:
    push ebp
    mov ebp, esp
    
    mov ecx,1
    
  loop:  
    push ecx

    fild dword[esp]
    fldpi
    fmulp
    sub esp,8    
    fstp qword[esp]
    push ecx
    push text_ptr
    call _printf
    add esp, 16
    pop ecx
    
    call WriteNewLine
    
    inc ecx
    cmp ecx, 10
    jbe loop

    pop ebp
    ret