 #EmbeddedSystems/Microprocessors #Circuits #ELEC/3042 #UniNotes

[[Attachments/Week 1_corrected.pdf]]

# Embedded Systems
- Computer Systems that run **ONE fixed program**
- Part of a larger system that has **a non-computational focus**
- Rarely, if ever, updated or maintained
- **Examples**: Swipe card locks, alarm systems, smart lights

# ATmega328p Microcontroller
![[Attachments/Pasted image 20230228195354.png|750]]

## Arduino Schematic
![[Attachments/Pasted image 20230228195444.png|750]]

# Variable Sizes
| Data Type     | Size   |
| ------------------ | ------ |
| int8_t / uint8_t   | 8-bit  |
| int16_t / uint16_t | 16-bit |
| int32_t / uint32_t | 32-bit |
| int64_t / uint64_t | 64-bit |

# Data Direction Register
![[Attachments/Pasted image 20230228200042.png]]
Input - Write a 0 to the bit corresponding to the pin
Output - Write a 1

## Example
#Examples 
Set PB5 as an output pin
- Write a 1 to bit 5 of DDRB
- Leave all other bits in DDRB unchanged
![[Attachments/Pasted image 20230228200421.png]]

# Bitwise Operations
![[Attachments/Pasted image 20230228200555.png]]

## Example
#Examples 
Set PB5 as an output pin
- Write a 1 to bit 5 of DDRB
- Leave all other bits in DDRB unchanged
![[Attachments/Pasted image 20230228200832.png]]

# Numbers
Numbers can be represented in multiple ways, each with their own uses.
- **0b**00001111 -> Binary Number (8 bits)
- **0x**0F -> Hexadecimal
- 017 -> Octal Number
- 15 -> Decimal Number

# Data Register
- If **output**, used for setting **pin value**
- If **input**, used for setting **pullup resistor**
- ![[Attachments/Pasted image 20230228201415.png]]

# Input Pin Pull Up
- All port pins have individually selectable pull-up resistors
	- Write 1 to activate pull-up
- For an input, it is desirable to set the pull-up resistor HIGH
	- Implies input is active LOW, saves on external components
	- An external switch connected to input pin will pull to ground
	- 0 = Pressed, 1 = Not Pressed
![[Attachments/Pasted image 20230228201741.png]]

# Input Registers
For reading input from pins
![[Attachments/Pasted image 20230228201843.png]]

# I/O Pins - Summary
![[Attachments/Pasted image 20230228201930.png]]

# Multiple ways of setting bits
![[Attachments/Pasted image 20230228202042.png]]

## Setting multiple pins at once
![[Attachments/Pasted image 20230228202216.png]]

# Reading Inputs
![[Attachments/Pasted image 20230228202116.png]]

