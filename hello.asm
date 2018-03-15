%include 'functions.asm'

        section .data
msg_a:  db  "Yep, this works.", 10, 0
msg_b:  db  "I think...", 10, 0

        section .text
        global  _start
_start: mov   eax, msg_a
        call  sprint

        mov   eax, msg_b
        call  sprint

        call  quit