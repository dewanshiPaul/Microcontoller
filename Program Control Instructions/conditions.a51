//Write an 8051 ASM program to read a temperature value T from RAM location 55H. According to the test results, place the temperature value into the registers indicated below: 
// if T=30H then A=30H
// if T<30H then R1=T
// if T>30H then R2=T

ORG 00H
	MOV A,55H          ; read value from 55h memory
	CJNE A,#30H,L1     ; if A=30H then CJNE breaks else it move L1 line
	SJMP EXIT		   ; jumps to EXIT line 
	L1: JNC L2         ; CJNE = op1-op2. If op1>op2, then carry flag is 0 and JNC jumps to L2 line
		SJMP L3        ; if op1<op2, then JNC beaks and jumps to L3 line
	L2: MOV R2,A	   ; store accumulator value in R2
	L3: MOV R1,A       ; store accumulator value in R1
	EXIT: NOP          ; no operation to execute
END	
