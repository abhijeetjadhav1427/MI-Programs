DATA SEGMENT
    X DW 9856H
    Y DW 7539H
DATA ENDS
ASSUME CS:CODE,DS:DATA
CODE SEGMENT
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV AX,X
    MOV BX,Y
    ADD AX,BX
CODE ENDS
END START
 