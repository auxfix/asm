section .data
    msg db 'Hello!', 0xA, 'Feel free to skip this message.', 0xA, 0xA
    msg_lm equ $ - msg

    msg_02 db 'bye', 0xA, 0xA
    msg_02_lm equ $ - msg_02

section .text
    global _start
    extern print_msg

_start:
    mov rdi, msg
    mov rsi, msg_lm
    call print_msg

    mov rdi, msg_02
    mov rsi, msg_02_lm
    call print_msg


    mov rax, 60
    xor rdi, rdi
    syscall
