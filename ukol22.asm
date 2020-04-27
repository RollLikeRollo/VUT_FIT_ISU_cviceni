%include "rw32-2018.inc"

section .data
    pA dd 1,2,66,4,66,7,8
    N dd 8
    x dd 66

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov eax, [x]
    push eax
    
    mov eax, [N]
    push eax
     
    push pA
    
    call task22
    

    pop ebp
    ret
    
task22:
    push ebp
    mov ebp, esp
    push ebx
    push edx
    push edi
    
    mov eax,0
    mov edi, [ebp+8]
    cmp edi, 0
    je end

    mov ebx, [ebp+12]
    cmp ebx,0
    jle end
    
    mov ebx,[ebp+12]
  cyc:
    cmp ebx,0
    je cend
    dec ebx
    
    
    mov edx, [edi+ebx*4]
    cmp edx, [ebp+16]
    mov eax, [edi + ebx*4]
    je end
    jmp cyc
  cend:
    mov eax,0
  end:

    pop edi
    pop edx
    pop ebx
    pop ebp
    ret 12