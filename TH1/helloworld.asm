DSEG SEGMENT;Tao doan DSEG
    chuoi DB "Hello World!$";Khai bao bien chuoi
DSEG ENDS
CSEG SEGMENT;Tao doan CSEG
    ASSUME CS:CSEG,DS:DSEG;CSEG la doan lenh,DSEG la du lieu
begin:
    MOV AX, DSEG;Khoi dong dia chi doan du lieu
    MOV DS, AX
    MOV AH, 09h ;AH<-09h
    LEA DX,chuoi;DX<-dia chi offset bien chuoi
    INT 21h     ;goi ngat 21h
    MOV AH, 01h ;AH<-01h
    INT 21h     ;goi ngat 21h
    MOV AH,4Ch  ;Thoat chuong trinh
    INT 21h
CSEG ENDS
    END begin