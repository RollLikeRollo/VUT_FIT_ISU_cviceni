%include "rw32-2018.inc"

section .data
    pole db "Nazdar   lidi, jak je?",0

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov edi, pole
    call count_spaces
    call WriteInt32
    
    pop ebp
    ret

count_spaces:
    push ebp
    mov ebp, esp
    push edi
    push ebx
    
    mov ecx,0
    mov eax,-1
    
    cmp edi,0
    je .skip
    
    mov ebx,0

  .c:  
    cmp [edi], byte ' '
    jne .sk
    inc ebx
  .sk:   
    mov al, 0
    scasb
    jne .c

    mov eax, ebx
.skip:  
    
    pop ebx
    pop edi          
    pop ebp
    ret   
    
    ;scasb