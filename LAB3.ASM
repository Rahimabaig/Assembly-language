;Write program to declare 3 types of variables , input value in one and perform addition/subraction operation on them using enter key
dosseg
.model small
.stack 100h
.data
var1 db 'HELLO WORLD$'
var2 db '2'                     ;declare variables
var3 db ?

.code
main proc
mov ax, @data                   ;move address of data into .code
mov ds,ax

mov dx,offset var1
mov ah,9                        ;print var1
int 21h

mov dl,10
mov ah,2                        ;enter
int 21h

mov dl,13
mov ah,2                        ;carriage retuen
int 21h

mov dl,var2
mov ah,2                        ;print var2
int 21h

mov dl,10
mov ah,2                        ;new line
int 21h

mov dl,13
mov ah,2                        ;carriage return
int 21h

mov ah,1                        ;input
int 21h
mov bl,al

mov dl,10
mov ah,2                        ;new line
int 21h

mov dl,13
mov ah,2                        ;carriage return
int 21h


mov cl,var2
ADD cl,bl
SUB cl,48                       ;perform operation
mov dl,cl
mov ah,2                        ;print 
int 21h


mov ah,4ch
int 21h                         ;exit the program
main endp
end main
