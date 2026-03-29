.globl compareAges
compareAges:
    push %rbp
    mov %rsp, %rbp

    mov 4(%rdi), %rcx #access age which is at location with offset of 4
    mov 4(%rsi), %rdx

    cmp %rcx, %rdx
        je equal #jump is equal
    
    mov $0, %rax #if it did not jump to equal, then it is not, so return 0
    pop %rbp
    ret

    equal:
        mov $1, %rax
        pop %rbp
        ret
