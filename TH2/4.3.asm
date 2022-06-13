DSEG SEGMENT 
    tbao DB 10,13, 'Hay nham mot phim: $'  
    tbao2 DB 10,13, 'Phim da nhap la: $'
    tbao3 DB 10,13, 'Ky tu ke truoc la: $'
    tbao4 DB 10,13, 'Ky tu ke sau la: $'
    kqua DB ?
    kqua1 DB ?
    kqua2 DB ?
DSEG ENDS
CSEG SEGMENT
    ASSUME CS: CSEG, DS: DSEG
    start: mov ax, DSEG
    mov ds, ax
    mov ah, 09h ;In thon bao
    lea dx, tbao
    int 21h
    mov ah, 01h ;Nhap ky tu tu ban phim
    int 21h
    mov kqua, al
    mov bl , al
    mov cl , al
    sub bl, 1h
    add cl, 1h
    mov ah, 09h ;In thon bao
    lea dx, tbao2
    int 21h
    mov ah, 02h
    mov dl, kqua
    int 21h 
    mov ah, 09h ;In thon bao
    lea dx, tbao3
    int 21h 
    mov ah, 02h
    mov dl, bl
    int 21h
    mov ah, 09h ;In thon bao
    lea dx, tbao4
    int 21h
    mov ah, 02h
    mov dl, cl
    int 21h
    mov ah, 4Ch
    int 21h
CSEG ENDS
END start