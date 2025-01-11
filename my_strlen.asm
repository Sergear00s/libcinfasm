format ELF64 ; -f elf64

section '.text' ; executable = section .text

public my_strlen ; global = public

my_strlen:
    push 0
    .loop:
        mov rax, [rsp]
        cmp byte [rdi + rax], 0;
        je .done
        inc rax
        mov [rsp], rax
        jmp .loop
    .done:
        pop rax
        ret



