global _ft_isascii

section .text

_ft_isascii: ; int	ft_isascii(int c);

	cmp rdi, 0
	jl .isNotAscii

	cmp rdi, 127
	jg .isNotAscii

	jmp .isAscii

	.isAscii:
		mov rax, 1
		ret

	.isNotAscii:
		mov rax, 0
		ret
