code segment
ARY1 DB 1,2,3,4,5,6,7
RES1 DB 0
LEN EQU $-ARY1
assume cs:code
main :mov ax,$
mov ds,ax
mov si,0
mov al,ARY1[si]
mov cx,LEN
loop1: 
mov ah,ARY1[si]
cmp ah,al
jle next
mov al,ah
next:
inc si
loop loop1
mov RES1,al
mov ah,4ch
int 21h
end main

 

