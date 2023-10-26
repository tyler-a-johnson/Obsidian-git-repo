#Logic  #Communication #ELEC/3042 #UniNotes

[Week 2](Attachments/Week%202.pdf)

# Recap - Setting up Inputs and Outputs
![Pasted image 20230314192131](Attachments/Pasted%20image%2020230314192131.png)
## Setting multiple bits at once

These are all equivalent:
- Set pin 2 & 5 as output, the rest as inputs
- Set output LOW on pin 2 & 5, pull up resistors on input

```
DDRB = 0b00100100;
PORTB = 0b11011011;

DDRB = 0x24;
PORTB = 0xDB;

DDRB = 36;
PORTB = 219;
```

## Macros for Setting Bits
These are all equivalent
- Set pin 2 & 5 as output
- set output to LOW on pin 2 & 5

```
DDRB |= 0b00100100; 
PORTB &= 0b11011011; 

DDRB |= _BV(DDB2) | _BV(DDB5); 
PORTB &= ~_BV(PORTB2) & ~_BV(PORTB5); 

DDRB |= (1<<DDB2) | (1<<DDB5);
PORTB &= ~(1<<PORTB2) & ~(1<<PORTB5);
```

![Pasted image 20230314193518](Attachments/Pasted%20image%2020230314193518.png)

# Reading Bits
• Want to know whether a particular bit in a register is a 1 or 0 
• Create a “mask” that puts a 1 in the bit position of interest and set the rest of the bits to 0 
• AND register and mask together to see if it equals 0

#Examples 
- Test if a button connected to PORTC Pin 2 is pressed 
- If pressed, the output should be 0 
- If not pressed, the output will not be 0
![Pasted image 20230314193653](Attachments/Pasted%20image%2020230314193653.png)

```
// setup
DDRB |= 0b00100000;                            // PORTB pin 5 (D13) output 
PORTB &= 0b11011111;                           // turn off LED 
DDRC &= 0b11111011;                            // set PORT C, Pin 2 as input 
PORTC |= 0b00000100;                           // pull up PORT C, Pin 2 
while (1) {
	if ((PINC & 0b00000100) == 0) {            // button is pressed 
		PORTB |= 0b00100000;                   // turn on LED 
	} else {                                   // button not pressed 
	PORTB &= 0b11011111;                       // turn off LED } }
```

## Reading multiple inputs
```

// setup 
DDRC &= 0b11111001; // set PORT C, Pin 1 & 2 as input 
PORTC |= 0b00000110; // pull up PORT C, Pin 1 & 2 
while (1) { 
	if ((PINC & 0b00000110) == 0) { // both buttons are pressed 
		// do A 
	} else if ((PINC & 0b00000100) == 0) { // button on Pin 2 pressed 
		// do B 
	} else if ((PINC & 0b00000010) == 0) { // button on Pin 1 pressed 
		// do C 
	} else { 
	// buttons not pressed 
		// do D 
	} 
}
```
![Pasted image 20230314194353](Attachments/Pasted%20image%2020230314194353.png)

# Example: LED Morse Code
```
DDRB |= 0b00100000; // PORTB pin 5 (D13) output
PORTB &= 0b11011111; // turn off LED 
uint32_t sos = 0b0100100100111011101110010010010; // SOS(... --- ...) 
uint32_t mask = 0x80000000; // used to read one bit at a time 

while (1) {
	if ((sos & mask) == 0) { // test whether current bit is 0 
	PORTB &= ~_BV(PB5);
 } else { 
	 PORTB |= _BV(PB5);
 } 
	delay_ms(400); mask = mask >> 1; // shift mask to next bit 
	if (mask == 0) {
		 mask = 0x80000000; // reset mask 
	} 
}
```

# Interrupts
Interrupts are a method of stopping what the processor is currently doing and running a section of code. This code is best kept brief, and is usually used to raise flags in the system. 
- Temporarily delay execution of current code while some more urgent code is run on the CPU
- Is used to indicate an important external or internal event in a system 
- Frees us from needing to constantly check for an event

## Example: The Toy Problem
#Examples 
Create a program that cycles and lights up one of three LEDs for one second each. A push button is used to change the direction of the cycling whenever it is pressed. 

**Design:** 
- LED's are connected to PB5 (LED1), PB4 (LED2), PB3 (LED3) 
- Push button is connected to PD2

![Pasted image 20230314195505](Attachments/Pasted%20image%2020230314195505.png)

![Pasted image 20230314200045](Attachments/Pasted%20image%2020230314200045.png)

## Sources of Interrupts
• Port pins 
• Timers 
• UART, SPI, I2C 
• ADC 
• Analog Comparator 
• EEPROM
![Pasted image 20230314200333](Attachments/Pasted%20image%2020230314200333.png)

# INT0 Interrupt
Section 13.2 In the Datasheet
![Pasted image 20230314200546](Attachments/Pasted%20image%2020230314200546.png)
![Pasted image 20230314200721](Attachments/Pasted%20image%2020230314200721.png)

## When does an Interrupt occur?
Interrupts occur when 3 things are satisfied:
1. An event has been recorded
2. The event-specific interrupt enable has been set 
(EIMSK = 0b00000001;
EICRA = 0b00000010;)
3. The global interrupt enable flag has been set ( sei(); )

## What happens when an interrupt occurs?
1. Current program execution is stopped
2. Context is saved (register values, program counter)
3. Control jumps to Interrupt Service Routing (ISR)

# Interrupt Service Routine (ISR)
- Code that gets run when interrupt is raised
- All ISR have the same template
```
ISR(SOURCE_vect) { 
// ISR code here 
}
```
![Pasted image 20230314201345](Attachments/Pasted%20image%2020230314201345.png)
12-6 In the Datasheet

# Summary
- Choose an appropriate interrupt
- Configure appropriate interrupt registers
- Enable specific interrupt bit
- Enable global interrupts
- Define ISR