format ELF64 ; -f elf64

section '.text' ; executable = section .text

public my_strcmp ; global = public

my_strcmp:
    call my_strlen
    push rax
    mov rax, rdi
    mov rdi, rsi
    mov rsi, rax
    ; swap
    call my_strlen
    push rax ;second
    mov rax, [rsp + 128]
    cmp byte [rsp + 64], al
    je .startloop
    jg .jgop
    jmp .jlop
    .startloop:
    pop rax
    pop rax

    push 0
    .loop:
        ; *s2 = rdi, *s1 = rsi
        mov rax, [rsp]
        cmp byte [rdi + rax], 0
        je .endnull
        cmp byte [rdi + rax], [rsi + rax];
        inc rax
        mov [rsp], rax
        je .loop
        jg .jgop
        jmp .jlop
        
    .check:
        cmp byte [rsi + rax], 0
        je .endnull

    .jgop:
        mov rax, 1
        ret
    .jlop:
        mov rax, -1
        ret

    .endnull:
        mov rax, 0
        ret




