#MTRN/2060 
[sn74hc595](Attachments/sn74hc595.pdf)
![MTRN2060 Digital](Attachments/MTRN2060%20Digital.pptx)

# How do we Communicate in Mechatronics?
•Analog communications can be voltage level or current level. A 4-20 ma current loop is a common analog communications system used in industry. To read an analog voltage we use an analog to digital converter.

•Converting between analog and digital is really important in sending data. We must also consider the concept of sampling.

•Pulses can convey information by their amplitude and/or their duration. (In what ways is like digital, in what ways is it no?)

•Pulses can also encode binary information and form data packets

•Really high clock speeds have enabled easy digital implementation with high data content.

# A to D
![Pasted image 20221030215127](Attachments/Pasted%20image%2020221030215127.png)
Now that we have decided how fast to sample, we must Quantize and Code.

This is the next question. Bit depth & sample rate give the amount of data and the data transfer rate needed.

# A to D: 2 Ways
•**Successive Approximation** – Modify most significant bit, compare, and decide. Modify next bit, compare and decide, modify next bit, compare and decide, … modify LSB compare and decide. Used in Arduinos

• takes nDT to decide on a value, 1 to 100 ms

•What if input value changes?

![Pasted image 20221030215310](Attachments/Pasted%20image%2020221030215310.png)

**Flash Converter** – Fast. Parallel comparator (AKA Direct Conversion). But requires 2n-1 comparators for n-bit precision. Impractical for more than 8-bit

![Pasted image 20221030215442](Attachments/Pasted%20image%2020221030215442.png)

# A to D when the signal changes with time
•If you want to create a digital record of a time-varying signal you must ask the question:

–“How frequently do I need to record the value of the signal?”

•This question was answered by founders of information theory and is commonly called the Nyquist–Shannon sampling theorem

•It says that for any signal with a period of T is perfectly recorded when sampled at least 2 times every period. (a sample rate of 2/T). This is called the Nyquist rate

•You will see later on in the unit that any signal can be represented as a linear sum of sin and cosine waves of different frequencies

