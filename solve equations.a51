//solve equation w=(4z-y+2x)/3d where d=03h,x=08h,y=25h,z=12h
ORG 00H
	MOV A,#04H
	MOV B,#12H
	MUL AB
	MOV R0,A
	CLR A
	MOV A,#02H
	MOV B,#08H
	MUL AB
	ADDC A,R0
	MOV R0,A
	CLR A
	MOV A,R0
	SUBB A,#25H
	MOV R0,A
	CLR A
	MOV A,#03H
	MOV B,#03H
	MUL AB
	MOV R1,A
	MOV A,R0
	MOV B,R1
	DIV AB
	MOV R2,A
	MOV R3,B
END