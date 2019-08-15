.PHONY: build clean

all: build

CC=i386-elf-gcc
LD=i386-elf-ld


build:
		@echo "Building..."
		@cd boot_sector && $(MAKE) $@
		@cd kernel && $(MAKE) $@
		@cat boot_sector/bootsect.bin kernel/kernel.bin > os-image.bin

clean:
		@echo "Cleaning..."
		@cd boot_sector && $(MAKE) $@
		@cd kernel && $(MAKE) $@
		rm *.bin
