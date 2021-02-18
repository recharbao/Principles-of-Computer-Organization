section.text
  global _start

_start:
  
  mov edx,len ;信息长度
  mov ecx,msg ;写信息
  mov ebx,1 ; stdout
  mov eax,4 ; sys_write
  int 0x80  ; call kernel

  mov eax,1 ; system call number(sys_exit)
  int 0x80 ; call kernel

section.data
  
  msg db 'hello, world!', 0xa ; string to be printed
  len equ $ -msg ; length of the string
