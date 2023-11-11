.model small
.stack 256
.data  
    nl db 13, 10, '$'
.code
    mov ax, @data
    mov ds, ax
    
    mov cx, 4
    
    haha: 
    mov bx, 5
    sub bx, cx  
    lea dx, nl
    mov ah, 9
    int 21h 
    
    kop:
    mov dx, 42
    mov ah, 2
    int 21h
    dec bx
    
    cmp bx, 0
    jg kop
    
    loop haha