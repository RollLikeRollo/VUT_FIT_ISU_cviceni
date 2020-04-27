%include "rw32-2018.inc"

section .data
   pole dd 2,5,9,1,-22,7777,66,-89,9,-26,-224,-99999

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov ecx, 12         ;pocet prvku pole
    mov esi, pole
    
    push ecx
    push esi
    call GetMax
    add esp,8
    
    call WriteInt32

    pop ebp
    ret
    
GetMax:
    push ebp
    mov ebp, esp
    push ecx
    push esi
    
    mov ecx, [ebp + 12]
    mov eax, [esi + ecx*4]
  .for:
    cmp eax,[esi + ecx*4]
    jg .jump
    mov eax, [esi + ecx*4]
  .jump:
    dec ecx

    cmp ecx,0
    jg .for
    
    pop esi
    pop ecx
    pop ebp
    ret