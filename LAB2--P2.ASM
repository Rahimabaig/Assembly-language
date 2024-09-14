;program to subract two numbers
dosseg
.model small
.stack 100h
.data
.code
main proc
mov bl,11
mov cl,3
sub bl,cl       ;subracting numbers
mov dl,bl
add dl,48
mov ah,2
int 21h         ;print number

mov ah,4ch
int 21h         ;exit program
main endp
end main


