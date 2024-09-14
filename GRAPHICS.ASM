;program to print shape inside shape

dosseg
.model small
.stack 100h
.data
m1 db 'rahima$'
.code
main proc

mov ah,0
mov al,13h
int 10h

mov ah,0ch
mov al,0110b
mov cx,100
mov dx,50
int 10h

mov bl,70
fLine:
int 10h
inc cx
dec bl
jnz fLine

mov bl,40
sLine:
int 10h
inc dx
dec bl
jnz sLine

mov bl,70
tLine:
int 10h
dec cx
dec bl
jnz tLine

mov bl,40
frLine:
int 10h
dec dx
dec bl
jnz frLine

;triangle:

mov ah,0ch
mov al,10
mov cx,135
mov dx,50
int 10h

mov bl,20
f1Line:
int 10h
inc cx
inc dx
dec bl
jnz f1Line

mov bl,20
s1Line:
int 10h
dec cx
inc dx
dec bl
jnz s1Line

mov bl,20
t1Line:
int 10h
dec cx
dec dx
dec bl
jnz t1Line

mov bl,20
fr1Line:
int 10h
inc cx
dec dx
dec bl
jnz fr1Line

mov ah,4ch
int 21h

main endp
end main
