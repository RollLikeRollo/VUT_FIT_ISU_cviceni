%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadInt32
    mov ebx,eax
    call ReadInt32
    cmp ebx,eax
    jg end
    xchg ebx,eax
while:
    call WriteInt32
    call WriteNewLine
    inc eax
    cmp eax,ebx
    jle while
end:
    pop ebp
    ret