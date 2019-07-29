BITS 64
global _ft_memset

section .text

ALIGN 16
_ft_memset:							; void	*ft_memset(void *s, char val, size_t n);
	xor rax, rax
	push rdi

	mov rax, rsi
	mov rcx, rdx
	cld
	
	rep stosb
	pop rax
	ret