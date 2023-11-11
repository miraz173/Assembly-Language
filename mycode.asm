.model small
.stack 100h      ;256 byte, bcz (100)Hexa = (256)Decimal
.data
    A DW 7
    B DW 3
    C DW ?
    D DW 48
.code
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AX, A
    ADD AX, B
    ADD AX, D
    MOV D, AX
    
    MOV DX, D
    MOV AH, 2
    INT 21H      
    
    MOV AH, 1
    INT 21H  
    
    MOV D, DX
    MOV DX, AX
    
    MOV AH, 2
    INT 21H    
    
    mov ah, 4ch
    int 21h
    
    main endp
        end main