DATA SEGMENT
    X DB 28H
    Y DB 02H
DATA ENDS
ASSUME CS:CODE DS:DATA
CODE SEGMENT
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV AX,0000H
    MOV AL,X
    MOV BL,Y
    DIV BL
CODE ENDS
END START