.MODEL SMALL
.STACK 100h
.DATA
    KQUA1 DD ?  
    KQUA2 DW ?
    KQUA3 DW ?
    KQUA4 DW ?
    KQUA5 DW ?
    KQUA6 DW ?
    A1 DW 15h
    B1 DW 250
    A2 DW 16
    B2 DW 0AF1h
    A3 DW 300
    B3 DW 400
    A4 DW 1000
    B4 DW 100
    A5 DW 1000
    B5 DW 100h
    A61 DW 0B45Eh
    A62 DW 3Ah
    B6 DW 0A1h
.CODE
    ;Lay du lieu ta DATA vao DS 
    MOV AX, @DATA
    MOV DS, AX
    
    ;Tinh Tong
    ;MOV AX, A
    ;ADD AX, B
    
    ;Tinh Hieu
    ;MOV AX, A
    ;SUB AX, B
    
    ;Tinh Tich
    ;MOV AX, A1
    ;MOV BX, B1
    ;MUL BX
    ;MOV KQUA1, AX
    
    ;MOV AX, A2
    ;MOV BX, B2
    ;MUL BX
    ;MOV KQUA2, AX 
    
    ;MOV AX, A3
    ;MOV BX, B3
    ;MUL BX
    ;MOV KQUA3, AX
    
    ;Tinh Thuong
    ;MOV AX, A4
    ;MOV BX, B4
    ;DIV BX
    ;MOV KQUA4, AX
    
    ;MOV AX, A5
    ;MOV BX, B5
    ;DIV BX
    ;MOV KQUA5, AX
        
    MOV AX, A61
    MOV DX, A62
    DIV B6
    MOV KQUA6, AX
    
    
    ;Thoat chuong trinh
    MOV AH, 4Ch
    INT 21h  
END