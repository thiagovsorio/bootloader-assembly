all: assemble-it

assemble-it:
	nasm -f bin ./boot.asm -o boot.bin