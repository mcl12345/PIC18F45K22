int compteur = 0;

void main() {
  TRISA = 0;           // set direction to be output
  TRISB = 0;           // set direction to be output
  TRISC = 0;           // set direction to be output
  TRISD = 0;           // set direction to be output
  TRISE = 0xFF;        // set direction to be input
  RE1_bit = 1;

  LATA =  0x00;
  LATB =  0x00;
  LATC =  0x00;
  LATD =  0x00;

  while ( RE0_bit & 1 ) {
    compteur = compteur + 1;

    LATA =  0xFF;
    LATD =  compteur * 10 /58;
  }
}