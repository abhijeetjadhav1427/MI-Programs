DATA SEGMENT
    X DW 0045H
    Y DW 0012H
DATA ENDS
ASSUME CS:CODE DS:DATA
CODE SEGMENT
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV AX,X
    MOV BX,Y
    ADD AX,BX
CODE ENDS
END START