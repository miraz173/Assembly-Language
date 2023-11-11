
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here   
.data
    vajjo db 10, 13, "vajjo: $"
    vajok db 10, 13, "vajok: $" 
    vfall db 10, 13, "vagfall: $"
    vsesh db 10, 13, "vagsesh: $"
.code
mov dx, @DATA
mov ds, dx
          

lea dx, vajok
mov ah, 9h
int 21h

mov ah, 1
int 21h
mov bl, al
sub bl, 48

lea dx, vajjo
mov ah, 9h
int 21h      


mov ah, 1
int 21h 
sub al, 48

;mov al, 7
;mov bl, 3
div bl  
aad
mov cx, ax 

lea dx, vsesh
mov ah, 9h
int 21h

mov dl, ch
add dl, 48
mov ah, 2
int 21h

lea dx, vfall
mov ah, 9h
int 21h 

mov dl, cl
add dl, 48
mov ah, 2
int 21h

ret




