DATA SEGMENT
    X DW 1234H
DATA ENDS
ASSUME CS:CODE DS:DATA
CODE SEGMENT
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV AX,X
    MOV BX,AX
    AND BX,000FH
    ROR AX,4
    AND AX,0FFFH
CODE ENDS
END START