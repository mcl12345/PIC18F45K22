
void afficheChiffre(char chiffre, char position) {
   LATA = 0x01 << position;     //   les PINs de AN0 a AN3 sont des canaux analogiques????

   // Affiche selon la position du chiffre dans l'afficheur 7 segments.
   switch(chiffre) {
      case 0:         // Ecris 0 sur l'afficheur 7 segments
        LATD0_bit = 1;  LATD1_bit = 1; LATD2_bit = 1; LATD3_bit = 1;
        LATD4_bit = 1; LATD5_bit = 1; LATD6_bit = 0; LATD7_bit = 0;
        break;
      case 1:         // Ecris 1 sur l'afficheur 7 segments
        LATD0_bit = 0; LATD1_bit = 1; LATD2_bit = 1; LATD3_bit = 0;
        LATD4_bit = 0; LATD5_bit = 0; LATD6_bit = 0; LATD7_bit = 0;
        break;

      case 2:         // Ecris 2 sur l'afficheur 7 segments
          LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 0;LATD3_bit = 1;
          LATD4_bit = 1;LATD5_bit = 0;LATD6_bit = 1;LATD7_bit = 0;
          break;

      case 3:         // Ecris 3 sur l'afficheur 7 segments
          LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
          LATD4_bit = 0;LATD5_bit = 0;LATD6_bit = 1;LATD7_bit = 0;
          break;

      case 4:         // Ecris 4 sur l'afficheur 7 segments
          LATD0_bit = 0;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 0;
          LATD4_bit = 0;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
          break;

      case 5:         // Ecris 5 sur l'afficheur 7 segments
          LATD0_bit = 1;LATD1_bit = 0;LATD2_bit = 1;LATD3_bit = 1;
          LATD4_bit = 0;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
          break;

      case 6:          // Ecris 6 sur l'afficheur 7 segments
          LATD0_bit = 1;LATD1_bit = 0;LATD2_bit = 1;LATD3_bit = 1;
          LATD4_bit = 1;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
          break;

      case 7:         // Ecris 7 sur l'afficheur 7 segments
          LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 0;
          LATD4_bit = 0;LATD5_bit = 0;LATD6_bit = 0;LATD7_bit = 0;
          break;

      case 8:          // Ecris 8 sur l'afficheur 7 segments
          LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
          LATD4_bit = 1;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
          break;

      case 9:         // Ecris 9 sur l'afficheur 7 segments
          LATD0_bit = 1;LATD1_bit = 1;LATD2_bit = 1;LATD3_bit = 1;
          LATD4_bit = 0;LATD5_bit = 1;LATD6_bit = 1;LATD7_bit = 0;
          break;

      case 10:        // Fait le point
          LATD0_bit = 0;LATD1_bit = 0;LATD2_bit = 0;LATD3_bit = 0;
          LATD4_bit = 0;LATD5_bit = 0;LATD6_bit = 0;LATD7_bit = 1;
          break;

      default: break;
    }
 }

 // Ecris le nombre sur l'afficheur 7 segments
 void afficheNombre(float var) {
   char chiffre0, chiffre1, chiffre2, chiffre3;
   chiffre3 = var / 1000;     // chiffre3 = var / 1000
   var -= chiffre3 * 1000;    // var = 0

   chiffre2 = var / 100;      // chiffre2 = var / 100;
   var -= chiffre2 * 100;     // var = 0

   chiffre1 = var / 10;       // chiffre1 = var / 10;
   var -= chiffre1 * 10;      // var = 0

   chiffre0 = (char) var;    // chiffre0 = var

   afficheChiffre(chiffre0, 0);   // Affiche le chiffre3 en position 0 sur l'afficheur 7 segments
   Delay_ms(1);                   // Délai d'une milli-seconde
   afficheChiffre(chiffre1, 1);   // Affiche le chiffre3 en position 1 sur l'afficheur 7 segments
   Delay_ms(1);                   // Délai d'une milli-seconde
   afficheChiffre(chiffre2, 2);   // Affiche le chiffre3 en position 2 sur l'afficheur 7 segments
   Delay_ms(1);                   // Délai d'une milli-seconde
   afficheChiffre(chiffre3, 3);   // Affiche le chiffre3 en position 3 sur l'afficheur 7 segments
   Delay_ms(1);
 }


void main(void) {
  TRISA = 0x00;               // Port A en sortie
  TRISB = 0x00;               // Port B en sortie
  TRISC = 0x00;               // Port C en sortie
  TRISD = 0x00;               // Port D en sortie
  TRISE = 0xFF;               // Port E en entrée
  
  LATA = 0x00;                // Initialisation du port A à 0
  LATB = 0x00;                // Initialisation du port B à 0
  LATC = 0x00;                // Initialisation du port C à 0
  LATD = 0x00;                // Initialisation du port D à 0

  afficheNombre( (int) LATE2_bit ); // Ecris le nombre sur l'afficheur 7 segments
}
