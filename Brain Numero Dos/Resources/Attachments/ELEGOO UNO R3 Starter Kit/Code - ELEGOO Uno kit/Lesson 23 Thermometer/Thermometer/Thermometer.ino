
int tempPin = A0;
int fanPin = 8;
int potPin = A1;
int potVal;
int threshold;

#include <Wire.h> 
#include <LiquidCrystal_I2C.h>
LiquidCrystal_I2C lcd(0x27,16,2);

void setup()
{
  lcd.init();
  lcd.backlight();
  Serial.begin(9600);

  pinMode(tempPin, INPUT);
  pinMode(fanPin, OUTPUT);
  pinMode(potPin, INPUT);
}
void loop()
{
  int tempReading = analogRead(tempPin);

  double tempK = log(10000.0 * ((1024.0 / tempReading - 1)));
  tempK = 1 / (0.001129148 + (0.000234125 + (0.0000000876741 * tempK * tempK )) * tempK );       //  Temp Kelvin
  float tempC = tempK - 273.15;            // Convert Kelvin to Celcius

  potVal = analogRead(potPin);
  threshold = map(potVal, 0, 1023, 0, 60);


  lcd.setCursor(0,0);
  lcd.print("Temp: ");

  lcd.setCursor(6,0);
  lcd.print(tempC);

  lcd.setCursor(0,1);
  lcd.print("Set:");

  lcd.setCursor(5,1);
  lcd.print(threshold);

  if (tempC >= threshold){
    digitalWrite(fanPin, HIGH);
  }
  if (tempC < threshold){
    digitalWrite(fanPin, LOW);
  }
  delay(250);
}
