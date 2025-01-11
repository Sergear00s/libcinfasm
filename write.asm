format ELF64 ; -f elf64

section '.text' ; executable = section .text

public my_write ; global = public

my_write:
    mov rax, 1;
    syscall
    ret

