---
date: 2024-04-26
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Lecture Slides:**
[Digital Control Systems pt1](Attachments/Workshop%20Week%207%20–%20Digital%20Control%20Systems%20-%20Part%201_annotated.pdf)
[Digital Control Systems pt2](Attachments/Workshop%20Week%207%20–%20Digital%20Control%20Systems%20-%20Part%202_v1_annotated.pdf)

# Intro
- This will only cover frequency domain analysis and design.
- Specifically, this will cover analysis and design of stability, steady state error, and transient response for discrete time systems.
- Modern microcontrollers make this much easier
- Microcontrollers can perform two main functions:
	- **Supervisory** external to the feedback loop eg scheduling tasks, monitoring parameters and variables, safety features etc
	- **Control** internal to the feedback loop
- **Hardware compensators** built with analogue circuits (passive or active), are now **replaced with software**

*Advantages of microcontrollers over analogue systems*
- **Reduced cost**
	- A single digital system can replace numerous analogue controllers.
	- Banks of equipment, meters and knobs are replaced with computer terminals
- **Flexibility** in response to design changes
	- Changes and mods can be implemented in software instead of expensive hardware changes.
- **Noise immunity**
	- Digital systems exhibit **more noise immunity** than analog systems by method of implementation

- The signals r, e, f and c shown in Fig(a) can take on two forms: digital or analogue
- Fig(b) is a block diagram showing placement of A/D and D/A converters.
![800](Attachments/Pasted%20image%2020240427195515.png)
![800](Attachments/Pasted%20image%2020240427195532.png)


*DAC (Digital to analogue conversion)*
- D/A conversion is simple and effectively instantaneous
- Properly weighted voltages are summed together to yield the analogue output.
	- In figure below, three weighted voltages are summed. The three-bit binary code is represented by the switches.
	- If the binary number is 110 the middle and bottom switches are on, and the analogue output is 6 volts. In actual use, the switches are electronic and are set by the input binary code.
![800](Attachments/Pasted%20image%2020240427195904.png)

*Analogue-to-digital (A/D) conversion*
- **A/D** conversion is a 2 step process **not instant**
- There is a **delay** between input analogue signal and output digital signal.
- the analogue signal is first converted to a sampled signal, then converted to a sequence of binary numbers
[Week 9 - Sampling](../../../UNI%202023/SEM%201/ELEC2040/Week%209%20-%20Sampling.md)
- sampling rate must be at least **twice the bandwidth of the signal**
- This minimum sampling frequency is called the **Nyquist Sampling rate**
- Analogue signal is sampled at periodic intervals and held over the sampling interval by a device called **zero-order sample-and-hold** (ZOH) that yields a staircase approximation to the analogue signal.
- Higher order holds such as **first order hold** generate more complex and more accurate waveshapes between samples.
- After sampling and holding, the A/D converter converts the sample to a digital number
![](Attachments/Pasted%20image%2020240427200646.png)
- The dynamic range of the analogue signal's voltage is divided into discrete levels.
- Each level is assigned a digital number.
	- In Fig(b) from previous slide, the analogue signal is divided into eight levels ($2^3$ - a three bit digital number)
	- The difference between quantization levels is M/8 volts, M is the max analogue voltage.
	- Typically the difference is $\frac{M}{2^n}$ volts, where n is the number of binary bits used for the A/D conversion.
	- There is an **quantization error** for each digitized analogue value except the voltage at the boundaries such as M/8 and 2M/8
	- Generally for a system using **roundoff**, the quantization error will be $\left( \frac{1}{2} \right)\left( \frac{M}{2^{n}} = \frac{M}{2^{2n+1}} \right)$
- Stability and transient response are now dependent upon the sampling rate.
- If the sampling rate is too slow, the system can be unstable, since the values are not being updated rapidly enough.

# Discrete-time modelling
- **If A/D conversion *could* happen instantly,** and time samples occurred at intervals of time close to zero, there would be no need to differentiate between the digital and analogue signals
- This is not the case, we must come up with **mathematical representation** of this sample-and-hold process
![800](Attachments/Pasted%20image%2020240427202613.png)
## Modelling the sampler
- Our goal is to represent the digital system as a transfer function similar to that for any subsystem.
- When signals are sampled, however, the Laplace transform becomes unwieldy.
- **Laplace transform can be replaced** by another related transform called the **z-transform**
- Using the model in Fig(b) the time equation of the sampled waveform becomes:
![](Attachments/Pasted%20image%2020240427203231.png)
$$f^{*}_{T_{W}}(t) = f(t)s(t) = f(t) \sum_{k=-\infty}^{\infty} u(t-kT) - u(t-kT-Tw)$$
Where k is an integer between $- \infty$ and $+ \infty$, T is the period of the pulse train, and $T_{w}$ is the pulse width.

After transformation, $f^{*}_{Tw}(t)$ becomes $f^{*}_{Tw}(t)=T_{w} \sum_{k=-\infty}^{\infty} f(kT) \delta(t-kT)$
- Where $\delta(t-kT)$ are **Dirac delta functions**
- The equation above is depicted in figure below
![800](Attachments/Pasted%20image%2020240427204027.png)
![](Attachments/Pasted%20image%2020240427204045.png)

## Modelling the Zero-Order Hold (ZOH)
- The final step in modelling the digital system is modelling the ZOH that follows the sampler.
- If we assume an ideal sampler (equivalent to setting $T_{w} = 1$), then $f^{*}(t)$ is represented by a sequence of delta functions.
- The **ZOH yield s a staircase approximation** to $f(t)$ Hence, the output from the hold is a sequence of step functions whose amplitude is $f(t)$ at the sampling instant, or $f(kT)$.
- Transfer function of ZOH is:
$$G_{h}(s) = \frac{1-e^{-Ts}}{s}$$
![](Attachments/Pasted%20image%2020240427204500.png)
![](Attachments/Pasted%20image%2020240427204525.png)

# Z-Transform
