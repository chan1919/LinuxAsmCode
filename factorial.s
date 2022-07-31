.code32
.section .data
.section .text

.globl _start
.globl factorial

# 4
# ebp
# 7       
# 7       
# 6      <-ebp    <-esp  
#        

## eax = 6

_start:
    pushl $4
    call factorial
    ## TODO
    addl $4, %esp
    movl %eax, %ebx
    movl $1, %eax
    int $0x80

.type factorial, @function
factorial:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %eax
    cmpl $1, %eax
    je end_factorial
    decl %eax
    pushl %eax
    call factorial
    movl 8(%ebp), %ebx
    imull %ebx, %eax

end_factorial:
    movl %ebp, %esp
    popl %ebp
    ret