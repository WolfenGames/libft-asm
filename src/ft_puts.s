extern _ft_strlen

global _ft_puts

section .text

_ft_puts: ; void	ft_puts(char *rdi);
	; preserve rbp in stack
	push rbp
	mov rbp, rsp
		; put length of string into rax
		call _ft_strlen

		; write string
		mov rsi, rdi
		mov rdx, rax
		mov rdi, 1
		mov rax, 0x2000004
		syscall

		; write newline
		mov rdx, 1
		mov rax, 0x2000004
		lea rsi, [rel nl]
		syscall
	; replace rbp from stack
	mov rsp, rbp
	pop rbp
	ret

section .data
nl db 0x0a
