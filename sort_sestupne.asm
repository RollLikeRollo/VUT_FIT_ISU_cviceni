%include "rw32-2018.inc"


section .data
    pA dw 12,15,54,22,25,989,112
    N dd 7

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov esi, pA
    mov ecx,[N]
    

    call sort


    pop ebp
    ret
    
sort:
    push ebp
    mov ebp, esp
    
    push edi
    push esi
    push edx
    push ecx
    push ebx

    
    ;ecx = N
    ;esi = ukazatel nap pole
    
    
    push edi
    push esi
    push edx
    push ecx
    push ebx

    CEXTERN  malloc
    push ecx
    call malloc
    add esp,4
    

    pop ebx
    pop ecx
    pop edx
    pop esi
    pop edi
    
    mov edi,eax     ;v edi je nove pole
    
    
    mov eax, 0  ;i
  for1:
    cmp eax, ecx
    je end
     
    mov ebx,eax; j= i
    inc ebx ;j=i+1
    for2:
         cmp ebx,ecx
         je for2e
         
         mov dl, [esi+ebx]
         cmp [esi+eax],dl
         jge no
         
         mov dl, [esi+eax]
         xchg dl, [esi+ebx]
         mov [esi+eax], dl
         
         no:
         inc ebx
         jmp for2
   for2e:
    inc eax   
    jmp for1
       
  end:
    mov edi,esi
    mov eax,edi
    

    pop ebx
    pop ecx
    pop edx
    pop esi
    pop edi
    
    pop ebp
    ret