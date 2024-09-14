dosseg
.model small
.stack 100h
.data
prompt1 db 'enter number 1:$'
var1 db ?
prompt2 db 'enter number 2:$'
var2 db ?
remainder db 0
result_msg db 'gcd of given numbers is :$'
gcd_result db 0
.code
main proc
mov ax,@data
mov ds,ax

mov dl,offset prompt1
mov ah,9
int 21h

mov ah,1
int 21h
sub al,48
mov [var1],al

mov dl,offset prompt2
mov ah,9
int 21h

mov ah,1
int 21h
sub al,48
mov [var2],al

mov bl,[var1]
mov al,[var2]
loop_gcd:
cmp al,0
jz exit_gcd
div bl
mov [remainder],ah
mov al,[remainder]
jmp loop_gcd

exit_gcd:
mov [gcd_result],bl

mov dl,offset result_msg
mov ah,9
int 21h

mov al,[gcd_result]
add al,48
mov dl,al
mov ah,2
int 21h

mov ah,4ch
int 21h
main endp
end main
