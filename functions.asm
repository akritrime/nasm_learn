; slen(message: String) -> Int
;  returns the length of a string
slen: push  rdx
      mov   rdx, rax
  
  nextchar: ; internal label
      cmp   byte [rax], 0
      jz    finished
      inc   rax
      jmp   nextchar

  finished:
      sub   rax, rdx
      pop   rdx
      ret

; sprint(message: String)
; prints a string
sprint:
      push  rdx
      push  rcx
      push  rbx
      push  rax
      call  slen
      mov   rdx, rax
      pop   rax
      mov   rcx, rax
      mov   rbx, 1
      mov   rax, 4
      int   80h
      pop   rbx
      pop   rcx
      pop   rdx
      ret

; quit()
; exits a program
quit:
      mov   rbx, 0
      mov   rax, 1
      int   80h