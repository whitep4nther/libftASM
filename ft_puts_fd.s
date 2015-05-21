%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

section .data
nl: db 10

section .text
	global _ft_puts_fd
	extern _ft_strlen

_ft_puts_fd:
	push rbp
	mov rbp, rsp
	
	mov rbx, rsi
	call _ft_strlen
	mov rsi, rdi
	mov rdi, rbx
	mov rdx, rax
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	jc end
	lea rsi, [rel nl]
	mov rdx, 1
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	jc end

end:
	mov rsp, rbp
	pop rbp
	ret
