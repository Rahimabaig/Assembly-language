dosseg
.model small
.stack 100h
.data
.code
main proc
mov cx,3
mov bl,101B
or bl,110B     ;OR OPERATION
add bl,48
mov dl,bl


OPERATION1:
mov ah,2      ;LOOP 1 FOR OPERATION 1
int 21h
add dl,1

LOOP OPERATION1          ;CALLING LOOP

mov dl,10
mov ah,2       ;NEXT LINE
int 21h

mov dl,13
mov ah,2       ;CARRIAGE RETURN
int 21h

mov cx,3
mov bl,011B
and bl,011B     ;AND OPERATION
add bl,48
mov dl,bl

OPERATION2:
mov ah,2        ;LOOP2 FOR OPERATION2
int 21h
add dl,1

LOOP OPERATION2     ;LOOP CALLING

MOV AH,4CH
INT 21H         ;END PROGRAM
MAIN ENDP
END MAIN

