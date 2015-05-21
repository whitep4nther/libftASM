section .text
	global _ft_isprint

_ft_isprint:
	mov rax, 0
	cmp rdi, 32
	js no
	cmp rdi, 127
	js yes

no:
	ret

yes:
	mov rax, 1
	ret
