section .data
    message db 'Hello, world!',0xa
    len equ $-message

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, message
    mov edx, len
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80