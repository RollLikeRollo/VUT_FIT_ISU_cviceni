%include "rw32-2018.inc"

%macro vypiscislo 1
    push eax
    mov eax, %1
    Call WriteInt32
    call WriteNewLine
    pop eax
%endmacro


section .text
_main:
    push ebp
    mov ebp, esp
    
      mov eax, 50
    
    vypiscislo 666
    vypiscislo 63336
    
    call WriteInt32

    pop ebp
    ret