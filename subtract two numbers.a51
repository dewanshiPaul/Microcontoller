/* Write an 8051 ASM program to perform addition of two 8-bit numbers 76H and 97H and store the result at address location 55H */

//intermediate addressing
ORG 00H
	MOV A,#76H       ; A = 76H
	SUBB A,#97H      ; A = A - 97H
	MOV 55H,A        ; 55H = A
END
	
//direct addressing
ORG 00H
	MOV A,50H        ; A has access to data stored in 50H
	SUBB A,51H       ; A value gets updated after subtraction of the data stored in 51H
	MOV 55H,A        ; 55H = A
END

//indirect addressing
ORG 00H
	MOV R0,#50H       ; R0 points to 50H memory
	MOV R1,#55H       ; R1 points to 55H memory
	MOV A,@R0        ; A stores data pointed by R0
	MOV R0,#51H       ; R0 points to 51H memory
	SUBB A,@R0       ; A stores subtracted value with data pointed by R0
	MOV @R1,A        ; R1 stores value stored by A
END