BITS 64
global _ft_putchar

extern _ft_putchar_fd

_ft_putchar:
	mov rsi, 1
	call _ft_putchar_fd
	ret
