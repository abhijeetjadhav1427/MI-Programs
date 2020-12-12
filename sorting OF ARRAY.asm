DATA SEGMENT
       X DB 99H,12H,56H,45H,36H
DATA ENDS   
CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START: MOV AX,DATA
       MOV DS,AX
       MOV CH,04H 
UP2: MOV CL,04H
     MOV SI, OFFSET X   
     UP1: MOV AL,[SI]
          MOV BL,[SI+1]
          CMP AL,BL
          JC DOWN
          MOV DL,[SI+1]
          XCHG [SI],DL
          MOV [SI+1],DL 
DOWN: INC SI
      DEC CL
      JNZ UP1
      DEC CH
      JNZ UP2 
      MOV SI, OFFSET X  
      MOV CL,05H 
      RES: MOV AL,[SI]
           DEC CL 
           JNZ LOOP1
           HLT
LOOP1: INC SI
       JMP RES
CODE ENDS
END START