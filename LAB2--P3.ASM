;program to input two numbers and add them
dosseg
.model small
.stack 100h
.data
.code
main proc
mov ah,1
int 21h         ;input number1
mov bl,al
mov ah,1
int 21h         ;input number2
add bl,al
sub bl,48
mov dl,bl
mov ah,2
int 21h         ;print number

mov ah,4ch
int 21h         ;exit program
main endp
end main
