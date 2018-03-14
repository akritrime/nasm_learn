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