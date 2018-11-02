import re
import sys

def cmdLineHandler():
	argv = sys.argv
	# argument of the command
	cmd = {'h':0,	# help
		'f':0,	# from file
		'n':0,	# put null at the end of the shellcode
		'o':0,
		}
	for arg in argv:
		if arg[0] == '-':
			try:
				c = arg[1]
				cmd[c] += 1
			except:
				print "Invalid argument"
				return
	out = output()
	for key,value in cmd.items():
		if key == 'h'and value == 1:
			help()
		elif key == 'n' and value == 1:
			out += r'\x' + '00'
	

	print "The length of the shellcode: " + str(len(out)/4)
	print "Shellcode: "
	print out

def output():
	regexp = r'(?<=\s)[0-9a-f]{2}(?=\s)'
	input = sys.stdin.read()
	opcodes = re.findall(regexp, input)
	output = ""
	for opcode in opcodes:
		output += r'\x' + opcode
	return output

cmdLineHandler()
