global _ft_strdup

extern _ft_strlen
extern _malloc
extern _ft_memcpy

section .text

_ft_strdup:
	push rbp
		mov rbp, rsp

		push rdi ;save string ptr
			call _ft_strlen
			push rax
				mov rdi, rax
				call _malloc
			pop rdx
			inc rdx
			mov rdi, rax
		pop rsi ;push string ptr
		push rax
			call _ft_memcpy
		pop rax

		mov rsp, rbp
	pop rbp
	ret
