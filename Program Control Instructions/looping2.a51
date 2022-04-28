//write an 8051 ASM program to copy a block of 5 bytes from RAM 50H to 40H.
//50H: 11 22 33 44 55
//transfer to 40H
//ORG 00H
	//in this method, we add current loop value to the R0 and R1. Transfer data corresponding to that value. Loop executes 4 times and at last we tranfer data once from 50h to 40h
	// trasfer data direction from right to left
	/*MOV R2,#4
	L1: MOV R0,#40H
		MOV R1,#50H
		MOV A,R0
		ADD A,R2
		MOV R0,A
		CLR A
		MOV A,R1
		ADD A,R2
		MOV R1,A
		CLR A
		MOV A,@R1
		MOV @R0,A
		CLR A
	    DJNZ R2,L1
		DEC R0
		DEC R1
		MOV A,@R1
		MOV @R0,A*/
		//in this method, we increment R1 and R0 as loop execute and trasnfer data corresponding to address
		//transfer data from left to right
		/*MOV R0,#40H
		MOV R1,#50H
		MOV R2,#5
		L1: MOV A,@R1
			MOV @R0,A
			INC R0
			INC R1
			DJNZ R2,L1*/
END