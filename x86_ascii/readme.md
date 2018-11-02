Assemble and Link with following instructions:
nasm -f elf32 shellcode.asm
ld -o shellcode shellcode.o -m elf_i386
Compile the shellcode_tester.c with following command:
gcc -m32 -z execstack -fno-stack-protector -o test shellcode_tester.c
The opcode havent changed the \xcd\x80 bytes which are unprintable
If you can overflow the ebp with the address of where the shellcode is, you can write a polymorphic shellcode
