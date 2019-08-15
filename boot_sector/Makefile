.PHONY: build clean

all: build

NASM=nasm

build:
	$(NASM) boot_sector.asm -f bin -o boot_sector.bin

clean:
	rm *.bin