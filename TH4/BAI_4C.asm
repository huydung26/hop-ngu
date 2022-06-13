inchuoi MACRO chuoi
        MOV AH, 9h
        LEA DX, chuoi
        INT 21h
        ENDM
DSEG SEGMENT
    msg1 DB "Hay nhap 1 ky tu: $"
    msg2 DB "Ma ASCII o dang Dec: $"
    xdong DB 10, 13, '$'
    kytu DB ?
DSEG ENDS
CSEG SEGMENT
    ASSUME CS:CSEG, DS:DSEG
begin: MOV AX, DSEG
    MOV DS, AX
    inchuoi msg1
    MOV AH, 01h
    INT 21h
    MOV kytu, AL ; cat ky tu nhan duoc
    inchuoi xdong
    inchuoi msg2
    XOR AX, AX
    MOV AL, kytu ; Ky tu can in
    CALL dec_out
    MOV AH, 01
    INT 21h
    MOV AH, 4Ch ; thoat  
    INT 21h
dec_out PROC
        XOR CX,CX ; CX dem chu so thap phan
        MOV BX,10
 chia10: XOR DX,DX
        DIV BX ; DX:AX€BX => AX: Thuong, DX: so du
        PUSH DX ; Cat so du stack
        INC CX
        CMP AX, 0
        JNZ chia10 ; neu AX>0 thi chia tiep cho 10
 inra: MOV AH,2 ; in ra man hinh
        POP DX ; lay chu so thap phan   
        ADD DL,30h ; doi thanh ky tu so
        INT 21h
        LOOP inra
        RET
dec_out ENDP
CSEG ENDS
    END begin