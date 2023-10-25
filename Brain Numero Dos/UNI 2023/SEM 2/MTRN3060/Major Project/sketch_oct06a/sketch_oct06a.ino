/*!
 * @file  DRI0043.ino
 * @brief TB6600 arduino Stepper Motor Driver is an easy-to-use professional stepper motor driver, which could control a two-phase stepping motor.
 * @copyright  Copyright (c) 2010 DFRobot Co.Ltd (http://www.dfrobot.com)
 * @license  The MIT License (MIT)
 * @author  DFRobot
 * @version  V1.0
 * @date  2023-08-03
 */

int Del = 250; //define comms delay
int PUL=7; //define Pulse pin
int DIR=6; //define Direction pin
int ENA=5; //define Enable Pin
int LIM=2; //define limit switch Pin
int interrupt = 0;  //simple interrupt flag for limit switch

int armPos = 0;

void setup() 
{
  pinMode(PUL, OUTPUT);
  pinMode(DIR, OUTPUT);
  pinMode(ENA, OUTPUT);
  pinMode(LIM, INPUT_PULLUP);
  Serial.begin(9600);
  attachInterrupt(digitalPinToInterrupt(LIM), interruptHandler, RISING);
}


void interruptHandler()
{
  Serial.println("Interrupt");
  interrupt = 1;
}

void moveSteps(int steps)
{
  if (steps > 0){
    armPos = armPos + steps;
    digitalWrite(DIR,LOW);
    digitalWrite(ENA,HIGH);
      for (int i=0; i<steps; i++)    //Forward steps
        {
        if (interrupt == 1){break;}
        digitalWrite(PUL,HIGH);
        delayMicroseconds(Del);
        digitalWrite(PUL,LOW);
        delayMicroseconds(Del);
        }
  }
  if (steps < 0)
  {
    steps = abs(steps);
    armPos = armPos - steps;
    digitalWrite(DIR,HIGH);
    digitalWrite(ENA,HIGH);
      for (int i=0; i<steps; i++)   //Backward steps
      {
        if (interrupt == 1){break;}
        digitalWrite(PUL,HIGH);
        delayMicroseconds(Del);
        digitalWrite(PUL,LOW);
        delayMicroseconds(Del);
      }
  }
}

void zeroPos() 
{
  // Move in the reverse direction until the limit switch is pressed
  digitalWrite(DIR, HIGH);
  digitalWrite(ENA, HIGH);
  while (interrupt == 0)
  {
    digitalWrite(PUL, HIGH);
    delayMicroseconds(Del);
    digitalWrite(PUL, LOW);
    delayMicroseconds(Del);
  }

  // Once the limit switch is released, reset armPos and clear the interrupt flag
  armPos = 0;
  interrupt = 0;
}

void awaitSignal()
{
  //todo
  delay(1000);
}




void loop() {

  zeroPos();

  while (1)
  {
    
    moveSteps(10000);
    awaitSignal();

    moveSteps(-10000);
    awaitSignal();
    zeroPos();
    
  }
}
