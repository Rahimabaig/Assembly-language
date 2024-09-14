;program to write procedure 
dosseg
.model small
.stack 100h
.data
num_1 db'enter alphabet to convert '
.code
main proc
mov ah,offset num_1
mov ah,1
int 21h
call toupercase



mov ah,4ch
int 21h
main endp

toupercase proc
mov dl,al
sub dl,32
mov ah,2
int 21h
ret
toupercase endp
end main
