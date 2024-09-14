dosseg
.model small
.stack 100h
.data
.code
main proc
mov cx,3
mov bl,101b
and bl,110b
add bl,48
l1:
mov dl,bl
mov ah,2
int 21h
add bl,1

loop l1
mov ah,4ch
int 21h
main endp
end main

