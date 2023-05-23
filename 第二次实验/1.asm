stack segment
dw 128 dup(?)
stack ends
code segment
assume cs:code,ds:code,ss:stack
ARY1	DB	14,-25,66,-17,78,-33,46,-96,71,80
LEN	EQU		$ - ARY1
ODDNUM DB 0
EVENNUM DB 0
main:
mov ax,stack
mov ss,ax
mov sp,128
mov ax,code
mov ds,ax
LEA	BX,ARY1 
XOR	ax,ax
MOV	CX,LEN
L1:	
  TEST[BX],01H
	JNZ	L2
	JMP	L3
L2:	INC	AL
L3:	inc bx
LOOP	L1
MOV	ODDNUM,AL
push	ax
mov al,LEN
pop bx
sub al,bl
mov EVENNUM,al
code ends
end main


