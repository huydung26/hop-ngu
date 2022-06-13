.MODEL SMALL
.STACK 100h
.DATA
    KQUA DW ?
    A DW 10
    B DW 8086
    C DW 100h
    D DW 350
    E DW 0FAh
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
    
    MOV KQUA, AX    ;KQUA = 20F8h
    
    ;Thoat chuong trinh
    MOV AH, 4Ch
    INT 21h  
END