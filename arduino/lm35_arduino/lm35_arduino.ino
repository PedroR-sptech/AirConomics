const int PINO_SENSOR_TEMPERATURA = A2;
float temperaturaCelsius;
int temperaturaMin;
int temperaturaMax;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  int valorLeitura = analogRead(PINO_SENSOR_TEMPERATURA);
  temperaturaCelsius = (valorLeitura * 5.0 / 1023.0) / 0.01;
  // Essa função é o que será printado e exibido
  Serial.println(temperaturaCelsius);

  delay(2000);
}
