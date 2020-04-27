%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
   call ReadDouble
   fsqrt        ;odmocnina
   call WriteDouble
   fabs
   ;fsin        ;pocita v radianech
   ;fcos

    pop ebp
    ret