assume cs:code, ds:data, ss:stack
data segment
  dw 0123H, 0456H, 0789H, 0abcH, 0defh, 0fedh, 0cbah, 0987H
data ends

stack segment
  dw 0, 0, 0, 0, 0, 0, 0, 0
stack ends

code segment
start:
  mov ax, stack ;move stack InAdress to ax register
  mov ss, ax
  mov sp, 16
  mov ax, data
  mov ds, ax
  mov bx, 0
  mov cx, 8 ; times

s:push [bx]
  add bx, 2
  loop s

  mov bx, 0
  mov cx, 8

e:pop [bx]
  add bx, 2
  loop e

;exit
  mov ax, 4c00h
  int 21h

code ends
end start











