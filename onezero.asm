DATA segment     
    X DW 0011H
DATA ENDS
ASSUME CS: CODE, DS:DATA
CODE SEGMENT
    START:MOV AX,DATA
    MOV DS,AX
    MOV AX,x
    MOV BX,0000H
    MOV CX,0000H  
    MOV DX,0010H
    a:ROR AX,1
    JC o
    JNC z   
    
    o:INC BX
    JMP n         
    
    z:INC CX
    JMP n    
         
    n:DEC DX
    JNZ a
CODE ENDS 
END START
    