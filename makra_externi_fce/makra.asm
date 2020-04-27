%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text

%macro mojemakro 0
    mov eax, 100
    xor ebx,ebx
    xor ecx,ecx
    xor edx,edx
%endmacro 
_main: 
    push ebp
    mov ebp, esp
    
    mov eax,777
    mojemakro
    
    call WriteInt32

    pop ebp
    ret