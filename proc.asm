code segment
    start:mov ax,0008h 
    mov bx,0003h
    add ax,bx
    call xyz
    mov cx,0004h
    hlt
    xyz proc near 
        mov bx,0004h
        mov cx,0003h
        add bx,cx
        ret 
        xyz endp
    code ends           
end start