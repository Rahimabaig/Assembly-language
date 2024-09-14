dosseg
        print macro p1
        mov dx,offset p1
        mov ah,9
        int 21h
        endm
.model small
.stack 100h
.data
        m1 db 'enter id :$'
        n dw ?
        display db 'you entered :$'
	array dw 3 dup(?)
.code
main proc
	mov ax,@data
	mov ds,ax
        print m1

        ;input
        mov n,0
        mov bl,10
	mov si,offset array

        input:
        mov ah,1
        int 21h
        cmp al,13
        je next
        sub al,48
        mov ah,0
        mov cx,ax
        mov ax,n
        mul bl
        add ax,cx
        mov n,ax
        jmp input

        next:
	loopin:
	mov ax,n
	mov [si],ax
	inc si
	cmp si,3
	jmp outt
	jmp input


        ;output
	outt:
        mov ax,array[0]
        mov dx,0
        mov bx,10
        mov cx,0

        output:
        div bx
        push dx
        mov dx,0
        mov ah,0
        inc cx
        cmp ax,0
        jne output
        mov ah,2

        l1:
        pop dx
        add dx,48
        int 21h
        loop l1
        mov ah,4ch
        int 21h

main endp
end main
