ORG 0000H
MOV A,#38H
ACALL COMNWRT
ACALL DELAY
MOV A,#0EH
ACALL COMNWRT
ACALL DELAY
MOV A,#01
ACALL COMNWRT
ACALL DELAY
MOV A,#006H
ACALL COMNWRT
ACALL DELAY
MOV A,#86H
ACALL COMNWRT
ACALL DELAY
MOV A,#'E'
ACALL DATAWRT
ACALL DELAY
MOV A,#'M'
ACALL DATAWRT
ACALL DELAY
MOV A,#'B'
ACALL DATAWRT
ACALL DELAY
MOV A,#'E'
ACALL DATAWRT
ACALL DELAY
MOV A,#'D'
ACALL DATAWRT
ACALL DELAY
MOV A,#'D'
ACALL DATAWRT
ACALL DELAY
MOV A,#'E'
ACALL DATAWRT
ACALL DELAY
MOV A,#'D'
ACALL DATAWRT 
AGAIN: SJMP AGAIN 
COMNWRT:
MOV P1, A
CLR P3.5
CLR P3.4
SETB P3.3
ACALL DELAY
CLR P3.3
RET
DATAWRT:
MOV P1,A
SETB P3.5
CLR P3.4
SETB P3.3
ACALL DELAY
CLR P3.3
MOV R2 , #20
DELAY: DJNZ R2,DELAY
STR: DB 'EMBEDED',0

RET

