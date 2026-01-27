section .text
    global print_msg

print_msg:
    mov rdx, rsi
    mov rsi, rdi
    mov rax, 1
    mov rdi, 1
    syscall

    ret
