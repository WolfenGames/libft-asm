global _ft_isdigit

section .text

_ft_isdigit:    ;int ft_isdigit(int rdi);
    cmp rdi, '0'
    jl .false
    cmp rdi, '9'
    jg .false
    jmp .true
    
    jmp .true
    .true:
    mov rax, 1
    jmp .exit
    .false:
    mov rax, 0
    jmp .exit
    .exit:
    ret