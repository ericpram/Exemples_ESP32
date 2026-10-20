// Exemples ESP32 - Tipus de variables

const int LED_INTERN = 2;   // const: valor que no canviarà (pin del LED)

int contador = 0;           // int: nombre enter (comptadors, índexs)
long tempsEspera = 500;     // long: enter gran (temps en ms, millis())
float temperatura = 23.5;   // float: nombres amb decimals (sensors)
char lletra = 'A';          // char: un sol caràcter
bool encendido = true;      // bool: només true o false
String missatge = "Hola ESP32"; // String: text

void setup() {
  Serial.begin(115200);     // Ha de coincidir amb el Monitor Sèrie
  pinMode(LED_INTERN, OUTPUT);

  Serial.println("--- Tipus de variables ---");
  Serial.print("int: ");        Serial.println(contador);
  Serial.print("long: ");       Serial.println(tempsEspera);
  Serial.print("float: ");      Serial.println(temperatura);
  Serial.print("char: ");       Serial.println(lletra);
  Serial.print("bool: ");       Serial.println(encendido);
  Serial.print("String: ");     Serial.println(missatge);
  Serial.print("Mida int (bytes): ");   Serial.println(sizeof(int));
  Serial.print("Mida long (bytes): ");  Serial.println(sizeof(long));
  Serial.print("Mida float (bytes): "); Serial.println(sizeof(float));
}

void loop() {
  if (encendido) {
    digitalWrite(LED_INTERN, HIGH);
    delay(tempsEspera);
    digitalWrite(LED_INTERN, LOW);
    delay(tempsEspera);

    tempsEspera += 100;     // Cada cicle espera 100 ms més
    contador++;             // Suma 1 al comptador
    Serial.print("Cicle ");
    Serial.print(contador);
    Serial.print(", espera = ");
    Serial.println(tempsEspera);

    if (tempsEspera >= 2000) {  // Temps màxim assolit
      encendido = false;        // El LED deixa de parpellejar
      Serial.println("Final: encendido = false");
    }
  }
}