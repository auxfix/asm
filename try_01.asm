section .data
    fix_msg db 'Hello!', 0xA, 'Feel free to skip this message.', 0xA, 0xA
    fix_msg_lm equ $ - fix_msg

    i_told_so db 'bye', 0xA, 0xA
    i_told_so_lm equ $ - i_told_so

section .text
    global _start

_start:
    mov rbx, 0xC

.loop_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, fix_msg
    mov rdx, fix_msg_lm
    syscall

    dec rbx;
    jnz .loop_start

    mov rax, 1
    mov rdi, 1
    mov rsi, i_told_so
    mov rdx, i_told_so_lm
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall
