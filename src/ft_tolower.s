global _ft_tolower

section .text

_ft_tolower: ; int ft_tolower(int rdi);

	cmp rdi, 65
	jl .end
	cmp rdi, 90
	jg .end

	jmp .makeLower

	.makeLower:
		add rdi, 32

	jmp .end

	.end:
		mov rax, rdi
		ret
