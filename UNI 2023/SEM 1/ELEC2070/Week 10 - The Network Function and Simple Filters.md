 #ELEC/2070 #Circuits #Communication/SignalProcessing #UniNotes

**Slides:**
[ELEC2070 Week 10 2023 Frequency response](Attachments/ELEC2070%20Week%2010%202023%20Frequency%20response.pdf)

# Frequency Response and Bode Plots
*In many real systems, the forcing function is **not** pure sinusoidal*

*In systems in which information is to be transmitted, a single sinusoid is useless since it repeats itself. More complex functions are required.*

Signals can be decomposed into sinusoidal components using the Fourier Transform
![Pasted image 20230614140654](Attachments/Pasted%20image%2020230614140654.png)

## Bandwidth
All real signals occupy a limited range (bandwidth) in the frequency domain.
![Pasted image 20230614140811](Attachments/Pasted%20image%2020230614140811.png)

## Filters (in the Frequency Domain)

Filters are usually two port circuits. They are designed to filter a portion of the frequency components pf the input signal.
![Pasted image 20230614140947](Attachments/Pasted%20image%2020230614140947.png)
The filter circuit responds to each frequency component differently because impedance values differ at each frequency.

![Pasted image 20230614141217](Attachments/Pasted%20image%2020230614141217.png)
The network function is the frequency response of a circuit.
$$H(f) = \frac{V_{out}(f)}{V_{in}(f)}$$
It can also be represented as a function of $\omega$

### Example
![Pasted image 20230614141406](Attachments/Pasted%20image%2020230614141406.png)

## Input and Output Signals in the Time Domain
In the frequency domain, the output signal is found by multiplying the input signal with the network function.
In the time domain, we convolve. Much harder.
![Pasted image 20230614142150](Attachments/Pasted%20image%2020230614142150.png)

# First Order Filters

## First Order Low Pass Filters using one Capacitor
We can find the voltage network function with the following voltage division.
![Pasted image 20230614142517](Attachments/Pasted%20image%2020230614142517.png)
![Pasted image 20230614142528](Attachments/Pasted%20image%2020230614142528.png)

Define corner/break frequency:
$$f_{c}= \frac{1}{2\pi RC}\rightarrow H(f)=\frac{1}{1+j \frac{f}{f_{c}}}$$

## First Order Low Pas Filters using one Inductor
Another type of low pass filter.
![Pasted image 20230614142845](Attachments/Pasted%20image%2020230614142845.png)
![Pasted image 20230614142955](Attachments/Pasted%20image%2020230614142955.png)


## Magnitude and Phase Angle Plots of the Voltage Network Function

**Magnitude of the network function**
$$|H(f)| = \frac{1}{\sqrt{1+(f/f_{b})^2}}$$
![Pasted image 20230614143253](Attachments/Pasted%20image%2020230614143253.png)

**Phase Angle of the Network Function**
$$\angle H(f) = -arctan(\frac{f}{f_{b}})$$
![Pasted image 20230614143348](Attachments/Pasted%20image%2020230614143348.png)

# Logarithmic Scales
![Pasted image 20230614143459](Attachments/Pasted%20image%2020230614143459.png)

## Log - Log Plots
**Only the magnitude is plotted on the log-log scale.**
$$|H(f)|_{dB}=20\log_{10}|H(f)|$$
![Pasted image 20230614143639](Attachments/Pasted%20image%2020230614143639.png)

## Decibel (dB) scale for voltage and power

**Voltage (rms-volts):**
$$dBV(V_{rms})= 20\cdot \log_{10}(\frac{V_{rms}}{1V_{rms}}) $$

**Power (watts):**
$$dB(P_{a}) = 10\cdot \log_{10}(\frac{P_{a}}{1 W})$$

**Power (milliwatts):**
$$dBm(P_{a})=10\cdot \log_{10}(\frac{P_{a}}{1mW})$$
$$dBm(P_{a})=dB(P_{a})+30$$

## Bode Plots
Bode plot of a low pass filter
![Pasted image 20230614144603](Attachments/Pasted%20image%2020230614144603.png)

## Gain and Phase Shift
![Pasted image 20230614144919](Attachments/Pasted%20image%2020230614144919.png)
**Gain:** the ratio of the amplitude of the output sinusoid to the amplitude of the input sinusoid.

**Phase Shift:** Is the difference between the phase angle of the output sinusoid to the phase angle of the input sinusoid.

