;stack program to reverse a string
dosseg
.model small
.stack 100h
.data
msg db 10,13,'enter a string$'
.code
main proc
mov ax,@data
mov ds,ax

mov dx,offset msg
mov ah,9                ;printing msg
int 21h

mov cx,7
rev_str:
mov ah,1
int 21h
mov ah,0
push ax
loop rev_str

mov dx,10               ;new line
mov ah,2
int 21h
mov dx,13               ;carriage return
mov ah,2
int 21h

mov cl,7
print:
pop dx
mov ah,2
int 21h
loop print

mov ah,4ch
int 21h                ;exit program
main endp
end main
