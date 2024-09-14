dosseg
.model small
.stack 100h
.data
prompt1 db 'enter number 1 $'
prompt2 db 'enter number 2 $'
var1 db ?
var2 db ?
result_msg db "gcd of given numbers is $"
.code
main proc
mov ax,@data
mov ds,ax


mov dx,offset prompt1
mov ah,9                 ;printing prompt for taking number 1
int 21h
mov ah,1
int 21h                  ;reading number 1
sub al,48
mov [var1],al


mov dx,offset prompt2
mov ah,9                 ;printing prompt for taking number 2
int 21h
mov ah,1
int 21h                   ;reading number 2
sub al,48
mov [var2],al


;comparing which is greater
mov al,[var1]
mov bl,[var2]
cmp al,bl
jge gcd_calc
xchg al,bl

gcd_calc:
mov ah,0       
div bl                   ;calculating gcd
mov al,bl
mov bl,ah
cmp bl,0
jnz gcd_calc           ;jump to calculate if remainder not zero

mov dx,offset result_msg
mov ah,9
int 21h
add al,48
mov dl,al
mov ah,2
int 21h
mov ah,4ch
int 21h

main endp
end main

