.model small
.stack 100h
.data 
    num db ? 
.code 
   main proc
       mov ah, 1
       int 21h
        
       mov cl, al
        
       int 21h
        
       add al, cl
       sub al, 96 ; this code gives output%16 as answer, but why?
       mov ah, 0  ;lower nibble of al<9, also af=0, so just mod 16 
       aaa        ;file:///C:/emu8086/documentation/index.html
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