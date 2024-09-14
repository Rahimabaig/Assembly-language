 dosseg
.model small
.stack 100h
.data
prompt db "Enter a positive integer:$"
odd_msg db "The number is odd number.$"
even_msg db "The number is even number.$"
.code
main proc
mov ax,@data
mov ds,ax

;display prompt
mov dx,offset prompt
mov ah,9                 ;printing prompt
int 21h

;read input
mov ah,1                 ;read input
int 21h
sub al,48
mov bl,2
div bl   
cmp ah,0
je even_number        ;using jump having condition 


;displaying message that entered number is an odd number
mov dx,offset odd_msg
mov ah,9
int 21h
mov ah,4ch
int 21h


even_number:
;displaying message indicating that entered number is even number
mov dx,offset even_msg
mov ah,9
int 21h
mov ah,4ch
int 21h
main endp
end main



