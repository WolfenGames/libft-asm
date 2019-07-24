global _ft_cat

extern _ft_puts

%define SYSCALL(x)	(0x2000000 | x)
%define READ		3
%define WRITE		4
%define BUFF_SIZE	0x100
%define STDOUT		1

section .text

ALIGN 16
_ft_cat:
	push rbp
	push rbx

	mov rbx, rdi 	;store fd
	.while:
		.read:
			mov rdi, rbx
			mov rsi, BUFF_SIZE
			mov rdx, BUFF_SIZE - 1
			mov rax, SYSCALL(READ)
			syscall
		.write:
			;call _ft_puts Would this work??
			mov rdi, STDOUT
			mov rsi, BUFF_SIZE
			mov rdx, rax
			mov rax, SYSCALL(WRITE)
			syscall

		jc .exit 		; exit if error
		test rax, rax	; Look for termiate
		je .exit
		jmp .while

	.exit:
		pop rbx	
		leave
		ret
