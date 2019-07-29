BITS 64
global _ft_bzero

section .text

ALIGN 16
_ft_bzero:							; void	ft_bzero(void *s, size_t n);
	push rbp
	mov rbp, rsp

	mov rcx, rsi			; how many time should we repeat, rcx = n (rsi)
	xor al, al				; set al to 0

	rep stosb

	pop rbp
	ret