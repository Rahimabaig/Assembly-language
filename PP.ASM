;dosseg
;.model small
;.stack 100h
;.data
;        arr db 'rahimabaigjkf'
;	arr_len dw ?
;.code
;main proc
;        mov ax,@data
;        mov ds,ax
;;calculate the length of array

;        mov si,offset arr
;        mov cx,0
;        l1:
;           mov al,[si]
;           cmp al,13
;           je len
;           inc si
;           inc cx
;                        
;       len:
;          mov bx,0
;          mov bx,si
;          mov arr_len,bx
;	  mov ax,arr_len
;	  jmp display
;	display:
;	  mov dx,0
;	  mov bx,10
;	  mov cx,0
;	  l2:
;		div bx
;		push dx
;		mov dx,0
;		mov ah,0
;		inc cx
;		cmp ax,0
;		jne l2
;	  l3:
;		pop dx
;		add dx,48
;		mov ah,2
;		int 21h
;		loop l3
;		 

;	 mov ah,4ch
;       int 21h
;
;     main endp
;     end main
;


;dosseg
;.model small
;.stack 100h
;.data
; 	msg db "entered character is $"
;.code
;main proc
;	mov ax,@data
;	mov ds,ax
;	mov ah,1
;	int 21h
;	mov dx,offset msg
;	mov ah,9
;	int 21h
;	mov dl,al
;	mov ah,2
;	int 21h
;
;mov ah,4ch
;int 21h

;main endp
;end main


;dosseg
;.model small
;.stack 100h
;.data
;	msg db "Enterr a character :$ "
;	outpt db " [User entered :] $ "
;	str db "Alice Smith$"
;.code
;main proc
;	mov ax,@data
;	mov ds,ax
;	mov dl,'X'
;	mov ah,2
;	int 21h
;
;	mov dl,10
;	mov ah,2
;	int 21h
;
;	mov dl,13
;	mov ah,2
;	int 21h
;	
;	mov dx,offset str
;	mov ah,9
;	int 21h
;
;	mov dl,10
;	mov ah,2
;	int 21h
;
;	mov dl,13
;	mov ah,2
;	int 21h
;
;	mov dx,offset msg
;	mov ah,9
;	int 21h
;	mov ah,1
;	int 21h
;	mov dx,offset outpt
;	mov ah,9
;	int 21h
;	mov dl,al
;	mov ah,2
;	int 21h
;
;mov ah,4ch
;int 21h
;main endp 
;end main

;dosseg
;.model small
;.stack 100h
;.data
;	str db 'raHimaA$'
;	
;.code
;main proc
;	mov ax,@data
;	mov ds,ax
;	
;	mov si,offset str
;	convert:
;		mov al,[si]
;		cmp al,'$'
;		je p_end
;		cmp al,'A'
;		jle lowercase
;		sub al,32
;		jmp print_char
;		

;	lowercase:
;		add al,32
;		jmp print_char
;	print_char:
;		mov dl,al
;
;		mov ah,2
;		int 21h
;		inc si
;		jmp convert
;p_end:
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
;mov bl,1
;mov cx,5
;l1:;
	;push cx
	;mov cx,bx
;	l2:
;	mov dl,"*"
;	mov ah,2
;	int 21h
;	
;	
;	loop l2
;	mov dl,10
;	mov ah, 2
;	int 21h
;	mov dl,13
;	mov ah, 2
;	int 21h
;	inc bl
;	pop cx
;	loop l1
;
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
;mov ah,1
;int 21h
;mov bl,al
;mov cx,10
;l1:
;
;	mov dl,bl
;	mov ah,2
;	int 21h
;
;	mov dl,10
;	mov ah,2
;	int 21h

;	mov dl,13
;	mov ah,2
;	int 21h
;loop l1
;mov ah,4ch
;int 21h
;main endp
;end main
	
;dosseg
;.model small
;.stack 100h
;.data
;	msg1 db"enter first number $" 
;	msg2 db"enter second number $"
;	msg db"the product is= $"
;	num db?
	         
;.code
;main proc
;mov ax,@data
;mov ds,ax
;	mov dx,offset msg1
;	mov ah,9
;	int 21h

;	mov ah,1
;	int 21h
;	sub al,48
;	mov num,al
	
;	mov dl,10
;;	mov ah,2
;	int 21h

;	mov dl,13
;	mov ah,2
;	int 21h
;
;	mov dx,offset msg2
;	mov ah,9
;	int 21h

;	mov ah,1
;	int 21h
;	sub al,48
;	

;	mul num
;; 	mov dx,offset msd
;	mov ah,9
;	int 21h
;	mov dl,al
;	mov ah,2
;	int 21h
;
;mov ah,4ch
;int 21h
;main endp 
;end main

	


dosseg
.model small
.stack 100h
.data
var db ?
str1 db " midterms $"
.code
main proc 
mov ax,@data
mov ds,ax
mov bl,2
mov cl,8
lea dx,str1
mov ah,9

l1:
int 21h
inc bl
dec cx

loop l1
	

mov ah,4ch
int 21h
main endp 
end main















	
	
 

























