
_wait:

;Led_Curtain.c,27 :: 		void wait() {
;Led_Curtain.c,28 :: 		Delay_ms(100);
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       15
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_wait0:
	DECFSZ      R13, 1, 1
	BRA         L_wait0
	DECFSZ      R12, 1, 1
	BRA         L_wait0
	DECFSZ      R11, 1, 1
	BRA         L_wait0
;Led_Curtain.c,29 :: 		}
L_end_wait:
	RETURN      0
; end of _wait

_main:

;Led_Curtain.c,31 :: 		void main() {
;Led_Curtain.c,33 :: 		TRISA = 0x00;                                 // set direction to be output
	CLRF        TRISA+0 
;Led_Curtain.c,34 :: 		TRISB = 0x00;                                 // set direction to be output
	CLRF        TRISB+0 
;Led_Curtain.c,35 :: 		TRISC = 0x00;                                 // set direction to be output
	CLRF        TRISC+0 
;Led_Curtain.c,36 :: 		TRISD = 0x00;                                 // set direction to be output
	CLRF        TRISD+0 
;Led_Curtain.c,37 :: 		TRISE = 0x00;                                 // set direction to be output
	CLRF        TRISE+0 
;Led_Curtain.c,39 :: 		LATA = 0x00;                                  // turn OFF the LATD leds
	CLRF        LATA+0 
;Led_Curtain.c,40 :: 		LATB = 0x00;                                  // turn OFF the LATD leds
	CLRF        LATB+0 
;Led_Curtain.c,41 :: 		LATC = 0x00;                                  // turn OFF the LATC leds
	CLRF        LATC+0 
;Led_Curtain.c,42 :: 		LATD = 0x00;                                  // turn OFF the LATD leds
	CLRF        LATD+0 
;Led_Curtain.c,43 :: 		LATE = 0x00;                                  // turn OFF the LATD leds
	CLRF        LATE+0 
;Led_Curtain.c,45 :: 		while (1) {
L_main1:
;Led_Curtain.c,46 :: 		for (counter=0; counter<8; counter++) {
	CLRF        _counter+0 
L_main3:
	MOVLW       8
	SUBWF       _counter+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main4
;Led_Curtain.c,47 :: 		LATA |= 1 << counter;
	MOVF        _counter+0, 0 
	MOVWF       R1 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
L__main10:
	BZ          L__main11
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main10
L__main11:
	MOVF        R0, 0 
	IORWF       LATA+0, 1 
;Led_Curtain.c,48 :: 		LATB |= 1 << counter;
	MOVF        R0, 0 
	IORWF       LATB+0, 1 
;Led_Curtain.c,49 :: 		LATC |= 1 << counter;
	MOVF        R0, 0 
	IORWF       LATC+0, 1 
;Led_Curtain.c,50 :: 		LATD |= 1 << counter;
	MOVF        R0, 0 
	IORWF       LATD+0, 1 
;Led_Curtain.c,51 :: 		LATE |= 1 << counter;
	MOVF        R0, 0 
	IORWF       LATE+0, 1 
;Led_Curtain.c,52 :: 		wait();
	CALL        _wait+0, 0
;Led_Curtain.c,46 :: 		for (counter=0; counter<8; counter++) {
	INCF        _counter+0, 1 
;Led_Curtain.c,53 :: 		}
	GOTO        L_main3
L_main4:
;Led_Curtain.c,55 :: 		counter = 0;
	CLRF        _counter+0 
;Led_Curtain.c,56 :: 		while (counter<8) {
L_main6:
	MOVLW       8
	SUBWF       _counter+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main7
;Led_Curtain.c,57 :: 		LATA &= ~(1 << counter);
	MOVF        _counter+0, 0 
	MOVWF       R1 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
L__main12:
	BZ          L__main13
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main12
L__main13:
	COMF        R0, 1 
	MOVF        R0, 0 
	ANDWF       LATA+0, 1 
;Led_Curtain.c,58 :: 		LATB &= ~(1 << counter);
	MOVF        R0, 0 
	ANDWF       LATB+0, 1 
;Led_Curtain.c,59 :: 		LATC &= ~(1 << counter);
	MOVF        R0, 0 
	ANDWF       LATC+0, 1 
;Led_Curtain.c,60 :: 		LATD &= ~(1 << counter);
	MOVF        R0, 0 
	ANDWF       LATD+0, 1 
;Led_Curtain.c,61 :: 		LATE &= ~(1 << counter);
	MOVF        R0, 0 
	ANDWF       LATE+0, 1 
;Led_Curtain.c,62 :: 		wait();
	CALL        _wait+0, 0
;Led_Curtain.c,63 :: 		counter++;
	INCF        _counter+0, 1 
;Led_Curtain.c,64 :: 		}
	GOTO        L_main6
L_main7:
;Led_Curtain.c,65 :: 		}
	GOTO        L_main1
;Led_Curtain.c,66 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
