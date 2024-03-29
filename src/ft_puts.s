BITS 64
extern _ft_strlen

%define WRITE	0x2000004
%define STDOUT	1

global _ft_puts

section .text

_ft_puts: ; void	ft_puts(char *rdi);
	; preserve rbp in stack
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	je .null
	jmp .notnull
	.null:
		lea rdi, [rel msg]

	.notnull:
		; put length of string into rax
		call _ft_strlen

		; write string
		mov rsi, rdi
		mov rdx, rax
		mov rdi, STDOUT
		mov rax, WRITE
		syscall

		; write newline
		mov rdx, STDOUT
		mov rax, WRITE
		lea rsi, [rel nl]
		syscall
	; replace rbp from stack
	mov rsp, rbp
	pop rbp

	ret


section .data
nl	db	0x0a
msg db	"(null)"
