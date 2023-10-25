
int tempPin = A0;
int fanPin = 8;
int potPin = A1;
int potVal;
int threshold;

#include <dht_nonblocking.h>
#define DHT_SENSOR_TYPE DHT_TYPE_11
static const int DHT_SENSOR_PIN = 2;
DHT_nonblocking dht_sensor( DHT_SENSOR_PIN, DHT_SENSOR_TYPE );

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

static bool measure_environment( float *temperature, float *humidity )
{
  static unsigned long measurement_timestamp = millis( );

  /* Measure once every four seconds. */
  if( millis( ) - measurement_timestamp > 3000ul )
  {
    if( dht_sensor.measure( temperature, humidity ) == true )
    {
      measurement_timestamp = millis( );
      return( true );
    }
  }

  return( false );
}



void loop()
{
  {
  float temperature;
  float humidity;

  /* Measure temperature and humidity.  If the functions returns
     true, then a measurement is available. */
  if( measure_environment( &temperature, &humidity ) == true )
  {
    Serial.print( "T = " );
    Serial.print( temperature, 1 );
    Serial.print( " deg. C, H = " );
    Serial.print( humidity, 1 );
    Serial.println( "%" );
  }

  potVal = analogRead(potPin);
  threshold = map(potVal, 0, 1023, 0, 60);

  int temp = temperature;
  int hum = humidity;

  lcd.setCursor(0,0);
  lcd.print("Temp: ");

  lcd.setCursor(5,0);
  lcd.print(temp);
  
  lcd.setCursor(11,0);
  lcd.print("H%: ");

  lcd.setCursor(14,0);
  lcd.print(hum);

  lcd.setCursor(0,1);
  lcd.print("Set:");

  lcd.setCursor(5,1);
  lcd.print(threshold);

  if (temperature >= threshold){
    digitalWrite(fanPin, HIGH);
  }
  if (temperature < threshold){
    digitalWrite(fanPin, LOW);
  }
  delay(250);
}
}
