/*Write an 8051 ASM program to perform addition of two 16-bit numbers. The numbers are 3CE7H and 3B8DH. Place the sum in R6 and R7. R7 holds higher byte abd R6 should have the lower byte. */

ORG 00H
	MOV A,#0E7H  ; store lower last two bit first number 
	ADD A,#8DH   ; add lower last two bit of 2nd number
	MOV R6,A     ; store result in R6
	//CLR A
	MOV A,#3CH   ; store higher two bits of first number
	ADDC A,#3BH  ; add higher two bits of second number
	MOV R7,A     ; store result in R7
END