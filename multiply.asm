.model small 
.stack 100h
.data
.code
  main proc
    mov dx, @data
    mov ds, dx  
    mov al, 5
    mov bl, 7
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
    main endp
end main
;ret




