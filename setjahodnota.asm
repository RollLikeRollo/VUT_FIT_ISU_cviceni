%include "rw32-2018.inc"

section .data
    stejna db "stejna",10,0
    jina db "jina",10,0

section .text
_main:
    push ebp
    mov ebp, esp
    
    Call ReadInt32
    mov ebx,eax
    Call ReadInt32
    
    cmp eax,ebx
    
    je stejnajump
    
    mov esi, jina
    call WriteString
    pop ebp
    ret
    
stejnajump:

    mov esi,stejna
    call WriteString
    pop ebp
    ret
