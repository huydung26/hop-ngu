CSEG SEGMENT
ASSUME CS: CSEG
start:mov dl, 'Z' ; DL chua ky tu dau tien 'A'
nhan:mov ah, 02h ; in ky tu trong DL ra man hinh
    int 21h
    dec dl ; DL chua ky tu ke can in
    cmp dl, 'A' ; So sanh DL voi 'Z'
    jnb nhan ; Neu <= 'Z' thi tiep tuc in
    mov ah, 08h ; Neu > 'Z' thi thoat (khong in tiep)
    int 21h
    mov ah, 4Ch
    int 21h
CSEG ENDS
END start