%include "rw32-2018.inc"

section .data
    pole db "Nazdar   lidi, jak je?",0

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov esi,pole
    call WriteString
    push pole
    call del_spaces
    add esp,4

    mov esi,pole
    call WriteString

    pop ebp
    ret

del_spaces:
    push ebp
    mov ebp, esp
    push edi
    push esi
    
    mov edi,[ebp+8]
    mov esi,[ebp+8]
    
    mov eax,-1
    cmp edi,0
    je .end

  .skip:
        
    lodsb       ;ulozi esi do al, inkrementace esi
    
    cmp al, ' '
    je .skip
    
    stosb       ;ulozi z al do edi, inkrementace edi
    cmp al,0
    je .konec
    jmp .skip
.konec:   
    mov esi,edi

    mov eax,0
.end:
    pop esi
    pop edi          
    pop ebp
    ret