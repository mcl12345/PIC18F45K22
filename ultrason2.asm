
_main:

;ultrason2.c,3 :: 		void main() {
;ultrason2.c,4 :: 		TRISA = 0;           // set direction to be output
	CLRF        TRISA+0 
;ultrason2.c,5 :: 		TRISB = 0;           // set direction to be output
	CLRF        TRISB+0 
;ultrason2.c,6 :: 		TRISC = 0;           // set direction to be output
	CLRF        TRISC+0 
;ultrason2.c,7 :: 		TRISD = 0;           // set direction to be output
	CLRF        TRISD+0 
;ultrason2.c,8 :: 		TRISE = 0xFF;        // set direction to be input
	MOVLW       255
	MOVWF       TRISE+0 
;ultrason2.c,9 :: 		RE1_bit = 1;
	BSF         RE1_bit+0, BitPos(RE1_bit+0) 
;ultrason2.c,11 :: 		LATA =  0x00;
	CLRF        LATA+0 
;ultrason2.c,12 :: 		LATB =  0x00;
	CLRF        LATB+0 
;ultrason2.c,13 :: 		LATC =  0x00;
	CLRF        LATC+0 
;ultrason2.c,14 :: 		LATD =  0x00;
	CLRF        LATD+0 
;ultrason2.c,15 :: 		LATE =  0x00;
	CLRF        LATE+0 
;ultrason2.c,17 :: 		while ( RE0_bit & 1 ) {
L_main0:
	BTFSC       RE0_bit+0, BitPos(RE0_bit+0) 
	GOTO        L__main3
	BCF         4056, 0 
	GOTO        L__main4
L__main3:
	BSF         4056, 0 
L__main4:
	BTFSS       4056, 0 
	GOTO        L_main1
;ultrason2.c,18 :: 		compteur = compteur + 1;
	INFSNZ      _compteur+0, 1 
	INCF        _compteur+1, 1 
;ultrason2.c,20 :: 		LATA =  0xFF;
	MOVLW       255
	MOVWF       LATA+0 
;ultrason2.c,21 :: 		LATD =  compteur * 10 /58;
	MOVF        _compteur+0, 0 
	MOVWF       R0 
	MOVF        _compteur+1, 0 
	MOVWF       R1 
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       58
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       LATD+0 
;ultrason2.c,22 :: 		}
	GOTO        L_main0
L_main1:
;ultrason2.c,23 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
