SECTION .data

decimalLiteral: DB 31
hexLiteral:     DD 0Fh
charLiteral:    DB 'A'

stringLiteral:
        DB "This is a string that", 0ah
        DB "has a line break in it.", 0
lenString: EQU ($ - stringLiteral)

SECTION .bss
unInitVariable: RESD 1

SECTION .text
global _start

_start:

partOne: mov eax, 10
add eax, hexLiteral

partTwo:
inc eax

mov eax, 1
mov ebx, 0
int 80h
