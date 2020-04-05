%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    call ReadInt32
    push eax        ;treti parametr
    call ReadInt32
    push eax        ;druhy parametr
    call ReadInt32
    push eax        ;prvni parametr
    
    call Funkce
    add esp, 8      ;odstrani parametry
                    ;4* pocet parametru
    call WriteNewLine                
    call WriteInt32

    pop ebp
    ret

Funkce:
    push ebp        ;zalohuje dno sasobniku
    mov ebp, esp    ;vytvori nove dno zasobniku
    
    mov eax,0
    add eax,[ebp+8]     ;ebp je dne, ebp+4 je navratova adresa, ebp+8 je prvni parametr
    add eax,[ebp+12]    ;ebp+12 je druhy parametr
    add eax,[ebp+16]
    
    pop ebp
    ret