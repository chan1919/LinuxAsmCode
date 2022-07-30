# find a max_num in a list

# %edi - now index
# %ebx - return code & max_num
# %eax - now_num

# data_list - end of 0

.section .data
    data_list:
        .long 1, 3, 5, 78, 2, 99, 101, 66, 111, 0

.section .text
    .globl _start

_start:
    movl $0, %edi  # set 0 to %edi
    movl data_list(, %edi, 4), %eax
    movl %eax, %ebx # set data_list[0] to max_num in %ebx

start_loop:
    cmpl $0, %eax
    je loop_exit  # end of prosess label

    incl %edi
    movl data_list(,%edi, 4), %eax
    cmpl %ebx, %eax
    jle start_loop

    movl %eax, %ebx
    jmp start_loop

loop_exit:
    movl $1, %eax
    int $0x80
