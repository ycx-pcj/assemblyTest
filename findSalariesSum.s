.globl findSalariesSum
findSalariesSum:
    push %rbp
    mov %rsp, %rbp

    mov $0, %r9 #counter
    mov $0, %rax #initialize rax
    mov %rsi, %r10
    imul $12, %r10 #multiply the cap by 12 to match the increment of counter
    

    loop:
        cmp %r9, %r10
        je finish #if equal we jump to end
        mov 8(%rdi, %r9), %r11 #The counter r9 takes care of the change in memory location
        add %r11, %rax
        add $12, %r9
        jmp loop

    finish:
        pop %rbp
        ret