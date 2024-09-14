dosseg
.model small
.stack 100h
.data
        msg1 db 'enter voter id:$'
        array db 3 dup(?)

.code
main proc
        mov ax,@data
        mov ds,ax
        lea dx,msg1
        mov ah,9
        int 21h

        mov si,offset array
        mov cx,3
        idin:
        mov ah,1
        int 21h
        sub al,48

        mov [si],al
        inc si
        loop idin

        call id




        mov ah,4ch
        int 21h
main endp

         id proc
         mov al,array[1]
         mov bl,10
         mul bl
         mov bl,al
         mov al,0
         mov al,array[2]
         add al,bl
         mov cl,al
         mov bl,0
         mov al,0
         mov al,array[0]
         mov bl,100
         mul bl
         add al,cl
         mov dl,al
         mov ah,2
         int 21h
         r                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
         id endp





end main

