/*
  James Woods
  Cite: n/a
  I pledge my honor that I have
  abided by the Stevens Honor System
*/

     /*
     R0 - NUMBER TO BE MULTIPLIED
     R1 - NUMBER OF TIMES TO MULTIPLY
     R2 - PRODUCT
     */

     PUSH {R1, R2}
     LDR R2, R0
     
.loop:
     
     CMP R1, #1
     BEQ .exit
     MUL R2, R0
     SUB R1, #1
     CMP R1, #1
     BGT .loop
     BX LR
     
.exit:
     LDR R0, R1
     BX LR
