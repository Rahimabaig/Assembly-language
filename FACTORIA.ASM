dosseg
.model small
.stack 100h
.data
.code
main proc
mov ah,1
int 21h
sub al,1
sub al,48
mov cl,al
inc al

mul cl

fact:
add al,48
mov dl,al
mov ah,2
int 21h

loop fact
mov ah,4ch
int 21h
main endp
end main
