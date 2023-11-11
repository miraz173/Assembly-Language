.model small
.stack 256
.data
    smp db 'sample I/O: $'
    kn db 13, 10, 'Input: $'
    bn db 13, 10, 'Output: $'
    nl db 13, 10, '$' 
    k dw ?
.code      
    mov ax, @data
    mov ds, ax
    
    lea dx, smp
    mov ah, 9
    int 21h
    lea dx, kn
    int 21h
    
    mov ah, 1
    int 21h  
    mov ah, 0
    mov k, ax  
    
    lea dx, bn
    mov ah, 9
    int 21h 
    
    mov ax, k
    sub al, 48
    mov ah, 0
    mov k, ax
    cmp al, 9
    jg boro
     
    mov dl, al
    add dl, 48
    mov ah, 2
    int 21h
    jmp shesh
    
    boro:   
    
      
    sub k, 39
    mov ax, k 
    aaa 
    mov dl, 1
    add dl, 48
    mov ah, 2
    int 21h
    
    mov ax, k
    aaa
    mov dl, al 
    add dl, 48
    mov ah, 2
    int 21h
            
    shesh:
    