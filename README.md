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

## updates
![booting](https://lh3.googleusercontent.com/pw/AIL4fc9XjyYLlA9B97pSW-6i_qIPlXLhsoTVLvSqXQB70yYHIAfPnat3rCXu3RVSa_xAUOHunM9bRNjjjOHRn2Ekl9vzwF8viYuPmifGyp3_0FDTH1vM3-U1aNZx__ziNPhF4uBMHOmC4ZbZohVm8T3kWZnK7SFDrsJ5in051x-moj-y2IEYQP8_xyWkmo242bLiwggrlPvvTq16dW1nQpNleV-vBjydJ6Qn6IYOcIIz0YPDqUBQsHZS-5jYyCjysPg0yevespHpVOz4B4lPR2vrPyxXd9lOV8riWC3iwUJqbARCNX7h3ErvHOJrmBZgQIzatLQO6vGQFTfSXnCaZ_Hi9_GbE1voa_8M01x8pDfO_6Y9A3LnqC1_O3qWD42ngmse3VCBI0YtvB2WzSETQMhra919H4JUBA_fZm2dyZsztnsbLOENFrD9RXYqOMul_BDNQLNhp7oFqujQFdQZiFFSSTFUWA9zRlFXKrvdyk8EqtpfPDOJzi98_Exf9J7lB-1Y3Kn8wqQx9DZcMd3fof4HDNSZgQPKEueR0qRigQl4hFFDnF-Y1oueoMpBReMMRu-kyi3xjQLhGul0UQSna79iWAb-WDcHxtdE5gqAoEDTOraf2yVhTrXgTnwDkhmtDGGUjN_6RDkKmannE5AmZIyVGYQd-g_gLDzP6Yy1OalWNMzoC8Y7vuz_RBzWCtNUiyfl9w51FMU8dFhGkDCqzMKzmPmyxGrxRJRQcNgBfF8c9Ey1wZ6SAh0Bz4_g5-1YYcsq2nF_KD8okF77e4WAUYzDdczbFwOYZQv0Xo-Rs7snNbU3vsPj-byArr5hx7i2kVLo0xEs418a_odVHZi-yi_MFkOLZFmYkirqNY4t-NPvO8LKpLxJQCUWkokekwHatKeU_3ZMes4W6n2bGYDoFDRoWYKDYmMqb9Yz7D3Lr_gNSHHJpylfb29HRShyb6zMUg0uCVtsG_CqsqNjHmKrhp7YbNHdpEHUWRvcmQ=w1505-h963-s-no?authuser=0)
It didn't
