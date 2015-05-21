section .text
	global _ft_isalpha

_ft_isalpha:
	mov rax, 0
	cmp rdi, 65
	js no
	cmp rdi, 91
	js yes
	cmp rdi, 97
	js no
	cmp rdi, 123
	js yes

no:
	mov rax, 0
	ret

yes:
	mov rax, 1
	ret
