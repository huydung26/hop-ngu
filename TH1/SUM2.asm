.MODEL SMALL
.STACK 100h
.DATA
    KQUA DW ?
    A DW 1000
    B DW 10
    C DW 1Fh
    D DW 30h
    E DW 300Ah
.CODE
    ;Lay du lieu ta DATA vao DS 
    MOV AX, @DATA
    MOV DS, AX
    
    ;Tinh Tong
    MOV AX, A
    ADD AX, B
    SUB AX, C
    ADD AX, D
    ADD AX, E
    
    MOV KQUA, AX    ;KQUA = 340Dh
    
    ;Thoat chuong trinh
    MOV AH, 4Ch
    INT 21h  
END