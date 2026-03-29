.globl sumOfPowers
sumOfPowers:
    push %rbp
    mov %rsp, %rbp
    
    mov %rdi, %rdx #Holds the input
    add $1, %rdx #Add 1 to it for termination
    mov $1, %r8  #Loop counter
    mov $0, %rax

    loop:
        cmp %rdx, %r8 #Compare counter with n
        je finsh
        mov %r8, %rcx #Store the value of current counter
        imul %rcx, %rcx
        add %rcx, %rax
        add $1, %r8;
        jmp loop

    finsh:
        pop %rbp
        ret