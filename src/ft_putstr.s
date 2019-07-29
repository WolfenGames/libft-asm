global _ft_putstr

section .text

extern _ft_putstr_fd

_ft_putstr:
	mov rsi, 1
	call _ft_putstr_fd
	ret
