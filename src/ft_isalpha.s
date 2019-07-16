global _ft_isalpha

section .text

_ft_isalpha:    ;int ft_isalpha(char rdi);
    cmp rdi, 'A'
    jl .false
    cmp rdi, 'Z'
    jg .cmp_lower
    jmp .true

    .cmp_lower:
    cmp rdi, 'a'
    jl .false
    cmp rdi, 'z'
    jg .false
    
    jmp .true
    .true:
    mov rax, 1
    jmp .exit
    .false:
    mov rax, 0
    jmp .exit
    .exit:
    ret