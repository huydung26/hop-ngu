DSEG SEGMENT 
    chuoi DB 'KMA', 10,13, '2022', 10,13, 'Khoa ATTT $'
    tbao DB 10,13, 'Hay nham mot phim: $'  
    tbao2 DB 10,13, 'Phim da nhap la: $'
    kqua DB ?
DSEG ENDS
CSEG SEGMENT
    ASSUME CS: CSEG, DS: DSEG
    start: mov ax, DSEG
    mov ds, ax
    mov ah, 09h ;In thon bao
    lea dx, chuoi
    int 21h
    mov ah, 09h ;In thon bao
    lea dx, tbao
    int 21h
    mov ah, 01h ;Nhap ky tu tu ban phim
    int 21h
    mov kqua, al
    mov ah, 09h ;In thon bao
    lea dx, tbao2
    int 21h
    mov ah, 02h
    mov dl, kqua
    int 21h
    mov ah, 4Ch
    int 21h
CSEG ENDS
END start