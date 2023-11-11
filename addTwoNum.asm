.model small
.stack 100h
.data
    msg1 db "Enter a number: $"
    msg2 db 13,10,"Enter another number: $", 13, 10
    msg3 db "Result: $"  
    newline db 13,10,"$"     
    num1 db ?
    num2 db ?
    
.code
    main proc
        mov ax, @data
        mov ds, ax   
        
        lea dx, msg1    ;move string to dx using lea, dx holds the output
        mov ah, 9
        int 21h
        
        mov ah, 1      ;take user input in "al"
        int 21h                                
        
        sub al, 48 
        mov num1, al
        
        lea dx, msg2
        mov ah, 9
        int 21h
                 
        mov ah, 1
        int 21h
                    
        sub al, 48
        
        mov num2, al        
        add al, num1 
        add al, 48
        mov num1, al 

        mov dl, al
        mov ah, 2
        int 21h
    