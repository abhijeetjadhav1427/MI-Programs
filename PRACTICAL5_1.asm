DATA SEGMENT
    X DB 09H
    Y DB 02H
DATA ENDS
ASSUME CS:CODE DS:DATA
CODE SEGMENT
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV AL,X
    MOV AH,Y
    SUB AL,AH
CODE ENDS
END START