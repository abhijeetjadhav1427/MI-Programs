DATA SEGMENT
    X DW 1234H, 5678H
    Y DW 9874H, 5612H
    Z DW ?
DATA ENDS
ASSUME CS:CODE,DS:DATA
CODE SEGMENT
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV SI,OFFSET X     
    MOV AX,[SI]
    MOV DI,OFFSET Y
    MOV BX,[DI]
    MOV BP,OFFSET Z  
    ADD AX,BX
    MOV CX,AX
    MOV [BP],AX     
    MOV AX,[SI+2]
    MOV BX,[DI+2]
    ADD AX,BX 
     MOV CX,AX
    MOV [BP+2],AX
    MOV AX,[SI+2]
    MOV BX,[DI+2]
    ADD AX,BX  
    MOV CX,AX
    MOV [BP+2],AX
    
CODE ENDS
END START
 