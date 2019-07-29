BITS 64
global _ft_isalnum
extern _ft_isdigit
extern _ft_isalpha

section .text

_ft_isalnum:    ;int ft_isalnum(char rdi);
	call _ft_isdigit
	cmp rax, 1
	je .retTrue

	call _ft_isalpha
	cmp rax, 1
	je .retTrue

	jmp .retFalse

	.retTrue:
		mov rax, 1
		ret

	.retFalse:
		mov rax, 0
		ret