## dB values of a simple low-pass filter
$$H(f) = \frac{1}{1+j f}{f_{b}}$$
$$|H(f)| = \frac{1}{\sqrt{1+(f/f_{b})^2}}$$
![Pasted image 20230614145501](Attachments/Pasted%20image%2020230614145501.png)

## First Order High Pass Filters
![Pasted image 20230614145646](Attachments/Pasted%20image%2020230614145646.png)
![Pasted image 20230614150709](Attachments/Pasted%20image%2020230614150709.png)
![Pasted image 20230614151115](Attachments/Pasted%20image%2020230614151115.png)

# How to Guess Type of Filter?

## Capacitors at Low and High Frequencies
![Pasted image 20230614151306](Attachments/Pasted%20image%2020230614151306.png)

## Inductors at Low and High Frequencies
![Pasted image 20230614151340](Attachments/Pasted%20image%2020230614151340.png)

## Series RL Combination at Low and High Frequencies
![Pasted image 20230614184621](Attachments/Pasted%20image%2020230614184621.png)

## Series RC Combination at Low and High Frequencies
![Pasted image 20230614184727](Attachments/Pasted%20image%2020230614184727.png)

## First Order Low Pass Filter at Low and High Frequencies
![Pasted image 20230614185106](Attachments/Pasted%20image%2020230614185106.png)

## Plotting by Hand
![Pasted image 20230614185307](Attachments/Pasted%20image%2020230614185307.png)

## First Order High Pass Filter at Low and High Frequencies
![Pasted image 20230614185510](Attachments/Pasted%20image%2020230614185510.png)

## Another Filter to Guess
![Pasted image 20230614185719](Attachments/Pasted%20image%2020230614185719.png)
![Pasted image 20230614185741](Attachments/Pasted%20image%2020230614185741.png)

## Parallel RC Combination at Low and High Frequencies
![Pasted image 20230614185940](Attachments/Pasted%20image%2020230614185940.png)

## Parallel RL Combination at Low and High Frequencies
![Pasted image 20230614190206](Attachments/Pasted%20image%2020230614190206.png)

## First Order Circuits with two Corner Frequencies
![Pasted image 20230614190626](Attachments/Pasted%20image%2020230614190626.png)

### Example
![Pasted image 20230614190738](Attachments/Pasted%20image%2020230614190738.png)
![Pasted image 20230614190758](Attachments/Pasted%20image%2020230614190758.png)
![Pasted image 20230614190830](Attachments/Pasted%20image%2020230614190830.png)
![Pasted image 20230614190904](Attachments/Pasted%20image%2020230614190904.png)
![Pasted image 20230614190923](Attachments/Pasted%20image%2020230614190923.png)

## Bode Plot
![Pasted image 20230614191110](Attachments/Pasted%20image%2020230614191110.png)


## Bode Plot on the dB scale
![Pasted image 20230614191219](Attachments/Pasted%20image%2020230614191219.png)

# Second Order Filters

# Resonance
Resonance happens when values of the capacitive and inductive reactances are equal in value and cancel eachother out.
This happens at a specific frequency called the resonant frequency

## Series Resonance
![Pasted image 20230614192125](Attachments/Pasted%20image%2020230614192125.png)

## Bandwidth and Quality Factor, Q
![Pasted image 20230614192229](Attachments/Pasted%20image%2020230614192229.png)

## Series Impedance
![Pasted image 20230614192954](Attachments/Pasted%20image%2020230614192954.png)


## Band Pass Filter
![Pasted image 20230614193053](Attachments/Pasted%20image%2020230614193053.png)

## Series Resonance Example
![Pasted image 20230614193327](Attachments/Pasted%20image%2020230614193327.png)

# Parallel Resonance
![Pasted image 20230614193459](Attachments/Pasted%20image%2020230614193459.png)
![Pasted image 20230614193536](Attachments/Pasted%20image%2020230614193536.png)

# Ideal Filters
![Pasted image 20230614193634](Attachments/Pasted%20image%2020230614193634.png)

## Second Order Low Pass Filter
![Pasted image 20230614193730](Attachments/Pasted%20image%2020230614193730.png)

## Second Order High Pass Filter
![Pasted image 20230614193808](Attachments/Pasted%20image%2020230614193808.png)

## Second Order Band Pass Filter
![Pasted image 20230614193843](Attachments/Pasted%20image%2020230614193843.png)

## Second Order Band Stop Filter
![Pasted image 20230614193914](Attachments/Pasted%20image%2020230614193914.png)

## Fifth Order Butterworth Lowpass Filter
![Pasted image 20230614193955](Attachments/Pasted%20image%2020230614193955.png)