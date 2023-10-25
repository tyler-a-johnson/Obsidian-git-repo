 #ELEC/3042 #EmbeddedSystems/Microprocessors #EmbeddedSystems #UniNotes

[[ATmega328P Datasheet]]

# Timers
Timing an event is important in many digital system applications.

The ATmega328P has 3 different timers
- Timer0 & Timer 2 - 8-bit (0b00000000)
- Timer1 - 16-bit (0b0000000000000000)
- Each timer has various modes of operation and 3 interrupt generators
- Each timer has different features for different purposes

## How do Timers work?
- Counts clock pulses 
- Clock can be the I/O clock or an external clock 
- If I/O clock is used, a prescaler can be applied to divide the clock frequency by 8, 64, 256 or 1024
![[Attachments/Pasted image 20230314210811.png]]

# Timer Modes of Operation
## Normal Mode
- TCNT counts up from 0 until it overflows (generates interrupt), and then starts from 0 again.
![[Attachments/Pasted image 20230314211902.png]]
Usually not that useful, although you can alter the value it starts from.

## CTC Mode
- CTC = clear timer on compare match 
- When count matches value in OCRnA, the counter will reset (and generate an interrupt) 
- Used to have timer count to numbers smaller than maximum count
![[Attachments/Pasted image 20230314212523.png]]
Most common type of timer mode.
## PWM Mode
- PWM = pulse width modulation 
- Can also be used to generate different output waveforms 
- Example uses: 
	- change the brightness of LEDs
	- drive motor at different speeds
	- Speakers
![[Attachments/Pasted image 20230314220811.png]]
![[Attachments/Pasted image 20230314220918.png]]
# Choosing a Timer
![[Attachments/Pasted image 20230314220954.png]]

Depends on several factors:
- The size of the divisor
	- value put into compare register
	- 8 vs 16 bit
- Whether an external output is required 
	- Which pins are available
- Accuracy of the PWM output
	- 8 vs 16 bit

# Busy Loops (DO NOT USE FOR SIGNIFICANT TIMING)
- Undesirable because: 
	- Does no meaningful work
	- Holds up the CPU 
	- Wastes energy 
- Replace delay_ms(1000) with timer 
	-  Count enough clock ticks for 1 s and generate interrupt
![[Attachments/Pasted image 20230314221356.png]]

# Step One: Choose a Timer
- Arduino has 16Mhz clock
	- Choose an appropriate prescaler
		- No prescaler - need 24 bits to count to 16 million ($2^{24} = 16,777,216$) - Don't have a 24-bit timer.
		- Prescaler of 8 $\Rightarrow$ 16,000,000 / 8 = 2,000,000 clock tick per second
			- To represent 2,000,000, need 21 bits (221 = 2,097,152) – don’t have a 21-bit timer
		- Prescaler of 64 => 16,000,000 / 64 = 250,000 clock ticks per second
			- To represent 250,000, need 18 bits
		- Prescaler of 256 => 16,000,000 / 256 = 62,500 clock ticks per second
			- To represent 62,500, need 16 bits
		- Prescaler of 1024 => 16,000,000 / 1024 = 15,625 clock ticks per second
			- To represent 15,625, need 14 bits
- Use Timer1
- Which prescaler?
	- Choose largest prescaler that will count to a whole number
	- If a whole number is not possible, a lower prescaler gives higher precision (reduces error)

# Step Two: Choose Timer Mode of Operation

| Modes of Operation                                                                                                         | Overflow exceeds 1 s                                                                                                                      |
| -------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| Normal – counts up from 0 until it overflows (generates interrupt), and then starts from 0 again                           | • 16 MHz/1024 = 15,625 clock ticks per second • 216 = 65536 clock ticks before overflow • => 65536/15625 = 4.1943 seconds before overflow |
| CTC (clear timer on compare match) – when count matches value in OCRnA, the counter will reset (and generate an interrupt) | Set OCR1A to 15,625                                                                                                                       |
| PWM (pulse width modulation) – used to generate different output waveforms                                                 | Not generating an output waveform on one pin                                                                                              |

# Step Three: Setup Control Registers
## TCCR1A - Modes of Operation
![[Attachments/Pasted image 20230314225602.png]]
![[Attachments/Pasted image 20230314225636.png]]
![[Attachments/Pasted image 20230314225710.png]]
Connects OC1A/OC1B to pins.

![[Attachments/Pasted image 20230314225859.png]]
![[Attachments/Pasted image 20230314225925.png]]

## TCCR1B - Select Clock Prescaler
![[Attachments/Pasted image 20230314230245.png]]


```
TCCR1A = 0b00000000;
TCCR1B = 0b00001101;
```

## TCCR1C - Control Register C
![[Attachments/Pasted image 20230314230500.png]]

```
TCCR1C = 0;
```
![[Attachments/Pasted image 20230314230623.png]]

```
TCCR1A = 0b00000000;
TCCR1B = 0b00001101;
TCCR1C = 0;
TCNT1 = 0;
OCR1A = 15624;
OCR1B = 0;
ICR1 = 0;
```

## TIMSK1 - Interrupt Mask Register
![[Attachments/Pasted image 20230314230837.png]]

```
TIMSK1 = 0b00000010;
```

## TIFR1 - Interrupt Flag Register
![[Attachments/Pasted image 20230314231154.png]]

```
TIFR1 = 0;
```

## Example
#Examples 
![[Attachments/Pasted image 20230314231240.png]]

# One timer for Multiple Events
- Example
	- LED changes once per second
	- Button debounced time is ~10 ms
- Implementation
	- Set up timer to interrupt every 10 ms
	- LED should change after 100 interrupts
	- Button is debounced on next interrupt
# Button Debouncing
![[Attachments/Pasted image 20230314231922.png]]
![[Attachments/Pasted image 20230314231937.png]]
![[Attachments/Pasted image 20230314232113.png]]

# Timer Summary
- Using a Timer
	- Choose an appropriate timer
	- Configure mode of operation
	- Setup prescaler
	- If using CTC mode, set compare register value
	- Setup interrupt and ISR, if desired
- One timer can be used to time multiple events in a system