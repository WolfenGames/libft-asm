BITS 64
global _ft_putstr_fd

%define SYSCALL(x)	(0x2000000 | x)
%define WRITE		4

extern _ft_strlen

section .text

_ft_putstr_fd:
	call _ft_strlen
	mov rdx, rax
	push rsi
	mov rsi, rdi
	pop rdi
	mov rax, SYSCALL(WRITE)
	syscall
	ret
