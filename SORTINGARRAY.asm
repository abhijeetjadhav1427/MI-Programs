DATA SEGMENT
    X DB 12H,42H,10H,30H,01H
    DATA ENDS
ASSUME CS:CODE DS:DATA
CODE SEGMENT
    START:
    MOV AX,DATA
    MOV DS,AX  
    MOV CH,05H
 LOOP1:    
    MOV CL,04H   
    MOV SI,OFFSET X
    LOOP2:
        MOV AL,[SI]
        CMP AL,[SI+1]
        JC LOOP3
        XCHG AL,[SI+1]
        MOV [SI],AL
    LOOP3:
        DEC CL
        INC SI 
        JNZ LOOP2
        DEC CH
        JNZ LOOP1 
        MOV CL,05H
        JZ LOOP4

LOOP4: 
    MOV SI,OFFSET X
    MOV AL,[SI]
    DEC CL
    JNZ LOOP4
    HLT
    
        
    
CODE ENDS
END START