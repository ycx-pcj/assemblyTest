.globl findPaymentsSum
findPaymentsSum:
    push %rbp
    mov %rsp, %rbp

    mov $0, %r9 #counter
    mov $0, %rax #initialize rax

    

    loop:
        cmp %r9, %rsi
        je finish #if equal we jump to end
        mov 8(%rdi, %r9, 4), %r10
        add %r10, %rax
        add $1, %r9
        jmp loop

    finish:
        pop %rbp
        ret