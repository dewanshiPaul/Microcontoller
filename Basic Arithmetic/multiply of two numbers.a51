// Write an 8051 ASM program to perform multiplication of two 8-bit numbers present in data memory address location 33H and 34H and store the result in 36H(higher byte) and 35H(lower byte)

ORG 00H
	MOV A,33H
	MOV B,34H
	MUL AB
	MOV 35H,A
	MOV 36H,B
END