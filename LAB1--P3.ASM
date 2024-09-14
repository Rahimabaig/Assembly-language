;program to input a character and print it on screen
dosseg
.model small
.stack 100h
.data
.code
main proc
mov ah,1
int 21h         ;read character input

mov dl,al       ;move input character to dl register
mov ah,2
int 21h         ;print input character

mov ah,4ch
int 21h         ;exit program
main endp
end main
