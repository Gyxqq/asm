data segment
VAR2 DD 0E2597455H
data ends
code segment  
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov ax,WORD PTR VAR2+2
mov bx,WORD PTR VAR2
MOV CL,2
SAL ax,CL
mov cl,14
SHR BX,cl
add ax,bx
mov bx,WORD PTR VAR2
mov cl,2
SHL bx,CL
mov WORD PTR VAR2,bx
mov WORD PTR VAR2+2,ax
int 21h
code ends
end start

