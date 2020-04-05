%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    
    call mojesuma
    call WriteNewLine
    call WriteInt32
    
    call mojesuma
    call WriteNewLine
    call WriteInt32

    pop ebp
    ret
    
mojesuma:
    push ebp
    mov ebp, esp
    
    sub esp, 12         ;vytvori misto pro 3 hodnoty
    
    call ReadInt32
    mov [ebp-4],eax
    call ReadInt32
    mov [ebp-8],eax
    call ReadInt32
    mov [ebp-12],eax
    
    mov eax,0
    add eax,[ebp-4]
    add eax,[ebp-8]
    add eax,[ebp-12]
    
    add esp,12          ;posune zasobnik zpet = zrusi lokalni promenne
    
    pop ebp
    ret