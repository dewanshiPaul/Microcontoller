/* program to perform addition of two 8-bit numbers 97H and 76H and stores the result at address location 55H */

//immediate addressing mode - Here values are stores in registers from code

ORG 00H
	MOV A,#97H ; A = 97H
	ADD A,#76H ; A = A + 76H
	MOV 55H,A  ; 55H = A
END

//direct addressing mode - code addresses to memory where user will give input and store it in a memory

ORG 00H
	MOV A,50H ; A stores values present in 50H. 
	ADD A,51H ; A has added value of it with value entered in 51H memory
	MOV 55H,A ; 55H has A value stored in it
END

//indirect addressing mode - code access values stored in some other memory via r0 and r1 registers which points to that place

ORG 00H
	MOV R0,#50H ; R0 points to 50H memory
	MOV R1,#55H ; R1 points to 55H memory
	MOV A,@R0   ; A stores data pointed by R0
	MOV R0,#51H ; R0 points to 51H memory. 
	//INC R0    ; It can also be done by incrementing the R0 value
	ADD A,@R0   ; A stores added value with data pointed by R0
	MOV @R1,A   ; R1 stores value stored by A
END