section .text
	global _ft_isascii

_ft_isascii:
	mov rax, 0
	cmp rdi, 0
	js no
	cmp rdi, 128
	js yes

no:
	ret

yes:
	mov rax, 1
	ret
