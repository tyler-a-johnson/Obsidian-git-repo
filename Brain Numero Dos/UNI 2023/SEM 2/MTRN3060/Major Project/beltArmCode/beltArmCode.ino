/*!
  Tyler Johnson
  SID:46978518
 */

int Del = 200;      //define pulse delay, smaller means faster
int PUL=7;          //define Pulse pin
int DIR=6;          //define Direction pin
int ENA=5;          //define Enable Pin
int LIM=2;          //define Limit Switch Pin

volatile bool switchState = LOW;  //simple interrupt flag for limit switch
volatile unsigned long lastDebounceTime = 0;
const unsigned long debounceDelay = 50;

int armPos = 0;

void setup() 
{
  pinMode(PUL, OUTPUT);
  pinMode(DIR, OUTPUT);
  pinMode(ENA, OUTPUT);
  pinMode(LIM, INPUT_PULLUP);
  Serial.begin(9600);
  attachInterrupt(digitalPinToInterrupt(LIM), interruptHandler, CHANGE);
}


void interruptHandler()
{
  unsigned long currentTime = millis();
  
  if (currentTime - lastDebounceTime >= debounceDelay) {
    lastDebounceTime = currentTime;

    // Read the current switch state
    bool newSwitchState = digitalRead(LIM);

    if (newSwitchState != switchState) {
      Serial.println("Interrupt Triggered");
      switchState = newSwitchState;
      
      // Your code to be executed on switch press (interrupt) goes here
      // Example: digitalWrite(13, switchState); // Toggle LED on pin 13
    }
  }
}

void moveSteps(signed long steps)
{
  if (steps > 0)
  {
    armPos = armPos + steps;
      for (int i=0; i<steps; i++)    //Forward steps
        {
        digitalWrite(DIR,LOW);
        digitalWrite(ENA,HIGH);
        if (switchState == HIGH){break;}
        digitalWrite(PUL,HIGH);
        delayMicroseconds(Del);
        digitalWrite(PUL,LOW);
        delayMicroseconds(Del);
        }
  }
  ///////////////////////////////////
  if (steps < 0)
  {
    steps = abs(steps);
    armPos = armPos - steps;
      for (int i=0; i<steps; i++)   //Backward steps
      {
        digitalWrite(DIR,HIGH);
        digitalWrite(ENA,HIGH);
        if (switchState == HIGH){break;}
        digitalWrite(PUL,HIGH);
        delayMicroseconds(Del);
        digitalWrite(PUL,LOW);
        delayMicroseconds(Del);
      }
  }
}

void moveMM(long mm)
{
  int mmToStep = mm/0.0116;
  moveSteps(mmToStep);
}

void zeroPos() 
{
  // Move in the reverse direction until the limit switch is pressed
  
  while (switchState == LOW)
  {
    digitalWrite(DIR, HIGH);
    digitalWrite(ENA, HIGH);
    digitalWrite(PUL, HIGH);
    delayMicroseconds(Del);
    digitalWrite(PUL, LOW);
    delayMicroseconds(Del);
  }

  // Once the limit switch is pressed, reset armPos and clear the interrupt flag
  armPos = 0;
  switchState = LOW;

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
    
    Serial.print("Current Target Pos: ");
    Serial.println(armPos);

    moveMM(750);   //Slide to the left (Away from switch)
    awaitSignal();      //Wait for the confirmation from the arm

    moveMM(-700);  //Slide to the right (Toward switch)
    awaitSignal();      //Wait for the confirmation from the arm
    zeroPos();          //Zero the position while we're here
    
  }
}
