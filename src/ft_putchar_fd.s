BITS 64
global _ft_putchar_fd

%define BUFFSIZE	1
%define SYSCALL(x)	(0x2000000 | x)
%define WRITE		4

section .text

_ft_putchar_fd:

	push rdi
	mov rdi, rsi
	mov rsi, rsp
	mov rdx, BUFFSIZE
	mov rax, SYSCALL(WRITE)
	syscall
	pop rdi
	
	ret
