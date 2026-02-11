main:
    mov al, 48h
    call print_char
    mov al,0x11
    mov ah, 0
    int 10h
    jmp $
