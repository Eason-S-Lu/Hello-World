.section .data
msg:
    .ascii "Hello, world!\n"
    .align
msg_len = . - msg
.section .text
.global _start
_start:
    ; write the message to stdout
    mov r0, #1
    ldr r1, =msg
    mov r2, #msg_len
    mov r7, #4
    svc #0
    ; exit with status code 0
    mov r7, #1
    mov r0, #0
    svc #0