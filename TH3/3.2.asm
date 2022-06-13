DSEG SEGMENT
    tbao1 DB 10,13, "Ky tu HOA.$"
    tbao2 DB 10,13, "Ky tu thuong.$" 
    tbao3 DB 10,13, "Ky tu khac.$"
    enter DB 10,13, " $"
DSEG ENDS
CSEG SEGMENT
    ASSUME CS: CSEG, DS: DSEG
start:mov ax, DSEG
    mov ds, ax
    mov ah, 01h
    int 21h
    cmp al, 'A' ; so sanh voi 'Z'
    jnb temp1 ; Neu lon hon => ky tu thuong
    jmp khac  
temp1:
    cmp al, 'Z'
    jna hoa
    jmp temp2
    
temp2:
    cmp al, 'a'
    jnb tmp3
tmp3:
    cmp al, 'z'
    jna thuong
    jmp khac    
hoa:
    mov ah, 09
    lea dx, tbao1 ; in "Ky tu HOA"
    int 21h
    jmp exit
thuong:
    mov ah, 09 ; in "Ky tu thuong"
    lea dx, tbao2
    int 21h
    jmp exit
khac:
    mov ah, 09
    lea dx, tbao3 ; in "Ky tu HOA"
    int 21h
exit:mov ah, 7
    int 21h
    mov ah, 4Ch
    int 21h
CSEG ENDS
END start