data segment
VAR1 DB 35H
RES1 DB 0
RES2 DB 0
data ENDS
code segment
assume cs:code,ds:data
start: mov ax,data  
mov ds,ax
mov ax,0
mov al,VAR1
mov cl,4
SAR al,cl
mov RES1,al
mov al,VAR1
AND al,0FH
mov RES2,al
int 21H
code ENDS
end start
