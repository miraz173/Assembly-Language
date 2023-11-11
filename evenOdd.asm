.model small
.stack 100h
.data 
    a db ?
    b dw ?    
    x db ' ', '$'
    even db 'even: $'
    odd db 'odd: $'
    
    
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 10
    l1:
    mov ax, 0
    mov bx, 0
    mov dx, 0
    mov ax, cx
    mov bx, 2
    div bx
    aad        
    dec cx  
    jz l3
    mov b, cx
    cmp dl, 0 
    jnz l2      
        LEA DX, even
        MOV AH,09H
        INT 21H 
           
    inc cx      
    mov ax, cx
    aaa       
    mov a, al
                  
             
    mov dl, ah 
    add dl, 48 
    mov ah, 2
    int 21h  
                   
    mov dl, a
    add dl, 48 
    mov ah, 2
    int 21h        
        LEA DX, x
        MOV AH,09H
        INT 21H 
    
    dec cx
    jnz l1             
               
    l2:  
        LEA DX, odd
        MOV AH,09H
        INT 21H   
    
    inc cx      
    mov ax, cx
    aaa       
    mov a, al
                  
             
    mov dl, ah 
    add dl, 48 
    mov ah, 2
    int 21h  
                   
    mov dl, a
    add dl, 48 
    mov ah, 2
    int 21h        
        LEA DX, x
        MOV AH,09H
        INT 21H 
    
    dec cx
    jnz l1  
             
      
    
    l3:     
    LEA DX, odd
    MOV AH,09H
    INT 21H   
    
    inc cx      
    mov ax, cx
    aaa       
    mov a, al
                  
             
    mov dl, ah 
    add dl, 48 
    mov ah, 2
    int 21h  
                   
    mov dl, a
    add dl, 48 
    mov ah, 2
    int 21h        
    LEA DX, x
    MOV AH,09H
    INT 21H   
    
    dec cx
    
    LEA DX, even
    MOV AH,09H
    INT 21H 
           
         
    mov ax, cx
    aaa       
    mov a, al
                  
             
    mov dl, ah 
    add dl, 48 
    mov ah, 2
    int 21h  
                   
    mov dl, a
    add dl, 48 
    mov ah, 2
    int 21h        
        LEA DX, x
        MOV AH,09H
        INT 21H 
    
    main endp
end main
       