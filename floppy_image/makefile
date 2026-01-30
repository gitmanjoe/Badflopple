ASM = nasm

all: badflopple

badflopple: src/bootloader.s
	$(ASM) -o badflopple.img src/bootloader.s

clean:
	rm badflopple.img

run: badflopple.img
	qemu-system-i386 badflopple.img
