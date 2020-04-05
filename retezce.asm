%include "rw32-2018.inc"

section .bss

    misto resb 10

section .data
    
    var db "HELL, world!", 10, 0  ;delat vzdy s db - 8 bit
                                  ;ASCII 10 je koec radku
                                  ;ASCII 0 je konec retezce
section .text
_main:
    push ebp
    mov ebp, esp
    
    mov esi, var
    call WriteString
    
    mov edi, misto
    mov ebx, 9
    call ReadString

    pop ebp
    ret