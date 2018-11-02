#include <stdio.h>
#include <stdlib.h>

void func(){
	printf("Not fun\n");
}

int main(){
	char shellcode[300];
	read(0,shellcode,300);
	void (*f)() = (void(*)())&shellcode;
	f();
}
