#line 1 "C:/Users/morvan/Desktop/cours_paris_8/projet_tutore/1_Projet_UltraSon/ultrason2.c"
int compteur = 0;

void main() {
 TRISA = 0;
 TRISB = 0;
 TRISC = 0;
 TRISD = 0;
 TRISE = 0xFF;
 RE1_bit = 1;

 LATA = 0x00;
 LATB = 0x00;
 LATC = 0x00;
 LATD = 0x00;
 LATE = 0x00;

 while ( RE0_bit & 1 ) {
 compteur = compteur + 1;

 LATA = 0xFF;
 LATD = compteur * 10 /58;
 }
}
