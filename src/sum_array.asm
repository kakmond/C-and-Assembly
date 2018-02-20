global add

add:
  push rbp
  mov rbp, rsp
  mov QWORD word[rbp-24], rdi
  mov DWORD word[rbp-28], esi
  mov DWORD word[rbp-4], 0
  mov DWORD word[rbp-8], 0
  mov DWORD word[rbp-4], 0
  jmp .L2
.L3:
  mov eax, DWORD word[rbp-4]
  cdqe
  lea rdx, [0+rax*4]
  mov rax, QWORD word[rbp-24]
  add rax, rdx
  mov eax, DWORD word[rax]
  add DWORD word[rbp-8], eax
  add DWORD word[rbp-4], 1
.L2:
  mov eax, DWORD word[rbp-4]
  cmp eax, DWORD word[rbp-28]
  jl .L3
  mov eax, DWORD word[rbp-8]
  pop rbp
  ret
