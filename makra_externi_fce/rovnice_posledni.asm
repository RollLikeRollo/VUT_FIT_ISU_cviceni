%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadDouble      ; 1. vstup = 
    push eax
    call ReadDouble      ;   2. vstup = 2. parametr
    push eax
    call ReadDouble      ;   3. vstup = 1. parametr
    push eax
    
    
    call Dostrel
    add esp,12
    
    call WriteDouble
    
    pop ebp
    ret

;float dostrel (float v, float g, float sigma)
Dostrel:
push ebp
    mov ebp, esp
    
    ;st0 sigma
    ;st1 g
    ;st2 v
    
    fxch st0, st2
    fmul st0
    fdiv st1
    
    ;st0 (v*v)/g
    ;st1 g
    ;st2 sigma
    
    fxch st0, st2
    fadd st0
    fsin
    
    ;st0 (v*v)/g
    ;st1 g
    ;st2 sin (sigma*2)
    
    fmul st2
    
    fstp st1
    fstp st1        ; cistka registru

    
    pop ebp
    ret
