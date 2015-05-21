section .text
	global _ft_isdigit

_ft_isdigit:
	mov rax, 0
	cmp rdi, 48
	js no
	cmp rdi, 58
	js yes

no:
	ret

yes:
	mov rax, 1
	ret
