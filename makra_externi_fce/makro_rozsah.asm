%include "rw32-2018.inc"

%macro MinMax 2
    cmp eax, %1
    jl %%Min
    cmp eax, %2
    jg %%Max
    jmp %%Konec
  %%Min:
    mov eax, %1
    jmp %%Konec
  %%Max:
    mov eax, %2
  %%Konec:
%endmacro

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadInt32
    MinMax 23, 100
    call WriteInt32

    pop ebp
    ret