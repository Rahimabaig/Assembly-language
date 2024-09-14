        ;dosseg
        ;.model small
        ;.stack 100h
        ;.data
        ;.code
        ;main proc
        ;mov cx,10
        ;mov bl,48
        ;mov dl,bl
        ;repeat:
        ;mov ah,2
        ;int 21h
        ;add dl,1
        ;loop repeat
        ;mov ah,4ch
        ;int 21h                                                 
        ;main end
   



;dosseg
;.model small
;.stack 100h
;.data
;.code
;main proc
;mov cx,10
;mov dl,48
;mov bl,49

;sum:
;add dl,bl
;sub dl,48
;mov ah,2
;int 21h
;add bl,1

;loop sum
;mov ah,4ch


;dosseg
;.model small
;.stack 100h
;.data
;        str db 'Zara Ali $'
;	new_str db 'Nuha Ali $'
;.code
;main proc
;       mov ax,@data
;       mov ds, ax

;        lea dx,str
;	mov ah,9	;print str
;	int 21h
	
;	lea si,new_str		;si and di are used for comparing and copying string
;	lea di,str
;      	mov cx,10

;	copy:
;	mov al,[si]
;	mov [di],al
;	inc si
;	inc di
;	loop copy

;	lea dx,str
;	mov ah,9
;	int 21h

;        mov ah,4ch
;       int 21h
;main endp
;end main


dosseg
.model small
.stack 100h
.data
.code
main proc

mov ax,49
push ax
mov ax,50
push ax

call dis

mov dx,ax
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
dis proc
pop ax
pop ax
ret
dis endp
end main

