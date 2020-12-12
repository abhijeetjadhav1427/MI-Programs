data segment
    x dw 0011h  
data ends
Assume cs: code ds: data  

code segment 
    start:  
    
    mov ax,data
    mov ds,ax
    mov ax,x  
    mov dx,x
    mov bx,0000h
    mov cx,10h
    one: 
        ror dx,1
        jc next 
        jmp loop1
    next:
    inc bx
    jmp one
    loop1:
    dec cx
    
code ends
end start