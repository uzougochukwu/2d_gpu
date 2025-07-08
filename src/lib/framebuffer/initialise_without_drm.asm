	; lspci -vvvv shows that VGA compatible controller: Intel Corporation JasperLake [UHD Graphics]
	; has I/O ports at 0x3000

	
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

	mov eax, 0x1
	out 0x3000, eax

	mov rax, 0x3c
	mov rdi, 0x0
	syscall
