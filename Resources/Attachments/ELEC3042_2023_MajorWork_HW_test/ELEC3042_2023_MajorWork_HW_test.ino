/**
   This Arduino sketch is a simple test for making sure the wiring of your
   breadboard is correct for the Major Project. There are 4 states in the
   code:
      (0) Cycle LEDs - light all green then yellow then red LEDs
      (1) LEDs and Buttons - holding the button down will turn on the LED bank for that button
      (2) Speaker - will sound the speaker
      (3) POT - will take a reading from the POT and show it on the LCD screen
   The current state of the test is shown on the LCD screen.

   An I2C LCD screen with address 0x27 is assumed. Change i2c_address to match
     your screen's address if necessary

   This code uses the LiquidCrystal_I2C library from
     https://github.com/fdebrabander/Arduino-LiquidCrystal-I2C-library
 **/

#include <SPI.h>
#include <Wire.h>
#include "LiquidCrystal_I2C.h"

#define SPI_LED_ON 0xEE
#define SPI_LED_OFF 0x11
#define SPI_S0 0x01
#define SPI_S1 0x10
#define SPI_S2 0x01
#define SPI_S3 0x10

#define S4 3
#define SRPD 4
#define SRPW 5
#define S5 6
#define SZL 7
#define S6 8
#define SPEAKER 9
#define CHIPSELECT 10

#define POT A0
#define SRPR A1
#define SRPY A2
#define SRPG A3

volatile uint8_t i2c_address = 0x27;    // change to match your LCD screen
LiquidCrystal_I2C lcd(i2c_address, 16, 2);

// Write a value to a register on the 23S17 port expander
void spi_write(uint8_t reg, uint8_t value) {
  digitalWrite(CHIPSELECT, LOW);
  SPI.transfer(0x40);
  SPI.transfer(reg);
  SPI.transfer(value);
  digitalWrite(CHIPSELECT, HIGH);
}

// read a value from a register on the 23S17 port expander. The value is returned.
uint8_t spi_read(uint8_t reg) {
  uint8_t data = 0;
  digitalWrite(CHIPSELECT, LOW);
  SPI.transfer(0x41);
  SPI.transfer(reg);
  data = SPI.transfer(0);
  digitalWrite(CHIPSELECT, HIGH);
  return data;
}

// light the leds that are directly conencted.
// s4, s5 and s6 each have RYG values for that bank
void light_leds(uint8_t s4, uint8_t s5, uint8_t s6) {
    digitalWrite(SRPD, (s4&0x4)?HIGH:LOW);
    digitalWrite(SRPW, (s4&0x1)?HIGH:LOW);
    digitalWrite(SZL,  (s5&0x4)?HIGH:LOW);
    digitalWrite(SRPR, (s6&0x4)?HIGH:LOW);
    digitalWrite(SRPY, (s6&0x2)?HIGH:LOW);
    digitalWrite(SRPG, (s6&0x1)?HIGH:LOW);
}

// light the leds connected through the SPI port expander
void spi_light_leds(uint8_t l0, uint8_t l1, uint8_t l2, uint8_t l3) {
  spi_write(0x14, (l0<<1) | (l1<<5));
  spi_write(0x15, (l2<<1) | (l3<<5));
}

// cycle through the LEDs. For 2 seconds we light the green, then yellow, then read LEDs
void test_leds() {
  light_leds(0x01, 0x00, 0x01);
  spi_light_leds(0x01, 0x01, 0x01, 0x01);
  delay(2000);
  light_leds(0x00, 0x00, 0x02);
  spi_light_leds(0x02, 0x02, 0x02, 0x02);
  delay(2000);
  light_leds(0x04, 0x04, 0x04);
  spi_light_leds(0x04, 0x04, 0x04, 0x04);
  delay(2000);
}

/*
 * This routine runs the interactive button test.
 * During this test if a button is pressed then it's corresponding bank of LEDs are all lit.
 * We also show the state of the buttons on the LCD screen.
 * The top right corner shows the button values, and can be used to verify the buttons are workign as required.
 */
void test_leds_and_buttons() {
  uint8_t pvalA, pvalB;
  uint8_t bvalue = 0xff;
  
  // if button is pushed, turn on their associated LEDs
  for (int i = 0; i < 3000; i++) {
    
    pvalA = spi_read(0x12);
    pvalB = spi_read(0x13);
    bvalue =
      ((pvalA & SPI_S0) ? 0x01:0) |
      ((pvalA & SPI_S1) ? 0x02:0) |
      ((pvalB & SPI_S2) ? 0x04:0) |
      ((pvalB & SPI_S3) ? 0x08:0) |
      (digitalRead(S4)  ? 0x10:0) |
      (digitalRead(S5)  ? 0x20:0) |
      (digitalRead(S6)  ? 0x40:0);

      light_leds(digitalRead(S4)?0:7, digitalRead(S5)?0:7, digitalRead(S6)?0:7);
      spi_light_leds(
          (pvalA & SPI_S0)?0x00:0x07,
          (pvalA & SPI_S1)?0x00:0x07,
          (pvalB & SPI_S2)?0x00:0x07,
          (pvalB & SPI_S3)?0x00:0x07);
    
    lcd.setCursor(14, 0);
    lcd.print(((bvalue>>4)&0x0f), HEX); // display the leading zero if necessary
    lcd.print(((bvalue)&0x0f), HEX);
  }

  // turn off LEDs before we move on to the next phase.
  light_leds(0, 0, 0);
  spi_light_leds(0, 0, 0, 0);

}

// set up I/O pins and SPI interface.

void setup() {
  // setup LEDs connected to UNO
  pinMode(SRPD, OUTPUT);
  pinMode(SRPW, OUTPUT);
  pinMode(SZL, OUTPUT);
  pinMode(SRPR, OUTPUT);
  pinMode(SRPY, OUTPUT);
  pinMode(SRPG, OUTPUT);
  
  // setup buttons connected to UNO
  pinMode(S4, INPUT_PULLUP);
  pinMode(S5, INPUT_PULLUP);
  pinMode(S6, INPUT_PULLUP);

  // setup POT
  pinMode(POT, INPUT);

  // setup SPI
  SPI.begin();
  SPI.setBitOrder(MSBFIRST);
  SPI.setDataMode(SPI_MODE0);
  pinMode(CHIPSELECT, OUTPUT);

  // setup MCP23S17
  spi_write(0x00, 0x11);
  spi_write(0x0C, 0x11);
  spi_write(0x14, SPI_LED_ON);
  spi_write(0x01, 0x11);
  spi_write(0x0D, 0x11);
  spi_write(0x15, SPI_LED_ON);

  // setup I2C
  lcd.begin();
}

/*
 * Run through the main loop.
 * This run  through the four phases sequentially then exits.
 * 
 * The arduino system will run this loop again if it exits.
 */
void loop() {
  // LEDs & Buttons
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("23S1 ELEC3042");
  
  lcd.setCursor(0, 1);
  lcd.print("Cycle LEDs");
  test_leds();
  
  lcd.setCursor(0, 1);
  lcd.print("LEDs and Buttons");
  test_leds_and_buttons();

  // Speaker
  lcd.clear();
  lcd.setCursor(0, 1);
  lcd.print("Speaker");
  tone(SPEAKER, 100, 1000);
  delay(1000);

  // POT
  for (int i = 0; i < 30; i++) {
    lcd.clear();
    lcd.setCursor(0, 1);
    lcd.print("POT:");
    int val = analogRead(POT);
    lcd.setCursor(6, 1);
    lcd.print(val);
    delay(100);
  }
}
