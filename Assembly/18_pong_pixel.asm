STACK SEGMENT PARA STACK
	DB 64 DUP (' ')
STACK ENDS

DATA SEGMENT PARA 'DATA'

DATA ENDS

CODE SEGMENT PARA 'CODE'

	MAIN PROC FAR
					; https://en.wikipedia.org/wiki/INT_10H
					; https://en.wikipedia.org/wiki/BIOS_color_attributes
					; https://stanislavs.org/helppc/int_10-0.html
		MOV AH,00h	; set video mode
		MOV AL,13h	; video mode
		INT 10h		; execute configuration

		MOV AH,08h	; set config
		MOV BH,00h	; background color
		MOV BL,00h	; set color blue
		INT 10h
		
		MOV AH,0Ch	; set configuration to writing pixel
		MOV AL,0Fh	; choose white pixel color
		MOV BH,04h
		MOV CX,0Ah	; set the X position
		MOV DX,0Fh	; set the Y position
		INT 10h
		
		RET
	MAIN ENDP

CODE ENDS
END
