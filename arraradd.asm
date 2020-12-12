data segment
    x db 01h,02h,03h,04h
data ends
assume cs:code ds:data
code segment
    start:mov ax,data
    mov ds,ax
    mov si,offset x 
    mov cl,04h
    loop1:add al,[si]
          dec cl
          jnz loop2
          hlt
    loop2:inc si
          jmp loop1  
          code ends
end start