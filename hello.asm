         global  _start

         section .text
_start:  mov     rax, message
         call    strlen

         mov     rdx, rax
         mov     rcx, message
         mov     rbx, 1
         mov     rax, 4
         syscall
         mov     rbx, 0
         mov     rax, 1
         syscall

; subroutines:

; strlen - calculates the length of a string pointed to in rax

strlen: ; subroutine label
        push     rbx
        mov      rbx, rax

  nextchar: ; internal label
        cmp     byte [rax], 0
        jz      finished 
        inc     rax
        jmp     nextchar

  finished: ; internal label
        sub     rax, rbx
        pop     rbx
        ret

         section .data
message: db      "Hello, World!", 10 ;declare 14 bytes starting at address message, initialised to the the ASCII character values and a newline(10)