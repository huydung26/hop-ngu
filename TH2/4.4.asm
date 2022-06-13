org 100h
.DATA
    tbao1 DB 10,13, '$'
    tbao DB 'Xin chao $' 
.CODE 
mov ax, @DATA
mov ds, ax  
mov dx, offset buffer
mov ah, 0ah
int 21h
jmp print
buffer db 10,?, 10 dup(' ')
print:  
mov ah, 09h
mov dx, offset tbao1
int 21h
mov ah, 09h
mov dx, offset tbao
int 21h
xor bx, bx
mov bl, buffer[1]
mov buffer[bx+2], '$'
mov dx, offset buffer + 2
mov ah, 9
int 21h
ret
END