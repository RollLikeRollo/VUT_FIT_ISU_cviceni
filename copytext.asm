%include "rw32-2018.inc"

section .data
    login db "xzbori20",0
    pole db "yhofinasdw",0

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov esi,login
    mov edi,login+2
    call ReadInt32
    mov ecx,eax
    
    push ecx
    call copy_text
    add esp,4

    mov esi,login
    call WriteString
    call WriteNewLine
    mov esi,pole
    call WriteString
    
    pop ebp
    ret
    
copy_text:
    push ebp
    mov ebp, esp
    push esi
    push edi
    push ecx
 
    mov eax,-1   
    cmp esi,0
    je .skok
    cmp esi,0
    je .skok
    cmp ecx,0
    mov eax,0
    je .skok

    mov ecx, [ebp + 8]
    
    
    cmp esi,edi
    ja .skip
    std
    dec ecx
    add esi,ecx
    add esi,ecx 
    inc ecx
.skip:
    rep movsb
        
    mov eax,0
.skok:
    cld
    pop ecx
    pop edi
    pop esi
    pop ebp
    ret