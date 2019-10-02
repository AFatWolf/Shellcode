Each directory contains the shellcode for particular architecture.
The shellcode_tester.c is a file for testing purpose.  
The opex.py is an opcode extractor from objdump -D command. Use it as follow:  
`objdump -D ./file | python opex.py`  
Good luck!
