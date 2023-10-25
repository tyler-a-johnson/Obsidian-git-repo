 #ELEC/3042 #Logic #EmbeddedSystems/Microprocessors #Communication #UniNotes

[[Attachments/Week 5.pdf]]

# Digital vs Analog
- Real world analog (continuous)
- CPUs are digital
- For computer to interact with the real world, we need
	- Digital to Analog (D-to-A) conversion - convert digital signal to analog
	- Analog to Digital (A-to-D) conversion - convert analog signal to digital

# Using Timers to create analog output
Timers can generate square waveforms that are outputted on pins
![[Attachments/Pasted image 20230322232755.png]]

# Waveform Generation
## CTC
Change pin output value on compare match
![[Attachments/Pasted image 20230322232920.png]]
- Single-slope operation: TCNTn counts from BOTTOM to TOP and resets to BOTTOM
- Toggle output when count reaches value in OCnA & reset TCNTn
- Set/change period of output waveform by setting/changing OCnA value
![[Attachments/Pasted image 20230322233115.png]]

## Fast PWM
- Single-slope operation
- Non-inverting mode (inverting mode is opposite):
	- output low when count reaches compare value
	- output high when count reaches TOP value
- Change compare value to change duty cycle
![[Attachments/Pasted image 20230322233302.png]]

## Phase correct, Phase & Frequency correct PWM
- Dual-slope operation: TCNTn counts from BOTTOM to TOP and down to BOTTOM
- Non-inverting mode (inverting mode is opposite):
	- Output low on compare match while upcounting
	- Output high on compare match while downcounting
- Lower max frequency than FAST PWM but pulses are symmetric
- Difference between phase correct, and phase & frequency correct is when OCRnx register is updated.

## Choose a Timer
OCRnA = clock frequency / (2 * desired frequency)
![[Attachments/Pasted image 20230322233810.png]]

# ADC: Sampling & Resolution
(Analog to digital converter)
- Conversion to digital occurs at discrete moments in time
- Sample rate (number of conversions per second) is limited by conversion time
- Sampling rate limits the bandwidth of the digital representation (Nyquist frequency) - (data bandwidth)
- *Resolution* is the number discrete levels available to represent the amplitude of a signal and determined by the number of bits in ADC
![[Attachments/Pasted image 20230322234130.png]]

## ADC on ATmega328P
![[Attachments/Pasted image 20230322234614.png]]
- One 10-bit ADC
- Multiplexed across the PORTC pins
	- That is, if 2 pins are using the ADC, the total sampling rate will be divided across those two pins
- Max sampling rate is dependent on resolution and clock rate
	- Normal clock frequency 50kHz to 200kHz
	- Accepting lower resolution allows > 200kHz clock $\rightarrow$ higher sampling rate
- ADC has prescaler to generate an acceptable clock frequency
	- Set by ADPS bits inn ADCSRA

# Successive Approximation
![[Attachments/Pasted image 20230322234911.png]]
- Samples input signal voltage
- Input signal voltage is held constant and successively compared to a comparison voltage to find the binary representation one bit at a time starting from MSB
- Conversion normally takes 13 ADC clock cycles
	- First conversion takes 25 ADC clock cycles because the analog circuitry needs some time to initialise

## Conversion Result
![[Attachments/Pasted image 20230322235412.png]]
- When conversion is complete, result is stored in ADC register and ADIF flag is set
- ADC is made up of two 8 bit registers: ADCH & ADCL
- To get 16-bit result, read ADC (or ADCL first, then ADCH)
- Result can be left or right-adjusted (depends on ADLAR bit)
- If 8-bit (or less) resolution is required, use left adjust adjust and just read ADCH only

# Triggering a conversion
![[Attachments/Pasted image 20230322235444.png]]
Manually
	Write 1 to ADSC

Free Running
	Starts a new conversion as soon as the ongoing one is finished

Automatic trigger
	Allows conversions at a fixed interval

# Setting up for ADC conversion

1. Select PORTC pin(s) for ADC and configure pin(s) as an input (no pullup resistor)
2. Configure A-to-D module
	1. ADMUX Register
		- Select Voltage Reference Source (AVcc)
		- Set left or right adjust output (ADLAR bit)
		- Set MUX bits for a pin to get analog value
	2. ADCSRA/ADCSRB Registers
		- Enable ADC (ADEN bit)
		- Enable interrupt (if desired)
		- Set an appropriate clock prescaler
		- Set desired conversion trigger
	3. DIDR0 Register
		- Disable digital input of ADC pins to conserve power
3. Do an initial conversion (because the first one takes 25 ADC cycles)
	- Set ADSC bit to 1 in ADCSRA register

## General Steps
- Check that no conversion is currently running (ADSC bit should be 0) 
- If no conversion is running, start a conversion (set ADSC bit to 1) 
- Wait for sample to complete (ADSC == 0) 
- Read ADC to get all 10 bits (or just ADCH if you only want MSBs)