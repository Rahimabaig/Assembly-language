dosseg
.model small
.stack 100h
.data
        stat db 'enter year$'
        array db 4 dup(?)
        msg1 db 'entered year is a leap year$'
        msg2 db 'entered year is not a leap year$'
.code
main proc
        mov ax,@data
        mov ds,ax

        mov dx,offset stat
        mov ah,9                ;print statement to enter
        int 21h

        mov si,offset array
        mov cx,4
        yearin:                  ;inputting values
        mov ah,1
        int 21h
        sub al,48

        mov [si],al              ;storing value
        inc si
        loop yearin

        call leap
        mov bl,4
        div bl                   ;dividing it by 4
        cmp ah,0
        jne message2


        mov dx,offset msg1
        mov ah,9                 ;print this statement if compare is true
        int 21h
        jmp endd

        message2:
        mov dx,offset msg2       ;print this statement if compare is false 
        mov ah,9
        int 21h


        endd:
        mov ah,4ch
        int 21h

main endp

        leap proc
        mov al,array[2]          ;calling value from array
        mov bl,10                                               
        mul bl                   ;multiplying by 10
        mov bl,al
        mov al,0
        mov al,array[3]          ;calling value 3 from array
        add al,bl                ; adding bl into al
        ret
        leap endp
        
end main


