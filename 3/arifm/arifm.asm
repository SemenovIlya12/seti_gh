

; (x3-x2) -> B
LDA x2
MOV B, A
LDA x3
SUB B
MOV B, A

; (x1+x4)
LDA x1
MOV C,A
LDA x4
ADD C
MOV C, A

; B+C
MOV A,B
ADD C
STA r
HLT

x1:   DB 1
x2:   DB 2
x3:   DB 3
x4:   DB 5
r:   DB 0