.MODEL SMALL
.STACK 100h

.DATA
    buffer DB "abcba$"  ; Input string  
    reverse DB 5 DUP(?)
    newline DB 0Dh, 0Ah, '$'  ; Newline character sequence 
    yes db 10,13,"It's palindrome$"  
    no db 10,13,"It's not palindrome$"

.CODE
    MOV AX, @DATA
    MOV DS, AX 
    MOV ES, AX

    MOV SI, OFFSET buffer
    ADD SI, 4
    STD
    LEA DI, reverse
    MOV CX, 5
    
    Level:
        MOVSB
        ADD DI, 2
        LOOP Level    
        
     LEA DX, reverse
     MOV AH, 9
     INT 21H
     
      
     
     
     lea si, buffer
     lea di, reverse
     cld 
     mov cx, 5
     repe cmpsb
     je label1
     jne label2
      
     
     label1:
          lea dx,yes
          mov ah,9
          int 21h 
          jmp sesh  
     
     label2:
        lea dx,no
        mov ah,9
        int 21h
             
    
    
    sesh:
    

end