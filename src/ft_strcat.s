BITS 64
global _ft_strcat

extern _ft_strlen

%define DEST	rdi
%define SRC		rsi

section .text
	mov r8, DEST
	mov r9, SRC
	call _ft_strlen
	mov xmm0, rax

	xor rax, rax
	mov rdi, r9
	
	call _ft_strlen
	mov xmm1, rax
	xor rax, rax
	

_ft_strcat:
