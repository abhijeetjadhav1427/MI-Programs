DATA SEGMENT
    X DW 0006H
DATA ENDS
ASSUME CS:CODE DS:DATA
CODE SEGMENT
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV AX,X
    NEG AX
CODE ENDS
END START