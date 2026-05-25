

; B -X1, C- X2, D - X3, E - X4

LXI H, X1
MOV B, M
INX H
MOV C, M
INX H
MOV D, M
INX H
MOV E, M
INX H

;   (X2+X1-X4)
MOV A, C
ADD B
SUB E
MOV C, A   ; (X2+X1-X4) -> C

; X3-C
MOV A, D
SUB C

MOV M, A
HLT

X1:
   DB 3
X2:
   DB 12
X3:
   DB 17
X4:
   DB 3
Y:
   DB 0