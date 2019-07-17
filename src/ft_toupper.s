global _ft_toupper

section .text

_ft_toupper: ; int ft_toupper(int rdi);

	cmp rdi, 97
	jl .end
	cmp rdi, 122
	jg .end

	jmp .makeUpper

	.makeUpper:
		sub rdi, 32

	jmp .end

	.end:
		mov rax, rdi
		ret
