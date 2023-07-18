all: assemble-it
	dd if=./file_to_load.txt >> ./boot.bin
	dd if=/dev/zero bs=512 count=1 >> ./boot.bin

assemble-it:
	nasm -f bin ./boot.asm -o boot.bin