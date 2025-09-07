precompile:
	for file in *.c; do gcc -E "$$file" -o "$${file%.c}.i"; done

compile: precompile
	gcc -fno-asynchronous-unwind-tables -S *.i

assemble: compile
	gcc -fno-asynchronous-unwind-tables -c *.s