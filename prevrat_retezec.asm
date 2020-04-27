%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .bss

    string resb 4 ;3 bajty pro data, jeden ukoncovaci NULL

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov edi, string ;nacti string
    mov ebx, 3      ;omez delku stringu
    call ReadString ;read zw vstupu
    
    mov al,[string+0] ;nahraj prvni znak do al - 4 bajtovy
    mov bl,[string+2]   ;nahraj treti znak do bl
    mov [string+2],al   ;nahraj prvni znak do tretiho
    mov [string+0],bl     ;nahraj treti znak do prvniho

    mov esi,string
    call WriteString

    pop ebp
    ret