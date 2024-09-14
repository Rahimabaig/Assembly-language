;program to take input in array and print it using loop
dosseg
.model small
.stack 100h
.data
var1 db 'enter 7 numbers in array:$'
var2 db 'you entered:$'
.code
main proc
mov ax,@data
mov ds,ax

mov cx,7
mov SI,offset arr

mov dx,offset var1
mov ah,9
int 21h

arrayinput:
mov ah,1
int 21h                ;inputting number for array
mov [SI],al
inc SI
loop arrayinput

mov dx,10
mov ah,2              ;new line
int 21h

mov dx,13
mov ah,2             ;carriage return
int 21h

mov SI,offset arr
mov cx,7

mov dx,offset var2
mov ah,9
int 21h

arrayprint:
mov dl,[s1]
mov ah,2
int 21h
mov dl,32
mov ah,2
int 21h
inc SI
loop arrayprint

mov ah,4ch
int 21h

main endp
end main
