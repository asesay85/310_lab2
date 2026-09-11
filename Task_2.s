.section .bss
.globl ram       # ram is a continguous memory location 
.lcomm ram, 256      # Reserve 256 bytes of ram (uninitialized memory)

.section .text
.globl fill_ram     # make this code visible to c program

fill_ram:
    lea  ram+0x50, %rsi  # storing a value into our first register, 

    movb $0xFF, (%rsi)  #1
    inc %rsi

    movb $0xFF, (%rsi)  #2
    inc %rsi

    movb $0xFF, (%rsi)  #3
    inc %rsi

    movb $0xFF, (%rsi)  #4
    inc %rsi

    movb $0xFF, (%rsi)  #5
    inc %rsi

    movb $0xFF, (%rsi)  #6
    inc %rsi

    movb $0xFF, (%rsi)  #7
    inc %rsi

    movb $0xFF, (%rsi)
    inc %rsi

    movb $0xFF, (%rsi)

    ret
    
.section .note.GNU-stack,"",@progbits
    
