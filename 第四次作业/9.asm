code segment 
DA1 DW 1 2 3 4
DA2 DW 5 6 7 8
RES1 dw 4 dup(0)
LEN EQU $-DA1
assume cs:code
main: mov ax,$
mov ds,ax
mov cx,8
mov si,0
xor ax,ax
loop1: mov ax,DA1[si]
mov bx,DA2[si]
sbb ax,bx
mov RES1[si],ax
add si,2
loop loop1
mov ax,4c00h
int 21h
code ends
end main

