global _ft_clamp

section .text

_ft_clamp: ; (min, max, val)
	; mov rax, rdi
	; clc
	; sub rdi, rdx ;small
	; 	cmp rdi, 0
	; 	jge .exit

	; mov rax, rsi
	; sub rsi, rdx ;big
	; 	cmp rdi, 0
	; 	jl .exit

	; mov rax, rdx
	; .exit:
	; 	ret

	mov r8, rdx
	sub r8, rdi
	and r8, 0x80000000
	cmp r8, 0
	jne .below_min

	mov r8, rdx
	sub r8, rsi
	and r8, 0x80000000
	cmp r8, 0
	je .above_max

	mov rax, rdx
	jmp .exit
	.below_min:
		mov rax, rdi
		jmp .exit
	.above_max:
		mov rax, rsi
		jmp .exit

	.exit:
	ret