•Sampling below the Nyquist rate may result in [aliasing](http://www.youtube.com/watch?v=TKF6nFzpHBU). That is what is causing the strange effects seen in the video.

•If you are interested in more than just “What is the value of the signal now?”, then you also need to consider the sampling rate

---
Pulses that convey more than just binary information  
~  
PWM and Pseudo Analog

---

# analogWrite uses PWM (Arduino)
![Pasted image 20221030215635](Attachments/Pasted%20image%2020221030215635.png)
•Gets analogue results with digital means.

•Easy to control and implement using high clock rates by switching on and off precisely.

•Can define the period as you like.

•Can be used for controlling power to a DC motor

•Used to control LED intensity

## servo library uses PWM differently
![Pasted image 20221030215720](Attachments/Pasted%20image%2020221030215720.png)
•PWM is a convenient way to send analog-like signals
•The servo.h library creates a special type of PWM pulse.
•The duration of the pulse tells the servo arm where to go.
•#include <Servo.h>, myservo.write(val); where 0 ≥ val ≤ 180

•The pulse-on time normally varies from just 1 to 2 ms. So the duty cycle is always low.
•The low duty cycle allows 3 or 4 different control signals to be carried on the same waveform, and multiplexed to a common frequency for multichannel RC control.
•In this scenario the first pulse might be throttle, the second might be steering, or for airplanes, it might be lifters, rudder or ailerons.

# Binary Pulses for Digital Information
•Digital devices or structures are categorized as combinational or sequential logic.

–In sequential logic, the timing or sequencing history of pulses is used to determine the ouput.

–in combinational logic, the output is defined by the instantaneous value of the inputs.

**In this unit, you need to be comfortable with the binary number system**

# Combinational Logic
![Pasted image 20221030220017](Attachments/Pasted%20image%2020221030220017.png)
Combinational logic converts binary to binary on mathematical logic rules. They are called gates.

They do not have memory, ie the outputs is a function of what is and not what was.

> *A note about digital communications:* Bit: 1 or 0 Byte: 1 number, or letter. Typically 8 bits, but could be 32 or 64 bit on CPUs ASCII: 7 bit code for alphanumerics. Usually stored in an 8-bit byte.

# Combinatorial Logic
•Combinatorial logic circuits made from discrete semiconductor gates can be used instead of microcontrollers to achieve similar goals. Logic circuits may be cheaper and lower power.

•Micro controllers can achieve similar aims though software-based logic structures. In this unit you should understand how to use AND, OR and NOT in the Arduino SDK.

## Sequential Logic
•The timing or sequencing of input signals determines the output. This requires some form of memory.

•Devices include flip-flops, counters, monostables, latches and even microprocessors.

•Sequential logic circuits usually respond to inputs only when a separate trigger signal transitions from one level to another. The trigger signal is usually referred to as the clock (CK)

•We will examine one important example of a sequential logic device the D or digital Flip-Flop

# Registers: 1 byte of short memory  D Flip Flops
![Pasted image 20221030220606](Attachments/Pasted%20image%2020221030220606.png)

•The D-flip-flop is created by 6 NAND gates. It has a clock and a data line.

•Whenever the clock changes from low to high the data is sampled and held at Q until the next low-to-high clock change.

•Q is the data output, Q ̅ is the inverted output.

•A register is a collection of logic elements that each store 1 bit of information.

•Registers store information in almost all digital sensors.

# D Flip Flops
![Pasted image 20221030220748](Attachments/Pasted%20image%2020221030220748.png)
Notice that the D signal is sampled only at the rising clock edge. Changes at other times are ignored.

The device remembers the state of D until the next rising edge on the clock line.

# Binary Counter and/or Frequency Divider
![Pasted image 20221030220915](Attachments/Pasted%20image%2020221030220915.png)

# Shift Register or Serial to Parallel Converter
•In digital circuits, a shift register is a cascade of flip flops, sharing the same clock,

• the output of each flip-flop is connected to the 'data' input of the next flip-flop in the chain
![Pasted image 20221030221007](Attachments/Pasted%20image%2020221030221007.png)

> D-Flip Flop: The most common Latch. It has memory! Used in I2C

## Shift Registers at work
![Pasted image 20221030221127](Attachments/Pasted%20image%2020221030221127.png)
•[https://www.youtube.com/watch?v=6fVbJbNPrEU](https://www.youtube.com/watch?v=6fVbJbNPrEU)
#Video 

![Pasted image 20221030221148](Attachments/Pasted%20image%2020221030221148.png)
![Pasted image 20221030221208](Attachments/Pasted%20image%2020221030221208.png)
![Pasted image 20221030221215](Attachments/Pasted%20image%2020221030221215.png)

# I2C
•I squared C, inter-integrated circuit is a bus protocol for communication between a mother board and low speed peripherals.
[http://www.youtube.com/watch?v=GJX0BRUagCg](http://www.youtube.com/watch?v=GJX0BRUagCg)
#Video 

# I2C Sensor. How does it work?
![Pasted image 20221030221432](Attachments/Pasted%20image%2020221030221432.png)

# Interrupts
•Special pins on any microcontroller
•A change of state (HIGH/LOW) triggers a high priority event, that runs immediately: Interrupt Service Routine (ISR)
•Use when you absolutely cannot miss an event. Eg. Position control of a robotic arm.
•If microcontroller is not paying attention and the position of a relative encoder changes, the system no longer has control of the arm. BAD!
•Remember: Keep your ISR very brief. No delay, while, serial communication…
•If interrupts are triggered too often, or they take too long, the rest of the program cannot run.

# Quadrature Encoder + Interrupt
•2 pulse trains that are 90 degrees out of phase allow you to determine direction

•This is the key mechanism behind position control using an absolute encoder

•Use an interrupt on A or B or A &B to make sure you don’t miss a change in position

•Use a counter to keep track of the number of ticks moved.

•How many counts per revolution on your encoder? What is the angular precision?
![Pasted image 20221030221554](Attachments/Pasted%20image%2020221030221554.png)

# Example Questions
#Examples 
1.Given a 12-bit A/D converter operating over a voltage range from -5 V to 5 V, how much does the input voltage have to change in order to be detectable?

2.Modify the 2 bit A to D Flash converter from the notes to linearly encode a 0 to 3.3 V input.

3.How many pull-up or pull-down resistors are needed to implement 4 different I2C sensors with an Arduino.

4.What happens when pin 10 of a 74HC595 pin is pulled low?

5.What happens when pin 13 of a 74HC595 pin is held high?

6.Give a line or two of code to get an arduino to output a 5V square wave with a duty cycle varying from 0 to 100%. You do not need to use any delays. What is the frequency? What pins does this work on?

7.Sketch the time-based output of pin 9 using the following code:

void setup() {  myservo.attach(9);}

void loop() {   myservo.write(20);}

●