ORG 0
BITS 16

_start:
    jmp short start
    nop

times 33 db 0 ; filling the future bios parameter block with zeros

start:
    jmp 0x7c0:step2 ; skiping bios parameter block
    ; updates the code segment to 0x7c0, where our step2 starts


step2:
    cli ; Clear Interrupts
    mov ax, 0x7c0
    mov ds, ax
    mov es, ax

    mov ax, 0x00
    mov ss, ax
    mov sp, 0x7c00
    sti ; Enables Interrupts

    mov si, message ; message is a label
    call print ; and when you reference a label you get the address
    jmp $

print:
    mov bx, 0
.loop:
    lodsb ; loads the info on address of si to al and increment si
    cmp al, 0
    je .done
    call print_char
    jmp .loop
.done:
    ret ; ret returns to subroutines and call is a subroutine

print_char:
    mov ah, 0eh
    int 0x10
    ret

message: db 13,10,13,10,"Booting on my friend's computer, so hopefully it didn't catch fire",13,10, 0
times 510-($ - $$) db 0
dw 0xAA55