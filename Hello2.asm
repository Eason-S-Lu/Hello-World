.section .data
    msg: .ascii "Hello, world!\n"
.section .text
    .globl _start
_start:
    ; write the message to stdout
    movl $4, %eax
    movl $1, %ebx
    movl $msg, %ecx
    movl $13, %edx
    int $0x80
    ; exit with status code 0
    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80
