.model small
.stack 100h
.data
    num db ?
.code         
    main proc
        
    mov dx, @data
    mov ds, dx
    
    mov ah, 1
    int 21h  ;input ascii value assigned to al
    
    add al, 32 
    mov cl, al    
    
      ; new line
  mov dx,13
  mov ah,2
  int 21h  ;ah=2,int 21h shows 'dl' value as output and makes al=dl
  mov dx,10
  mov ah,2
  int 21h 
  
    mov dl, cl
    mov ah, 2
    int 21h