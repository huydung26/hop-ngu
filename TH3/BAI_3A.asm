DSEG SEGMENT
    tbao1 DB 10,13, "Ky tu HOA.$"
    tbao2 DB 10,13, "Ky tu thuong.$" 
    enter DB 10,13, " $"
DSEG ENDS
CSEG SEGMENT
    ASSUME CS: CSEG, DS: DSEG
start:mov ax, DSEG
    mov ds, ax
    mov ah, 01h
    int 21h
    cmp al, 'Z' ; so sanh voi 'Z'
    ja nhan ; Neu lon hon => ky tu thuong
    mov ah, 09 ; Neu khong lon hon => ky tu HOA
    lea dx, enter
    int 21h 
    ;mov ah, 09
    lea dx, tbao1 ; in "Ky tu HOA"
    int 21h
    jmp exit
nhan: mov ah, 09 ; in "Ky tu thuong"
    lea dx, tbao2
    int 21h
exit:mov ah, 7
    int 21h
    mov ah, 4Ch
    int 21h
CSEG ENDS
END start