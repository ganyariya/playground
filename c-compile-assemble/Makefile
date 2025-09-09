precompile:
	for file in *.c; do gcc -E "$$file" -o "$${file%.c}.i"; done

compile: precompile
	gcc -g3 -O0 -fno-asynchronous-unwind-tables -S *.i

assemble: compile
	gcc -g3 -O0 -fno-asynchronous-unwind-tables -c *.s