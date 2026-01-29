bits 16
org 0x7c00

mov [ BOOT_DRIVE ], dl ; BIOS stores our boot drive in dl

mov ah, 0x02           ; BIOS read sectors function
mov al, 17            ; Number of sectors to read (max 18) 
mov ch, 0              ; Cylinder 0
mov cl, 2              ; Start reading at sector 2 (after the boot sector)
mov dh, 0              ; Head 0
mov dl, [ BOOT_DRIVE ] ; Drive number (0 for floppy, 0x80 for hard disk)
mov bx, 0x7e00         ; Load additional sectors at 0x8000
int 0x13               ; BIOS interrupt to read sectors
jmp main

BOOT_DRIVE : db 0

times 510 - ($-$$) db 0
dw 0xaa55
