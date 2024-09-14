;program to add two numbers
dosseg
.model small
.stack 100h
.data
.code
main proc
mov bl,1
mov cl,2
add bl,cl       ;adding numbers
mov dl,bl
add dl,48
mov ah,2
int 21h

mov ah,4ch
int 21h         ;exit program
main endp
end main
