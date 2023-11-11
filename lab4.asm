.MODEL SMALL 
.STACK 100H 
.DATA 
    num db ?
    num2 db ?
addS DB 'Input two numbers to add: ', '$'    
sum db 'Sum= ', '$'
subS DB 'Input two numbers to Subtract: ', '$'    
su db 'Sub= ', '$'  
mulS DB 'Input two numbers to multiply: ', '$'    
mu db 'Product= ', '$'
divS DB 'Input two numbers to divide: ', '$'    
quo db 'Quotient= ', '$'  
rem db 'Remainder= ', '$'

space DB ' ', '$'                 
nl db 13, 10, '$'
  
.CODE 
MAIN PROC FAR 
 MOV AX,@DATA 
 MOV DS,AX 
        ;Add two num
        ; load address of the string 
        LEA DX,addS 
        MOV AH,09H
        INT 21H 
            
        mov ah, 1
        int 21h
        
        sub al, 48
        mov num, al  
                                    
        LEA DX, space
        MOV AH,09H
        INT 21H      
  
        mov ah, 1
        int 21h
        
        sub al, 48
        add al, num
        mov ah, 0
        aaa
        mov bx, ax
        
        LEA DX, nl
        MOV AH,09H
        INT 21H 
        LEA DX, sum
        MOV AH,09H
        INT 21H     
            
        add bh, 48
        mov dl, bh
        mov ah, 2
        int 21h
    
        add bl, 48
        mov dl, bl
        mov ah, 2
        int 21h
                  
        LEA DX, nl
        MOV AH,09H
        INT 21H 
                         
        ;Subtract two num            
        LEA DX,subS 
        MOV AH,09H
        INT 21H 
            
        mov ah, 1
        int 21h
        
        sub al, 48
        mov num, al  
                                    
        LEA DX, space
        MOV AH,09H
        INT 21H      
  
        mov ah, 1
        int 21h
        
        sub al, 48
        sub num, al
        mov al, num
        mov ah, 0
        aas
        mov bx, ax
        
        LEA DX, nl
        MOV AH,09H
        INT 21H 
        LEA DX, su
        MOV AH,09H
        INT 21H     
            
        add bh, 48
        mov dl, bh
        mov ah, 2
        int 21h
    
        add bl, 48
        mov dl, bl
        mov ah, 2
        int 21h 
           
        LEA DX, nl
        MOV AH,09H
        INT 21H  
              
        ;multiply           
        LEA DX,mulS 
        MOV AH,09H
        INT 21H 
            
        mov ah, 1
        int 21h
        
        sub al, 48
        mov num, al  
                                    
        LEA DX, space
        MOV AH,09H
        INT 21H      
  
        mov ah, 1
        int 21h
        sub al, 48 
        mov num2, al
        
        LEA DX, nl
        MOV AH,09H
        INT 21H
               
        mov al, num2
        mov bl, num
        mul bl   
        aam
        mov cl, al  
        mov dl, ah
        add dl, 48
        mov ah, 2
        int 21h   
    
        mov dl, cl
        add dl, 48
        mov ah, 2
        int 21h
        
        LEA DX, nl
        MOV AH,09H
        INT 21H    
               
        ;divosion 
        LEA DX,divS 
        MOV AH,09H
        INT 21H 
            
        mov ah, 1
        int 21h
        
        sub al, 48
        mov num, al  
                                    
        LEA DX, space
        MOV AH,09H
        INT 21H      
  
        mov ah, 1
        int 21h
        sub al, 48
        mov num2, al
                    
        mov ax, 0
        mov al, num
        mov bl, num2
        div bl

        mov bx, ax 

        LEA DX, nl
        MOV AH,09H
        INT 21H


        lea dx, rem
        mov ah, 9h
        int 21h   

        mov dl, bh
        add dl, 48
        mov ah, 2
        int 21h

        LEA DX, nl
        MOV AH,09H
        INT 21H

        lea dx, quo
        mov ah, 9h
        int 21h

        mov dl, bl
        add dl, 48
        mov ah, 2
        int 21h
        
 ;interrupt to exit
 MOV AH,4CH
 INT 21H 
  
MAIN ENDP 
END MAIN 