section .data
  userMsg db '输入一个数子:'
  lenUserMsg equ $-userMsg
  dispMsg db '你输入了:'
  lenDispMsg equ $-dispMsg


section .bss ; 注意前方有空格
  num resb 5

section .text
  global _start

_start:

  mov eax,4 ;系统调用写
  mov ebx,1
  mov ecx,userMsg
  mov edx,lenUserMsg
  int 0x80

  mov eax,3 ;系统调用读
  mov ebx,2
  mov ecx,num
  mov edx,5
  int 0x80

  ;下面的类似
  mov eax,4      ;write(1,dispaly,displaylen)
  mov ebx,1
  mov ecx,dispMsg
  mov edx,lenDispMsg
  int 0x80

  mov eax,4
  mov ebx,1
  mov ecx,num
  mov edx,5
  int 0x80

  ;exit(0)
  mov eax,1
  mov ebx,0
  int 0x80



