.model small
.stack 256
.data 
    num db ? 
    nl db 13, 10, "$"
.code 
    main proc
        mov ah, 1
        int 21h
        
        sub al, 48
        mov num, al  
        
          ; new line
        mov dx,13
        mov ah,2
        int 21h  
        mov dx,10
        mov ah,2
        int 21h      
  
        mov ah, 1
        int 21h
        
        sub al, 48
        add al, num
        mov ah, 0
        aaa
        mov bx, ax
        
          ; new line
        mov dx,13
        mov ah,2
        int 21h  
        mov dx,10
        mov ah,2
        int 21h 
            
        add bh, 48
        mov dl, bh
        mov ah, 2
        int 21h
    
        add bl, 48
        mov dl, bl
        mov ah, 2
        int 21h
        