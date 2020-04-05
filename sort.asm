%include "rw32-2018.inc"

section .data
    pA dw 12,15,54,22,25,989,112
    N dd 7

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov esi, pA
    mov eax,[N]
    
    push esi
    push eax
    call sort
    add esp,8

    pop ebp
    ret
    
sort:
    push ebp
    mov ebp, esp
    
    mov ecx, [ebp+8]        ;N
    mov esi, [ebp+12]       ;pA
    
    mov eax, 0  ;i
  .for1:
    cmp eax, ecx
    je .end
    
    mov ebx,eax; j= i
    inc ebx ;j=i+1
    .for2:
         cmp ebx,ecx
         je .for2e
         
         mov dx, [esi+ebx*2]
         cmp [esi+eax*2],dx
         jge .no
         
         mov dx, [esi+eax*2]
         xchg dx, [esi+ebx*2]
         mov [esi+eax*2], dx
         
         .no:
         inc ebx
         jmp .for2
    .for2e:
    inc eax   
    jmp .for1
    
  .end:
    pop ebp
    ret