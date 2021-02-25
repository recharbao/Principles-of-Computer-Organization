assume cs:codesg, ds:datasg

datasg segment
  db '1, file         '
  db '2, edit         '
  db '3, search       '
  db '4, view         '
  db '5, options      '
  db '6, help         '
datasg ends

codesg segment
start:
  mov ax, datasg
  mov ds, ax
  mov bx, 0

  mov cx, 6

s:mov al, [bx+3]
  and al, 11011111b ; use bitsCaculate change low -> up
  mov [bx+3], al
  add bx, 16
  loop s

codesg ends
end start


