%include "rw32-2018.inc"

section .data
    ; zde budou vase data
    
section .bss
    pole resb 30

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov edi, pole
    mov ebx,29
    call ReadString
    mov esi, pole
    call PocetCislic
    
    call WriteInt32

    pop ebp
    ret
    
PocetCislic:
    push edi
    push esi
    push ebx
    mov eax,0
    
    cyklus:
    cmp [esi], byte 0
    je konec
    cmp [esi], byte "9"
    jg pokracovat        
    cmp [esi], byte "0" 
    jl pokracovat   ;pozor na to E !!!!
    inc eax     ;pokud je cislo zvetsim eax
    pokracovat:
    inc esi     ;posouvam na dalsi znak
    jmp cyklus
  
    konec:
    pop ebx
    pop esi
    pop edi
    
    ret