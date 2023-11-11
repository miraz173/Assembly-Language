.model small
.stack 100h
.data 
    a dw ?
    c dw ?
    b db ?    
    x db 13, 10, '$'
    prime db  ' is a prime number $'
    nprime db ' is a non-prime number $'
    
    
.code
main proc
    mov ax, @data
    mov ds, ax
               
    mov c, 17 
    
    l0:
    mov cx, c
    dec cx
    jz l4   
    cmp cx, 1
    jz l5
    mov c, cx
    
    ll1:            
    mov ax, c
    mov a, ax
    
    mov cx, a
    
    l1:
    mov dx, 0
    dec cx  
    jz l3    
    cmp cx, 1
    jz l3      
    
    mov ax, a
    mov bx, cx
    div bx
    aad   
    
    cmp dl, 0
    jz l2
    
    jnz l1
       
       
    l2:  
    
            
    LEA DX, x
    MOV AH,09H
    INT 21H  
    
    mov ax, a
    aaa   
    mov a, ax
    
    mov dl, ah           
    add dl, 48 
    mov ah, 2
    int 21h
    
    mov ax, a
    
    mov dl, al           
    add dl, 48 
    mov ah, 2
    int 21h   
        
    LEA DX, nprime
    MOV AH,09H
    INT 21H
    jmp l4 
           
                
    l3:  
            
    LEA DX, x
    MOV AH,09H
    INT 21H   
           
    mov ax, a
    aaa
    mov dl, ah           
    add dl, 48 
    mov ah, 2
    int 21h
            
    mov ax, a
    
    mov dl, al          
    add dl, 48 
    mov ah, 2
    int 21h  
              
    LEA DX, prime
    MOV AH,09H
    INT 21H
    
              
    l4:
    cmp c, 1
    jnz l0  
    
    l5:
    
    main endp
end main
          ; vagshesh dl
          ; vagfall al