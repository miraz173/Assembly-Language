.model small
.stack 256
.data      
    message db 13, 10, 'Output:', 13, 10, '$' 
    cnt dw 0  
    a dw 0
.code 
    mov dx, @data
    mov ds, dx
             
    xor bx, bx
    
    loo:   
        inc cnt
        mov ah, 1
        int 21h  
        
        cmp al, 13
        jz lexit 
        sub al, 48
        
        shl bx, 1
        or bl, al
        jmp loo
                
    lexit:     
        mov a, bx
        mov cx, 17 
        sub cx, cnt 
        shl bx, cl
        mov cx, cnt
        dec cx 
        lea dx,message
        mov ah, 09h
        int 21h
        
    nl:   
    
        cmp cx, 0
        jz nlexit
        dec cx 
        
        shl bx, 1  
        jc p1
        jmp p0 
        
    p0:
         
         mov dl, 49
         mov ah, 2
         int 21h
         jmp nl   
               
    p1: 
         mov dl, 48
         mov ah, 2
         int 21h   
         jmp nl
         
      nlexit:    
        lea dx,message
        mov ah, 09h
        int 21h
        
        mov ax, a
        aaa
        mov a, ax  
        
        
        mov ax, a
        mov dl, ah
        add dl, 48 
        mov ah, 2
        int 21h
        
        mov ax, a            
        mov dl, al
        add dl, 48
        mov ah, 2
        int 21h
        