DSEG SEGMENT
    tbao DB 10,13, 'Hay nham mot phim: $'
    kqua DB ?
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
    mov dl, al
    mov ah, 02h
    int 21h
    mov ah, 4Ch
    int 21h
CSEG ENDS
END start