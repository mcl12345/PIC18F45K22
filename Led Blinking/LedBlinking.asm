
_main:

;LedBlinking.c,25 :: 		void main() {
;LedBlinking.c,27 :: 		TRISA = 0;           // set direction to be output
	CLRF        TRISA+0 
;LedBlinking.c,28 :: 		TRISB = 0;           // set direction to be output
	CLRF        TRISB+0 
;LedBlinking.c,29 :: 		TRISC = 0;           // set direction to be output
	CLRF        TRISC+0 
;LedBlinking.c,30 :: 		TRISD = 0;           // set direction to be output
	CLRF        TRISD+0 
;LedBlinking.c,31 :: 		TRISE = 0;           // set direction to be output
	CLRF        TRISE+0 
;LedBlinking.c,33 :: 		do {
L_main0:
;LedBlinking.c,34 :: 		LATA = 0x00;       // Turn OFF LEDs on PORTA
	CLRF        LATA+0 
;LedBlinking.c,35 :: 		LATB = 0x00;       // Turn OFF LEDs on PORTB
	CLRF        LATB+0 
;LedBlinking.c,36 :: 		LATC = 0x00;       // Turn OFF LEDs on PORTC
	CLRF        LATC+0 
;LedBlinking.c,37 :: 		LATD = 0x00;       // Turn OFF LEDs on PORTD
	CLRF        LATD+0 
;LedBlinking.c,38 :: 		LATE = 0x00;       // Turn OFF LEDs on PORTE
	CLRF        LATE+0 
;LedBlinking.c,39 :: 		Delay_ms(1000);    // 1 second delay
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
	NOP
	NOP
;LedBlinking.c,41 :: 		LATA = 0xA;       // Turn ON LEDs on PORTA
	MOVLW       10
	MOVWF       LATA+0 
;LedBlinking.c,42 :: 		LATB = 0xA;       // Turn ON LEDs on PORTB
	MOVLW       10
	MOVWF       LATB+0 
;LedBlinking.c,43 :: 		LATC = 0xA;       // Turn ON LEDs on PORTC
	MOVLW       10
	MOVWF       LATC+0 
;LedBlinking.c,44 :: 		LATD = 0xA;       // Turn ON LEDs on PORTD
	MOVLW       10
	MOVWF       LATD+0 
;LedBlinking.c,45 :: 		LATE = 0xA;       // Turn ON LEDs on PORTE
	MOVLW       10
	MOVWF       LATE+0 
;LedBlinking.c,46 :: 		Delay_ms(1000);    // 1 second delay
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	DECFSZ      R12, 1, 1
	BRA         L_main4
	DECFSZ      R11, 1, 1
	BRA         L_main4
	NOP
	NOP
;LedBlinking.c,47 :: 		} while(1);          // Endless loop
	GOTO        L_main0
;LedBlinking.c,48 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
