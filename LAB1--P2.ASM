;program to print a name with characters
dosseg
.model small
.stack 100h
.data
.code
main proc
mov dl,'B'
mov ah,2
int 21h         ;print B
mov dl,'a'
mov ah,2
int 21h         ;print a
mov dl,'i'
mov ah,2
int 21h         ;print i
mov dl,'g'
mov ah,2
int 21h         ;print g
mov ah,4ch
int 21h         ;exit program
main endp
end main
