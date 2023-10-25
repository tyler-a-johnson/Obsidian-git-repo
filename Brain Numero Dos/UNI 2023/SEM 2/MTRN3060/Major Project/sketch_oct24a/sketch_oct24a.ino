const int potentiometerPin = A1;  // Connect the potentiometer to A0
const int pwmOutputPin = 9;       // Connect the PWM output to digital pin 9

void setup() {
  pinMode(pwmOutputPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // Read the value from the potentiometer (0-1023)
  int potValue = analogRead(potentiometerPin);

  // Map the potentiometer value to the PWM duty cycle range (0-255)
  int dutyCycle = map(potValue, 0, 1023, 0, 255);

  // Apply the duty cycle to the PWM output
  analogWrite(pwmOutputPin, dutyCycle);
  Serial.println(dutyCycle);
}
