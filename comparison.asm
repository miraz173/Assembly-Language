.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 7
    mov dx, 8
    cmp cx, dx
    jge l1                        
    
    add dx, 48
    mov ah, 2
    int 21h
    jmp l2
    
    l1:      
    mov dx, cx  
    add dx, 48
    mov ah, 2
    int 21h
    
    l2:
    main endp
    end main
       
    