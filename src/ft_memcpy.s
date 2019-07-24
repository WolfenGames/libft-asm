global _ft_memcpy

section .text

_ft_memcpy: ; ft_memcpy(void *rdi, void *rsi, size_t rdx)
	cmp rdx, 0				; Look for NULL
	jz .ret_exit_null		; Jumping to null

	mov rcx, rdx			; Mov RDX -> rcx
	mov rax, rsi			;Mov RSI -> RAX

	cld
	rep	movsb				; Repeat MovsByte Faster than Mov

	jmp .ret_exit

	.ret_exit_null:
		mov rax, rdi		; set the return
		jmp .ret_exit		; jump to exit

	.ret_exit:
		ret
