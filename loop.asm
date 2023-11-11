.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov dx, ax
    
    mov cx, 10
    mov dx, 48
    
    kakku:
    mov ah, 2
    int 21h
    inc dx
    dec cx
    jnz kakku