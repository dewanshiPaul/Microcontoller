//write a program to clear accumulator, then add 5 to the accumulator 20 times and store the result in R7

ORG 00H              ; initialisation
	CLR A            ; clearing accumulator
	MOV R0,#20       ; loop 20 times. so store 20 in a register
	L1: ADD A,#5     ; add 5 to the accumulator l1 is the lable given to the statement in order to move the controller to it for looping
		DJNZ R0,L1   ; looping statement which decrements everytime L1 is executed
	MOV R7,A         ; store accumulator value in R7
END                  