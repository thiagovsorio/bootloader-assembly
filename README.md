# Bootloader/assembly
This repo will be a working bootloader that I am working on.
Right now (July 10, 2023) doing the Hello World's equivalent for bootloaders.

Inspired by this video: [I made an entire OS that only runs Tetris](https://youtu.be/FaILnmUYS_U)

And also by seeing my progress in my understanding of Linux's bootloader.
I've decided to do something similar myself!
I tried to dissect it and... 
#### What am I seeing? Did I expect to magically understand assembly?

So I am taking this course: [Developing a Multithreaded Kernel From Scratch!](https://www.udemy.com/course/developing-a-multithreaded-kernel-from-scratch/)
While seeing complementary resources for assembly.

I will get at least to the point where I can run my compiled C code.

And then, let the fun begin.
It will be harsh, so... nice.

## Examples of how to run things (Ubuntu only for now)
For assembling for the Intel x86 architecture:
```
sudo apt install nasm
sudo apt install qemu-system-x86
```
Then run:
```
nasm -f bin boot-message.asm -o boot-message.bin
```
For emulating "BIOS":
```
qemu-system-x86_64 -hda boot-message.bin
```