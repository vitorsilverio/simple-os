[org 0x7c00] ; tell the assembler that our offset is bootsector code

mov bx, MESSAGE
call print

call print_nl

jmp $

%include "boot_sector_print.asm"
%include "boot_sector_print_hex.asm"

MESSAGE:
    db 'SIMPLE OS', 0xa, 0xd, 'by vitorsilverio', 0

times 510-($-$$) db 0
dw 0xaa55