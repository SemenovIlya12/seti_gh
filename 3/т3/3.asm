
LXI H, ARRAY
   MVI C, 10
   XRA A
LOOP:
   ADD M
   INX H
   DCR C
   JNZ LOOP
   MOV M,A
   HLT 

ARRAY:
   DB 1, 2, 3, 4, 5, 6, 7, 8, 9, 10