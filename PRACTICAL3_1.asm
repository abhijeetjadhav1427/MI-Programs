DATA SEGMENT
    X DW 0008H
DATA ENDS
ASSUME CS:CODE DS:DATA
CODE SEGMENT
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV AX,X
    NEG AX
    SUB AX,1
CODE ENDS
END START