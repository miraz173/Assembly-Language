.model small
.stack 100h
.data
.code
main proc
    mov dx, @data
    mov ds, dx
    
    mov ah, 1
    int 21h
    
    sub al, 32
    mov cl, al
    
    mov dx,13    ; new line
    mov ah,2
    int 21h 
    mov dx,10
    mov ah,2
    int 21h 


    mov dl, cl
    mov ah, 2
    int 21h
    