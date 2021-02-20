section .text
  global _start

_start:

  mov edx,1 ; 长度
  mov ecx,choice ; 要写入的信息
  mov ebx,1 ; 文件描述符(stdout)
  mov eax,4 ; 系统调用
  int 0x80 ; 中断


  mov eax,1
  int 0x80


section .data
  choice DB 'y'

