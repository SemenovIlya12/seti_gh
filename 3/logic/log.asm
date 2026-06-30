

LDA x1
MOV B, A

LDA x2
CMA
ANI 1
MOV C, A

LDA x3
CMA
ANA C
MOV C, A

LDA x4
XRA C
MOV C, A

MOV A,B
ORA C
STA r
HLT

x1:   DB 0
x2:   DB 1
x3:   DB 1
x4:   DB 1
r:   DB 0


