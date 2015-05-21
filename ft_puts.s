%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

section .data
nl: db 10

section .text
	global _ft_puts
	extern _ft_strlen

_ft_puts:
	push rbp
	mov rbp, rsp
	
	push rdi
	call _ft_strlen
	mov rsi, rdi
	mov rdi, STDOUT
	mov rdx, rax
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	lea rsi, [rel nl]
	mov rdx, 1
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	pop rdi

	mov rsp, rbp
	pop rbp
	ret
