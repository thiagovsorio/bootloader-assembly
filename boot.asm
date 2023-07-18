ORG 0
BITS 16

_start:
    jmp short start
    nop

times 33 db 0 ; filling the future bios parameter block with zeros

start:
    jmp 0x7c0:run ; skiping bios parameter block
    ; updates the code segment to 0x7c0, where our run starts

run:
    cli ; Clear Interrupts
    mov ax, 0x7c0
    mov ds, ax
    mov es, ax

    mov ax, 0x00
    mov ss, ax
    mov sp, 0x7c00
    sti ; Enables Interrupts


    mov ah, 2 ; READ SECTOR COMMAND
    mov al, 1 ; READ ONE SECTOR
    mov ch, 0 ; Cylinder lowe eight bits
    mov cl, 2 ; Read Sector two
    mov dh, 0 ; Head number
    mov bx, buffer

    int 0x13
    jc error

    mov si, buffer
    call print

    jmp $

error:
    mov si, error_message
    call print
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

error_message: db 'Failed to load sector', 0

times 510-($ - $$) db 0
dw 0xAA55

buffer: