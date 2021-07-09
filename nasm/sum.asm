
section .data
    msg db "%d",0x0A

section .text
    global _start
    extern printf

_start:
    xor rsi,rsi
    mov rcx,100

b1:
    cmp rcx, 0
    je  b2
    add rsi, rcx
    sub rcx, 1
    jmp b1
b2:
    mov rdi, msg
    call printf
    syscall
    mov rax, 60
    mov rdi, 0
    syscall
