/*
  James Woods
  Cite: n/a
  I pledge my honor that I have
  abided by the Stevens Honor System
	
	R0 - BASE
	R1 - EXPONENT/COUNTER
	R3 - PRODUCT
*/
	
	.globl _Z5powerjj
_Z5powerjj:	
	
	PUSH {R2}
	MOV R3, R0 	//MAKES PRODUCT EQUAL TO BASE 

.loop:

	CMP R1, #1	//checks if exponent is 1
	BEQ .leave	//branches to exit function

	MUL R3, R0	//MULTIPLIES PRODUCT BY BASE
	SUB R1, #1	//DROPS EXPONENT/COUNTER BY 1

	BGT .loop	//LOOPS BACK

.leave:
	MOV R0, R3	//SETS R0 TO PRODUCT
	POP {R2}
	BX LR		//RETURNS
     
     

	
	
