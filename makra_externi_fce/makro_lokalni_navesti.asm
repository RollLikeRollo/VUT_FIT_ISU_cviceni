%include "rw32-2018.inc"

%macro absolut 0
    cmp eax, 0
    jns %%skip
    neg eax
    %%skip
%endmacro

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadInt32
    
    absolut
    
    call WriteInt32
    call WriteNewLine
    call ReadInt32
    
    absolut
    
    call WriteInt32

    pop ebp
    ret