/*
  Project: Blink configurable
  Description: Fa parpellejar un LED amb temps d'encesa
               i d'apagat independents.
*/

// Constant: el pin no canvia mai durant l'execució
const int LED_PIN = 23;

// Variables configurables (en mil·lisegons)
int tempsEncesa = 200;    // Temps que el LED està encès
int tempsApagat = 1000;   // Temps que el LED està apagat

void setup() {
  pinMode(LED_PIN, OUTPUT);
}

void loop() {
  digitalWrite(LED_PIN, HIGH);  // Encén el LED
  delay(tempsEncesa);           // Espera el temps d'encesa

  digitalWrite(LED_PIN, LOW);   // Apaga el LED
  delay(tempsApagat);           // Espera el temps d'apagat
}