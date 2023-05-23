stack segment
dw 128 dup(0)
stack ends
code segment
DA1 DW 4 DUP(0)
LEN equ $-DA1
assume cs:code
start:
mov ax,$
mov ds,ax
mov cx ,LEN
sub cx,1
mov si,0
loop1:
mov ax,DA1[si]
push cx
mov cl,3
SAR ax,cl
mov byte PTR DA1[si],al
inc si
pop cx
loop loop1
mov al,byte ptr DA1[si]
mov cl,3
SAR al,cl
mov byte ptr DA1[si],al
mov ah,4ch
int 21h
code ends
end start

