print_char:
    pusha
    mov ah, 0x0e
    int 10h
    popa
    ret
plot_pixel:
    pusha

