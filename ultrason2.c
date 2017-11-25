int compteur = 0;

void main() {
  TRISA = 0;           // set direction to be output
  TRISB = 0;           // set direction to be output
  TRISC = 0;           // set direction to be output
  TRISD = 0;           // set direction to be output
  TRISE = 0xFF;        // set direction to be input
  RE1_bit = 1;         // On met RE1 à 1 pour envoyer le signal du trigger

  LATA =  0x00;
  LATB =  0x00;
  LATC =  0x00;
  LATD =  0x00;

  while ( RE0_bit & 1 ) {               // Réception de l'écho
    // On commence à compter
    compteur = compteur + 1;

    LATA =  0xFF;                      // On envoit le signal pour voir qu'on bien dans la boucle
    LATD =  compteur * 10 /58;         // On trasforme le compteur en distance en cm
  }
}