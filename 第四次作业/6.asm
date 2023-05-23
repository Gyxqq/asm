
code segment
STR DB 'DASD ADFF'
LEN EQU $-STR
STR1 DB  ' '
assume cs:code
start:
mov ax,$
mov ds,ax
mov aL,STR1
mov cx ,LEN
mov si,0
loop1:cmp al,STR[si]
      jz exit
      inc si
loop loop1

exit: 
mov ax,si
int 21h
code ends
end start