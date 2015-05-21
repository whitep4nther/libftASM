section .text
	global _ft_strchr

_ft_strchr:
	push rdi

loop:
	mov bl, byte[rdi]
	cmp bl, sil
	je found
	cmp byte[rdi], 0
	je not_found
	inc rdi
	jmp loop

found:
	mov rax, rdi
	jmp end

not_found:
	mov rax, 0
	jmp end

end:
	pop rdi
	ret
