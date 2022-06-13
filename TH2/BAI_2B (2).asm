DSEG SEGMENT
    chuoi DB 'Chao sinh vien ATTT $'
DSEG ENDS
CSEG SEGMENT
    ASSUME CS: CSEG, DS: DSEG
    start: mov ax, DSEG
    mov ds, ax
    mov ah, 09h     ;In chuoi ky tu ra man hinh
    lea dx, chuoi   ;dl chua ky tu can in  
    int 21h
    mov ah, 08h
    int 21h
    mov ah, 4Ch
    int 21h
CSEG ENDS
END start