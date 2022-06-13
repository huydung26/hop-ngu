CSEG SEGMENT
ASSUME CS: CSEG
start: mov ah, 02h ; Ham 2, in mot ky tu ra man hinh
mov dl, 'B' ; DL chua ky tu can in
int 21h ; Goi ngat de thuc hien ham
mov ah, 08h ; Hàm 08h, ngat 21h
int 21h
mov ah, 4Ch ; Thoat khoi chuong trinh
int 21h
CSEG ENDS
END start
