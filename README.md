# Registers:
  
  ## General:
    EAX: the accumulator, typically used to store the return value of functions, I/O port access,  arithmetic, interrupt calls
    EBX: the base, used as a base pointer for memory access
    ECX: the counter, for loops, array iteration, shifts, etc.
    EDX: the data register, used for support 


# Instructions:

    int 0x80/syscall: a program that's not impure and interacts and effects the outside world, does so via syscalls, to kernels. Interrupts, though achieve the same purpose, are event notifications to the CPU by a hardware or software.

# Important codes:

    sys_write:
        mov     eax, 4
    
    write to STDOUT:
        mov     ebx, 1
    
    sys_exit:
        mov     eax, 1
    
    return 0 status on exit:
        mov     ebx, 0


# Definitions:

    db: declare byte
    dw: declare word
    dd: declare double word

# label

    marks a certain point in the code or data.

# subroutines

    Ye'olde functions