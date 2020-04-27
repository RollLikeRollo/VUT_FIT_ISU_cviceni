%include "rw32-2018.inc"

section .data
    promenna1 dd 1.0
    promenna2 dq 2.2
    promenna3 dt 4.4

section .text
_main:
    push ebp
    mov ebp, esp
    
    fld dword [promenna1]      ;nahraje do registru - musime zadat velikost
    fld qword [promenna2]
    fld tword [promenna3]
    
    fldz        ;nacte 0
    fld1        ;nacte 1
    fldpi       ;nacte PI
    

    pop ebp
    ret