.PHONY: build clean

all: build

CC=i386-elf-gcc
LD=i386-elf-ld


build:
		$(NASM) kernel_entry.asm -f elf -o kernel_entry.o
		$(CC) -ffreestanding -c kernel.c -o kernel.o
		$(LD) -o kernel.bin -Ttext 0x1000 kernel_entry.o kernel.o --oformat binary

clean:
		rm *.o
		rm *.bin
