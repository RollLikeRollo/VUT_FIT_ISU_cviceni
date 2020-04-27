%include "rw32-2018.inc"

%macro vypis 1
    jmp %%skip
    %%name db %1,10,0
    %%skip:
    push esi
    mov esi, %%name
    call WriteString
    pop esi
%endmacro

section .text
_main:
    push ebp
    mov ebp, esp
    
    vypis "Karel je kokot"
    vypis "Nechcu programovat IZG"
    
    call ReadInt32
    mov ebx,eax
    call ReadInt32
    
    cmp eax,ebx
    jg eaxvetsi
    vypis "Prvni je vetsi"
    jmp konec
    eaxvetsi:
    vypis "Druhe je vetsi"
    konec:
    pop ebp
    ret