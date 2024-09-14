dosseg
.model small
.stack 100h
.data
.code
main proc

mov ah,6
mov al,10
mov bh,00010000b
mov ch,0
mov cl,0
mov dh,5
mov dl,5
int 10h

mov ah,6
mov al,10
mov bh,00100000b
mov ch,0
mov cl,6
mov dh,5
mov dl,20
int 10h

mov ah,2
mov bh,0     ;setting cursor
mov dh,2
mov dl,8
int 10h

mov ah,6        
mov bh,01100000b
mov ch,2
mov cl,8
mov dh,4
mov dl,12

int 10h

mov ah,4ch
int 21h

main endp
end main
