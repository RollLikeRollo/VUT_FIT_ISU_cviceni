%include "rw32-2018.inc"

section .data
    var dq -3.0
    varr dq 6.0
    vysl dw 0.0

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadFloat
    push eax
    call func
    add esp,4
    
    call WriteFloat

    pop ebp
    ret

func:
    push ebp
    mov ebp, esp
    
    fld dword [ebp+8]
    
    fldpi
    fmul st1
    fmul qword[var]
    fadd qword[varr]
    fcos
    
    fld dword [ebp+8]
    fmul dword [ebp+8]
    fmul dword [ebp+8]
    
    fabs
    
    fldz
    fcomip
    je konec
    
    fxch st1
    
    fdiv st1
    
    fst dword[vysl]
  konec:
    mov eax,[vysl]
    
    finit
    pop ebp
    ret