.section .bss
.globl ram
.lcomm ram, 256  # Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.globl fill_ram  #make this function visible to c program

fill_ram:

    movl $1, %eax         # eax = 1 (counter starts at 1)
    movl $0, %ebx         # ebx = 0. Will be the register where numbers 1 - 10 are summed

    loop:
        addl %eax, %ebx   # add value from eax register to ebx, store iit in ebx
        incl %eax         # increment counter register eax
        cmpl $11, %eax    # if counter register isnt = 11, flag won't be set to t 0, and loop is rerun 
        jne loop 

    movb %bl, ram+0x50    # should print 37, which is 55 in hexadecimal

    ret    # Return control back to c program

.section .note.GNU-stack,"",@progbits