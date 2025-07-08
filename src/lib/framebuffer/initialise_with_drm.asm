
section .data

msg db "hi there!"
msglen equ $-msg
	
global _start
section .text




_start:

	mov rax, 0x1
	mov rdi, 0x1
	mov rsi, msg
	mov rdx, msglen
	syscall

	mov rax, 0x3c
	mov rdi, 0x0
	syscall
