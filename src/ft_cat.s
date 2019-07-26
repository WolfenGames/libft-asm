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
	; sub rsp, BUFF_SIZE
	; sub rsp, 8

	jmp .while

	.while:
		jmp .read
		.read:
			mov rdi, rbx
			mov rsi, rsp
			mov rdx, BUFF_SIZE - 1
			mov rax, SYSCALL(READ)
			syscall
		
		jc .exit 		; exit if error
		test rax, rax	; Look for termiate
		je .exit

		.write:
			mov rdi, STDOUT
			mov rsi, rsp
			mov rdx, rax
			mov rax, SYSCALL(WRITE)
			syscall

		jmp .while

	.exit:
		; add rsp, BUFF_SIZE
		; add rsp, 8
		pop rbx	
		leave
		mov rax, BUFF_SIZE
		ret
