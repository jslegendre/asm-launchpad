output:
	@gcc -arch x86_64 -e _start -framework Foundation -framework ApplicationServices asm-lp.s -o asm-lp
