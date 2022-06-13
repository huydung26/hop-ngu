DSEG SEGMENT
    space DB ' $'
DSEG ENDS
CSEG SEGMENT
ASSUME CS: CSEG, DS: DSEG
start:
    mov ax, DSEG
    mov ds, ax
    mov bl, 'A' ; DL chua ky tu dau tien 'A' 
    mov cx, 26
nhan:
    mov dl, bl
    mov ah, 02h ; in ky tu trong DL ra man hinh
    int 21h
    mov ah, 09h
    lea dx, space
    int 21h
    inc bl ; DL chua ky tu ke can in
    ;cmp dl, 'Z' ; So sanh DL voi 'Z'
    loop nhan
    ;jnb nhan ; Neu <= 'Z' thi tiep tuc in
    mov ah, 08h ; Neu > 'Z' thi thoat (khong in tiep)
    int 21h
    mov ah, 4Ch
    int 21h
CSEG ENDS
END start