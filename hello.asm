         global  _start

         section .text
_start:  mov     rdx, 14
         mov     rcx, message
         mov     rbx, 1
         mov     rax, 4
         int     80h

         mov     rbx, 0
         mov     rax, 1
         int     80h

         section .data
message: db      "Hello, World!", 10 ;declare 14 bytes starting at address message, initialised to the the ASCII character values and a newline(10)