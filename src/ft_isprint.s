global _ft_isprint

section .text

_ft_isprint: ; int	ft_isprint(int c);

	cmp rdi, 31
	jle .isNotPrint

	cmp rdi, 127
	jge .isNotPrint

	jmp .isPrint

	.isPrint:
		mov rax, 1
		ret

	.isNotPrint:
		mov rax, 0
		ret
