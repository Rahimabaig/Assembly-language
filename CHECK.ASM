dosseg
.model small
.stack 100h
.data
        prompt db 'enter year$'
        array db 4 dup(?)
.code
main proc
        mov ax,@data
        mov ds,ax
        mov dx,offset prompt
        mov ah,9
        int 21h

        mov si,offset array
        mov cx,4
        yearin:
        mov ah,1
        int 21h
        sub al,48
        mov [si],al
        inc si
        loop yearin

        mov si,offset array
        add si,2*1
        mov al,[si]
        mov ah,2
        int 21h
        inc si
        mov ah,[si]
        mov ah,2
        int 21h
      ;  mov bl,'4'
      ;  sub bl,'0'
      ;  div bl
      ;  mov dl,ah
     ;   mov bl,al
     ;   mov dh,0
     ;   mov dx,bx
     ;   int 21h         

          mov ah,4ch
        int 21h
main endp
end main
