SECTION .data
sum: DD 0
val: DD 25

SECTION .text
global _start

_start:
        mov eax, 0
        inc eax
        add eax, 200
        sub eax,[val]
        mov [sum], eax
        dec DWORD [sum]
        neg DWORD [sum]

        mov eax, 1
        mov ebx, 0
        int 80h
