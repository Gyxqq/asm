code segment
DAT DB 0,-1,-3,6,4,6
LEN equ $-DAT
RES1 DB 0
RES2 DB 0
assume cs:code
start: mov ax,$
mov ds,ax
mov si,0
mov cx,LEN
loop1:
mov al,DAT[si]
cmp al,0
jge pos1
jmp pos2
pos1:
inc RES1
jmp end1
pos2:
inc RES2
end1:
inc si
loop loop1
mov ah,4ch
int 
code ends
end start
