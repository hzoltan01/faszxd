 .MODEL SMALL
.STACK 100H
.DATA

M1  DB  'Fasz XD',0DH,0AH,'$'
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX

MOV CX,1000000
PRINT_LOOP:

MOV AH,9
LEA DX,M1
INT 21H
DEC CX

JNZ PRINT_LOOP

MOV AH,4CH
INT 21H

MAIN ENDP
END MAIN
