#line 1 "C:/Users/morvan/Desktop/cours_paris_8/projet_tutore/1_Projet_UltraSon/Led Blinking/LedBlinking.c"
#line 25 "C:/Users/morvan/Desktop/cours_paris_8/projet_tutore/1_Projet_UltraSon/Led Blinking/LedBlinking.c"
void main() {

 TRISA = 0;
 TRISB = 0;
 TRISC = 0;
 TRISD = 0;
 TRISE = 0;

 do {
 LATA = 0x00;
 LATB = 0x00;
 LATC = 0x00;
 LATD = 0x00;
 LATE = 0x00;
 Delay_ms(1000);

 LATA = 0xA;
 LATB = 0xA;
 LATC = 0xA;
 LATD = 0xA;
 LATE = 0xA;
 Delay_ms(1000);
 } while(1);
}
