DSEG SEGMENT
tenfile db 100 dup <?>,0
thefile dw ?
DSEG ENDS
CSEG SEGMENT
ASSUME cs:cseg, ds:dseg
begin:  
mov ax, dseg
mov ds, ax  
        
mov ah, 1
lea si, tenfile

abc:
int 21h
cmp al, 0dh
jz thoat
mov [si], al
inc si
jmp abc



thoat:

mov ah, 3ch ; tao tap tin moi
lea dx, tenfile
;mov cx, 0 ; thuoc tinh tap tin
    
int 21h
mov thefile, ax ; cat the file
mov ah, 3eh ; dong tap tin
mov bx, thefile
int 21h
mov ah, 4ch ; thoat ve Dos
int 21h
CSEG ENDS
END begin