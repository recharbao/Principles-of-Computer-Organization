; 注意:(此处机组教材)
; 字符的每个字节均以十六进制形式存储为其ASCII值。
; 每个十进制值都将自动转换为其等效的16位二进制数，并以十六进制数形式存储。
; 处理器使用小尾数字节顺序。
; 负数将转换为其2的补码表示形式。
; 短浮点数和长浮点数分别使用32位或64位表示。

section .text
  global _start

_start:

  mov edx,10 ; 长度
  mov ecx,ads ; 要写入的信息
  mov ebx,1 ; 文件描述符(stdout)
  mov eax,4 ; 系统调用
  int 0x80 ; 中断


  mov eax,1
  int 0x80


section .data
 ads times 10  DB '+'


