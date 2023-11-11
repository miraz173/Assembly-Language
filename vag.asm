
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.data
 vfall db 10, 13, "vagfall: $" 
 .code
mov al, 9
mov bl, 3
div bl

mov bx, ax

mov dl, bh
add dl, 48
mov ah, 2
int 21h

lea dx, vfall
mov ah, 9h
int 21h

mov dl, bl
add dl, 48
mov ah, 2
int 21h

ret




