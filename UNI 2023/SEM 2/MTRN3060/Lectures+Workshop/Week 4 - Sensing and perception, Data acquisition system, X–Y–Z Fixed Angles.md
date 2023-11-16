#MTRN/3060 

**Slides:**
[Week 4-Lecture workshop-ilearn](Attachments/Week%204-Lecture%20workshop-ilearn.pdf)
# Basic Sensing Elements
![Pasted image 20230817121755](Attachments/Pasted%20image%2020230817121755.png)
*Structure of a measurement system.*

# Data Acquisition
**Data Acquisition** (DAQ) is the process of measuring an electrical or physical phenomenon such as voltage, current, temp, pressure, or sound with a computer. A DAQ system consists of DAQ measurement hardware, and a computer running a program to accept process and store that info.
![Pasted image 20230817122130](Attachments/Pasted%20image%2020230817122130.png)
*The collection of **hardware** and **software** components enable a computer to receive physical signals.*

# DAQ System Components
![Pasted image 20230817122421](Attachments/Pasted%20image%2020230817122421.png)
1. Buffer amplifier - *Make our signal easier to read.*
2. Low-pass filter - *Removes high frequency noise.*
3. Sample and hold
4. ADC - *To create digital information*
5. Computer/memory - *Storage*
## Basic Principles of Sensing
- **Sensor:** A device that converts a physical parameter to an electric output
- **Transducer:** A device that converts energy from one form to another
- **Actuator:** Convert an electric signal to physical output (movement)

## Amplification
Signals from measurement devices are not in the form we want them to be:
- *Too small* usually in the mV range
- *Too noisy* usually due to EMF interference
- *Contain wrong information* (approximation error), sometimes due to poor transducer design or install
- *Have DC offset* usually due to the transducer and instrumentation design.
![Pasted image 20230817123019](Attachments/Pasted%20image%2020230817123019.png)

## Sample & Hold
![Pasted image 20230817130216](Attachments/Pasted%20image%2020230817130216.png)
A series of voltage followers with a control gate to "hold" (horizontal part of the signal).
![Pasted image 20230817130351](Attachments/Pasted%20image%2020230817130351.png)

## ADC and Data Storage
![Pasted image 20230817130522](Attachments/Pasted%20image%2020230817130522.png)
Output is a binary string of data. This is stores as our dataset.

*A/D Converter:* Electric device that converts an analog voltage to digital code.
*Quantizing:* Defined as the transformation of a continuous analog signal into a set of discrete output states (Discretizes amplitude)
*Coding:* Processing/Choosing how to store this data and what to do with it.

The resolution of A/D converters rely on the number of bits used digitally to approximate the analog value of the input.
**For a number of possible states, where N is equal to the number of bit combinations that can be output from the converter (n = number of bits used).**
$$N = 2^{n}$$

### Analog-to-Digital Converter
![Pasted image 20230817131202](Attachments/Pasted%20image%2020230817131202.png)
Number of decision points that occur is $N-1$.

The analog *quantization size Q* sometimes called the **code width**, is defines as the full-scale range of the A/D convert or divided by the number of output states

#### Example
Consider sine wave. Sample with 8 sample points and quantize using 2 bits.
![Pasted image 20230817131456](Attachments/Pasted%20image%2020230817131456.png)

*8 sample points*
![Pasted image 20230817131510](Attachments/Pasted%20image%2020230817131510.png)

*Using 2 bits to quantize*
![Pasted image 20230817131612](Attachments/Pasted%20image%2020230817131612.png)

#### Example 2
*Consider ADC converter with dynamic range of 1V and quantize in 3Bits*
$$\text{Sample Size} = \frac{1}{2^{3}}=0.125V$$
![Pasted image 20230817131803](Attachments/Pasted%20image%2020230817131803.png)

# Sampling
[Week 9 - Sampling](../../../SEM%201/ELEC2040/Week%209%20-%20Sampling.md)
[Week 10 - Discrete-Time Signals and Sampling](../../../SEM%201/ELEC2040/Week%2010%20-%20Discrete-Time%20Signals%20and%20Sampling.md)

*Frequency:* is the number that pass the given point in a certain amount of time $f = 3$ waves/s = $3Hz$
$f = \frac{1}{T}$

*Period:* Amount of time that takes for one wave to pass. Or the time interval between beats.

![Pasted image 20230817123836](Attachments/Pasted%20image%2020230817123836.png)
To be able to input analog data to a digital microcontroller, analog must be converted to digital.

*Sampling:* The process to numerically evaluate the signal at a discrete moment in time. The result is a *digitized signal* composed of discrete values corresponding to each sample.

- Gives values of signal at samples
- Values between samplings depend on "holding" during sampling.
- Higher sampling rate enables less sampling error

## How fast should we sample?
![Pasted image 20230817124238](Attachments/Pasted%20image%2020230817124238.png)
*A higher sampling rate means less error, and means we can more closely match initial signal.*
- We do not normally sample "as fast as we can" because that requires large amounts of storage.
- Collect the minimal sampling rate for a given application that retains enough information so the initial can be reconstructed.

**Aliasing is an effect that causes different signals to become indistinguishable when sampled (aliases of one another)**
Refers to signals of different frequencies interfering with other samples.
![Pasted image 20230817124636](Attachments/Pasted%20image%2020230817124636.png)

### Shannon's Sampling Theorem
In theory, we need to sample at a rate at least more than two times the maximum frequency component in the signal to retain all frequency components.
$$f_{S}> 2f_{max}$$
The timer interval between digital samples should be $\Delta t = \frac{1}{f_{s}}$

## Anti-Aliasing Filter
![Pasted image 20230817125505](Attachments/Pasted%20image%2020230817125505.png)
Analog filter that removes signal frequencies above $\frac{f_{s}}{2}$ where $f_{s}$ is our sample frequency.
*Consists of Amp -> Low Pass Filter -> ADC*

# Beat Frequency
- A beat is an interference pattern between two signals of *slightly different* frequencies, percieved as a periodic variation in volume whose rate is the difference of the two *frequencies.*
- Beat frequency is common in optics, mechanics and acoustic
![Pasted image 20230817125117](Attachments/Pasted%20image%2020230817125117.png)
*Two frequencies added together and their output has a beat freq as a result.*
$$f_\text{beat} = |f_{1}-f_{2}|$$

**Example:**
Freq 1 = 425Hz and Freq 2 - 436Hz
*Freq Beat = 11Hz*

[Spatial Descriptions and Transformations in 3D Space](../../../../Distilled%20Notes/Spatial%20Descriptions%20and%20Transformations%20in%203D%20Space.md#X-Y-Z%20Fixed%20Angles|Spatial%20Descriptions%20and%20Transformations%20in%203D%20Space%20(X-Y-Z%20Fixed%20Angles))


# Translational Operation

For rotation matrices $^{A}_{B}R = ^{B}_{A}R^{-1} = ^{B}_{A}R^{T}$
