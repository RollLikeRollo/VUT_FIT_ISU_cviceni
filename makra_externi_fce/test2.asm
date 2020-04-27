%include "rw32-2018.inc"


section .text
_main:
    push ebp
    mov ebp, esp
    
    mov ebx,1
    push ebx
    call ReadFloat
    push eax
    call ReadFloat
    push eax
    call task32
    add esp,12

    pop ebp
    ret
    
task32:
    push ebp
    mov ebp, esp

    
    fldz
    fld dword [ebp + 12]  ; y
    fcomi st1
    je err
    fld dword [ebp + 8]  ; x
    fcomi st2
    je err
    
    fxch st1   
    fsqrt
    fmul st1
    
    
    fld1
    fadd st0
    fldpi
    fmul st1
    fmul dword [ebp + 8]
    push __float32__(4.0)
    fld dword[ebp - 4]
    fadd
    fsin
    
    push __float32__(41.0)
    fld dword[ebp - 8]
    push __float32__(5.825)
    fld dword[ebp - 12]
    
    fmul dword [ebp + 12]
    fxch st5
    fsub st5
    
    fabs
    fdiv st1
    fsub st2
    
    fxch st4
    fcomi st4
    fxch st4
    fdiv st4
    
    mov eax ,[ebp + 16]
    mov [eax], dword 0
    jmp skip
    
    
err:
    mov eax ,[ebp + 16]
    mov [eax], dword 1
    push dword 0b1111111110000000000000000000000
    fld dword[ebp - 4]

   
skip:
    
    mov esp,ebp

    pop ebp
    ret