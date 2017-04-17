	TTL maxValue
	AREA matrix,Code , READONLY
	ENTRY
	
	LDR R1,=matrix  ;initial address of matrix
	MOV R0,#0       ;int max
	MOV R2,#0       ;int i = 0
	MOV R3,#25      ;int length = 25
	
	LDRB R0,[R1]    ;max = dizi[0][0]
	LDRB R9,[R1]    ;int temp = max
	
loop
	CMP R2,R3   
	BEQ BREAK
	CMP R9,R0 
	BGT GREATER
	LDRB R0,[R1],#4 ;Next element of matrix
	ADD R2,#1       ;i++
	B loop
	
GREATER
	MOV R0,R9       ;if (temp > max) max = temp
	
BREAK				;if (i == length) break
	
	DCD matrix 1,2,3,4,5
		       6,7,8,9,10
			   11,12,13,14,15
			   16,17,18,19,20
			   21,22,23,24,25
			  
	
	END