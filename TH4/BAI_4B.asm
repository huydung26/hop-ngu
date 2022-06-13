inchuoi MACRO chuoi
        MOV AH, 9h
        LEA DX, chuoi
        INT 21h
        ENDM
DSEG SEGMENT
    msg1 DB "Hay nhap 1 ky tu: $"
    msg2 DB "Ma ASCII o dang Hex: $"
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
    MOV BH, kytu ; Ky tu can in
    CALL hex_out
    MOV AH, 02 ; in ra ky tu h sao so Hex
    MOV DL, 'h'
    INT 21h
    MOV AH, 01
    INT 21h
    MOV AH, 4Ch ; thoat 
    INT 21h
hex_out PROC
    MOV CX, 4
    xuat:PUSH CX
        MOV CL, 4
        MOV DL, BH
        SHR DL, CL
        CMP DL, 09h
        JA mkytu
        ADD DL, 30h ; Doi thanh ky so '0'-'9'
        JMP inra
    mkytu:ADD DL, 37h ; Doi thanh ky tu 'A' - 'F'
    inra:MOV AH, 02h ; In ra man hinh ky tu da doi
        INT 21h
        SHL BX, CL ; Quay trai BX 4 bit
        POP CX
        LOOP xuat
        RET
hex_out ENDP
CSEG ENDS
    END begin