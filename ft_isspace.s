section .text
	global _ft_isspace

_ft_isspace:
	mov rax, 0
	cmp rdi, 9
	je yes
	cmp rdi, 13
	je yes
	cmp rdi, 32
	je yes

no:
	ret

yes:
	mov rax, 1
	ret
