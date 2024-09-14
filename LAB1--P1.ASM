;program to print single character on screen
dosseg
.model small
.stack 100h
.data
.code
main proc
mov dl,'R'
mov ah,2
int 21h         ;print R

mov ah,4ch
int 21h         ;exit program
main endp
end main
