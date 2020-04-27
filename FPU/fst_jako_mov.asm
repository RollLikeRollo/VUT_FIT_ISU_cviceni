%include "rw32-2018.inc"

section .data
    var dq 1.4

section .text
_main:
    push ebp
    mov ebp, esp
    
    fldpi
    fst qword [var]     ;presune PI do var      ;v debuggeru typ float, musi sedet qword/dword...
    
    fstp qword [var]        ;vymaze P=pop z registru st*

    pop ebp
    ret