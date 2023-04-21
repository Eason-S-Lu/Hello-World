.section .data
msg:
    .ascii "Hello, world!\n"
    .align
msg_len = . - msg
.section .text
.globl _start
_start:
    ; write the message to stdout
    li a0, 4
    li a1, 1
    la a2, msg
    li a3, msg_len
    ecall
    ; exit with status code 0
    li a0, 10
    ecall