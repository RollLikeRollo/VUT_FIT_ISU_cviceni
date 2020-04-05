%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov eax, 10
    call NasobeniDvema
    call WriteInt32
    
    call NasobeniDvema
    call WriteInt32
    
    mov eax, 60
    mov ebx, 70
    call Maximum
    call WriteInt32
    
    call WriteNewLine
    
    mov edx, 55         ;nasobenim se edx ztrati
    call ReadInt32
    call Mocnina
    call WriteInt32
    
    call WriteNewLine
    mov eax,edx
    call WriteInt32
    
    pop ebp
    ret
    
NasobeniDvema:
    
    add eax, eax
    
    ret
    
Maximum:        ;dva vstupy eax a ebx a v eax vrati vetsi cislo
    cmp eax,ebx
    jg vetsi
    mov eax,ebx
    vetsi:
    ret
    
Mocnina:        ;udela mocninu dvojky , pozor na ukladani vysledku do eax a edx  
    push edx            ;aby se nezmenilo edx, musim zalohovat registry
    
    imul eax
    
    pop edx

    ret