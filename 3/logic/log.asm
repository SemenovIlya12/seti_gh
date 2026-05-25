MVI B, 0  ; x1=0
MVI C, 1  ; x2=1
MVI D, 1  ; x3=1
MVi E, 0    ; x4=0


;  NOT x1 AND x2
MOV A, B     ; x1 -> A
CMA            ; !A (00000000 -> 11111111)
ANI 1      ; A побитно AND 00000001 = 1 (1h) ->  A
ANA C         ; A AND C(x2)
MOV H, A    ; A(result) -> H

; H OR NOT D(x3)
MOV A, D   ; D -> A
CMA           ; !A (00000001 -> 11111110) 
ANI 1       ; A побитно AND 00000001 = 0 -> A
ORA H      ; H OR A 

; A XOR E(x4)
XRA E

STA RESULT
HLT

RESULT:
   DB 0
