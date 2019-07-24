global _ft_strlen

section .text

_ft_strlen:
	; preserve in stack
	push rbp
		mov rbp, rsp
		push rdi

		; if (rdi == NULL)
		cmp rdi, 0
		je .ret_zero
		;	fill counter to max
		xor rcx, rcx ; reset count
		not rcx
		; set search value to '\0'
		xor al, al
		; set search direction to forward
		cld
		; keep searching through rbp for al
		repne scasb

		; get two's complement for counted value
		not rcx
		dec rcx
		; return (rax)
		mov rax, rcx
		jmp .end

		.ret_zero:
			; return (0)
			xor rax, rax
		.end:
			; replace from stack
			pop rdi
			mov rsp, rbp
	pop rbp
	ret
