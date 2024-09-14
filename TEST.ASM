;dosseg
;.model small
;.stack 100h
;.data
;.code
;main proc
;mov bx,1
;mov cx,5
;l1:
 ;       push cx
;mov cx,5
;l2:
 ;       cmp cx,bx
 ;       je star
 ;       mov dl,32
 ;       mov ah,2
 ;       int 21h
 ;      star:
 ;       mov dl,'*'
 ;       mov ah,2
 ;       int 21h
 ;       inc bx
     
;loop l2
;mov dl,10
;mov ah,2
;int 21h
;mov dl,13
;mov ah,2
;int 21h
;inc bx
;pop cx
;loop l1

;mov ah,4ch
;int 21h

;main endp
;end main

;dosseg
;.model small 
;.stack 100h
;.data
;msg1 db 'enter a single charachter$'
;msg2 db 'you entered$'
;.code
;main proc
;mov ax,@data
;mov ds,ax

;mov dx,offset msg1
;mov ah,9
;int 21h

;mov ah,1
;int 21h

;mov dx,10
;mov ah,2
;int 21h

;mov dx,13
;mov ah,2
;int 21h
 
;lea dx,msg2
;mov ah,9
;int 21h

;mov dl,al
;mov ah,2 
;int 21h

;mov ah,4ch
;int 21h

;main endp 
;end main


;dosseg
;.model small
;.stack 100h
;.data
;msg1 db 'enter number 1$'
;msg2 db 'enter number 2$'
;var1 db ?
;var2 db ?
;.code
;main proc
;mov ax,@data
;mov ds,ax

;lea dx,msg1
;mov ah,9
;int 21h

;mov ah,1
;int 21h

;mov var1,al

;lea dx,msg2
;mov ah,9
;int 21h

;mov ah,1
;int 21h
;mov var2,al

;mov al,var1
;add al,var2
;sub al,48
;mov dl,al
;mov ah,2
;int 21h

;mov ah,4ch
;int 21h


;main endp
;end main
;dosseg
;.model small
;.stack 100h
;.data
;msg1 db'enter character$'
;msg2 db'after converting$'
;var1 db ?
;.code
;main proc
;mov ax,@data
;mov ds,ax

;lea dx,msg1
;mov ah,9
;int 21h

;mov ah,1
;int 21h

;mov bl,al
;sub bl,32
;mov dl,bl
;mov ah,2
;int 21h

;mov ah,4ch
;int 21h

;main endp
;end main
;dosseg
;.model small
;.stack 100h
;.data
;.code
;main proc 
;mov ax,@data
;mov ds,ax

;mov ax,48
;push ax
;l1:
;mov ah,1
;int 21h
;cmp al,13
;je lout
;mov ah,0
;push ax
;jmp l1

;lout:
;pop ax
;cmp al,48
;je endprogram
;mov dl,al
;mov ah,2 
;int 21h
;jmp lout

;endprogram:
;mov ah,4ch 
;int 21h

;main endp
;end main

;dosseg
;.model small
;.stack 100h
;.data
;.code
;main proc
;mov cx,0 
;l1:
;mov ah,1
;int 21h
;cmp al,13
;je lout
;inc cx
;jmp l1;

;lout:
;mov dl,cl
;add dl,48
;mov ah,2
;int 21h
;
;mov ah,4ch
;int 21h




;main endp
;end main
;dosseg
;.model small
;.stack 100h
;.data
;	var1 db 7,8,3,2
;	var db ?
;.code
;main proc
;mov ax,@data
;mov ds,ax

;mov si,offset var1
;mov bl,[si]
;mov var,bl
;mov cx,4
;l1:
;mov al,[si]
;cmp al,var
;jge exc		;value less in array
;mov var,al
;exc:
;inc si 

;loop l1

;mov dl,var
;add dl,48
;mov ah,2
;int 21h

;mov ah,4ch
;int 21h

;main endp
;end main


print macro p1
mov dx,offset p1
mov ah,9
int 21h
endm


dosseg
.model small
.stack 100h
.data
	msg db 'enter input$'
	msgeq db 'entered numbers are equal$'
	msgneq db 'entered numbers are not equal$'
	msggret db 'first number is greater and second is lesser$'
	msgless db 'first number is lesse and second is greater$'
.code
main proc
mov ax,@data
mov ds,ax

print msg

mov ah,1
int 21h
mov bl,al
sub bl,48

print msg

mov ah,1
int 21h
sub al,48

l1:
cmp al,bl
call enter
je equstat
print msgneq
equstat:
	print msgeq



cmp al,bl
call enter
jl lessstat
print msggret
jmp programend
lessstat:
	print msgless
	jmp programend


programend:
mov ah,4ch 
int 21h
main endp

enter proc
mov dx,10
mov ah,2
int 21h

mov dx,13
mov ah,2
int 21h

ret
enter endp
end main































































