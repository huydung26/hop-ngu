DSEG SEGMENT
    max DB 30
    len DB 0    ;len thay doi theo so luong ky tu nhap vao
    chuoi DB 30 dup(?)
    tbao DB 'Hay go vao mot chuoi: $'
DSEG ENDS
CSEG SEGMENT
    ASSUME CS: CSEG, DS: DSEG
    start: mov ax, DSEG
    mov ds, ax
    mov ah, 09h ;In thong bao
    lea dx, tbao
    int 21h
    mov ah, 0Ah ;Nhap chuoi ky tu tu ban phim
    lea dx, MAX ;DX chua dia chi vung dem ban phim, chi co the nhap duoc toi da 30(MAX = 30) ky tu, qua khong nhan tu phim nua
    int 21h
    mov ah, 4Ch
    int 21h
CSEG ENDS
END start