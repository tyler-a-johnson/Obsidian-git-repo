---
date: 2024-04-26
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Lecture Slides:**
[Design via Frequency Response](Attachments/Workshop%20Ch11%20-%20Design%20via%20Frequency%20Response_annotated.pdf)

**Review of root locus design:**
- The transient response of a control system can be designed by adjusting the gain along the root locus
	- Finding the transient specification on the root locus
	- Setting the gain accordingly
	- Settling for the resulting steady-state error
- Disadvantage
	- Only the transient response and steady-state error represented by **points along the root locus** are available
- **Cascade compensators** have been introduced to meet transient response specifications represented by **points not on the locus** and, independently, steady-state error requirements.

*Bode plots vs Root Locus*
- Stability and transient response design via gain adjustment
	- Unlike root locus techniques, **Bode plots can be implemented conveniently without a computer or other tool except for testing the design.**
	- We can easily draw bode plots using asymptotic approximations and **read the gain from the plots.**
	- The **computational disadvantage** of root locus **vanishes** when using tools like MATLAB.

Transient response design via cascade compensation
	- Bode plots are **not as intuitive as the root locus**
	- It is something of an art to design cascade compensation with Bode plots
	- In Bode plots, phase margin is related to percent overshoot and bandwidth is related to both damping ratio and settling time (or peak time), and the equations are rather complicated
	- The reshaping of open-loop transfer function's frequency response can lead to several trials until all transient response requirements are met.

Steady-state error design via cascade compensation
- *An advantage of bode plots is the ability to design derivative compensation, such as lead compensation, to improve both transient response and steady-state error.*
- **Using root locus there are an infinite number of possible solutions to the design of a lead compensator**
- **root locus requires numerous tries to arrive at the solution that yields the required steady-state error performance.**

![](Attachments/Pasted%20image%2020240426195341.png)

# Steady-state error insights from Bode plots
## Step input, assuming G(s) type 0:
![700](Attachments/Pasted%20image%2020240426195614.png)
Type zero system:
$$G(s) = K \frac{\prod^{n}_{i=1}(s+z_{i})}{\prod_{i=1}^{m} (s+p_{i})}$$
Position constant $K_{p}$
$$K_{p} = K \frac{\prod _{i=1}^{n} z_{i}}{\prod_{i=1}^{m}p_{i}}$$

At DC, or close to it ($\omega_{0}$) plot magnitude proportional to $K_{p}$
$$20 \log M = 20 \log K  \frac{\prod _{i=1}^{n} z_{i}}{\prod_{i=1}^{m}p_{i}} = 20 \log K_{p}$$

**Error to unit step decreases if magnitude at $\omega_{0}$ increases:**
$$e_{ss-step} = \frac{1}{1+K_{p}}$$

## Ramp input, assuming G(s) type 1:
![700](Attachments/Pasted%20image%2020240426200604.png)
Type 1 system:
$$G(s) = K \frac{\prod^{n}_{i=1}(s+z_{i})}{s\prod_{i=1}^{m} (s+p_{i})}$$

Velocity constant $K_{v}$
$$K_{v} = \lim_{  s \to 0 } sG(s) = K \frac{\prod _{i=1}^{n} z_{i}}{\prod_{i=1}^{m}p_{i}} $$

G'(s) = 1, i.e, it intersects the frequency axis (0dB) at:
$$\omega =K \frac{\prod _{i=1}^{n} z_{i}}{\prod_{i=1}^{m}p_{i}} = K_{v}$$

Error to unit ramp decreases if G'(s) intercept $\omega$ increases:
$$e_{ss-ramp} = \frac{1}{K_{v}}$$

## Visual inspection of Bode Magnitude plot at DC (low freq) where $s\rightarrow 0$
```ad-note
title: Type 0
**No common "s" in the denominator of G(s)**
- Magnitude is a horizontal ling when $s \rightarrow 0$
- Shifting the Magnitude plot upwards where $s \rightarrow 0$ reduces steady state error to step input

```
```ad-example
title: Type 1
**One common "s" in the denominator of G(s)**
- Magnitude decrease by -20dB/decade when $s \rightarrow 0$ because of the 1/s term in G(s)
- Intercept of initial magnitude slope line with frequency axis inversely proportional to ramp error
```
```ad-bug
title: Type 2
**One common "s^2" in the denominator of G(s)**
- Similar considerations to type 1 systems apply

```

**Conclusion:**
- Bode plot magnitude for $s \rightarrow 0$ relates to steady state error of time repsonse
- Higher magnitude (or higher -ve slope) where $s \rightarrow 0$ means lower, or no, steady state error.

# Transient Response via gain adjustment

```ad-note
- Draw the Bode magnitude and phase plots for a convenient value of gain
- Determine the required phase margin from the percent overshoot.
```

$$\zeta = \frac{- \ln (\% OS / 100)}{\sqrt{ \pi^{2} + \ln^{2}(\% OS / 100) }}$$
$$\Phi_{M} = \tan^{-1} \frac{2 \zeta}{\sqrt{ -2 \zeta^{2}+ \sqrt{  1+ 4 \zeta^4 } }}$$
![](Attachments/Pasted%20image%2020240426202941.png)
- **Find the frequency $\omega_{\Phi M}$** on the Bode phase diagram that yields the desired phase margin, CD
- **Change the gain** by an amount AB to force the magnitude curve to go through 0dB at $\omega_{\Phi M}$
![700](Attachments/Pasted%20image%2020240426202958.png)

## Example problem
For the position control system below, find the value of the preamplifier gain to K to yield a 9.5%  overshoot in the transient response.
![](Attachments/Pasted%20image%2020240426203128.png)
![](Attachments/Pasted%20image%2020240426203153.png)
%OS = 9.5%, $\zeta$ = 0.6 $\rightarrow$ PM = 59.2 deg. Draw the bode plot or K = 3.6 so that the bode plot starts at 0dB at $\omega = 0.1$rad/s
![700](Attachments/Pasted%20image%2020240426203708.png)
- In the plot, PM = 59.2deg is achieved at $\omega=14.8$ rad/s
- At $\omega= 14.8$ rad/s the magnitude response is $-44.2dB$
- Thus K must be increased so that the magnitude response at this frequency is 0dB.
- To do this K must be increased from 3.6 by a factor of $10^{\frac{44.2 }{20}=}162.18$
- Thus the desired value of K is $3.6*162.18 = 583.9$
![](Attachments/Pasted%20image%2020240426203647.png)

The value $K = 583.9$ yields a phase margin for $\% OS = 9.48 \%$
Open loop transfer function becomes $G(s) = \frac{58,390}{s(s+36)(s+100)}$
($K*100$ as per the diagram)

Stability of the closed loop system and validity of second order assumptions need to be verified.
![700](Attachments/Pasted%20image%2020240426204044.png)

# Lead compensation
**Lead compensation improves:**
- The phase margin to reduce the percent overshoot.
- The gain crossover to realise a faster transient response.

Note that:
- The low frequency portion of the Bode plot is unchanged (DC gain is unchanged)
![700](Attachments/Pasted%20image%2020240426204251.png)

**Lead compensator frequency response**
- This form has DC gain equal to 1, where $\beta < 1$
- Frequency $\omega_{max}$ at which the maximum phase angle $φ_{max}$ occurs can be found using
$$\omega_{max} = \frac{1}{T\sqrt{ \beta }}$$


$$G_{c}(s) = \frac{1}{\beta} \frac{s+ \frac{1}{T}}{s+ \frac{1}{\beta T}}$$

![](Attachments/Pasted%20image%2020240426204849.png)
- The maximum phase angle $φ_{max}$
$$\phi _{max} = \tan^{-1} \frac{1-\beta}{2 \sqrt{ \beta }}= \sin^{-1} \frac{1-\beta}{1+\beta}$$

![](Attachments/Pasted%20image%2020240426204833.png)
- Compensator's magnitude at $\omega_{max}$ is
$$|G_{c}(j \omega_{max})| = \frac{1}{\sqrt{ \beta }}$$
![800](Attachments/Pasted%20image%2020240426212009.png)
![](Attachments/Pasted%20image%2020240426212036.png)

## Design procedure
```ad-summary
**Design procedure**
1. **Find the closed loop bandwidth** required to meet the settling time, peak time or rise time requirement
2. **Set the gain** K of the uncompensated system to the value that satisfies the steady-state error requirement
3. **Plot the bode plot** magnitude and phase diagrams for this value of gain and determine the uncompensated system's phase margin.
4. **Find the phase margin** to meet the damping ratio or percent overshoot requirement. Evaluate the additional phase contribution required from the compensator
5. **Determine the value of $\beta$** from the lead compensator's required phase contribution.
6. **Determine the compensator's magnitude** at the peak of the phase curve
7. **Determine the new phase margin frequency** by finding where the uncompensated system's magnitude curve is the negative of the lead compensator's magnitude at the peak of the compensator's phase curve.
8. **Design** the lead compensator's break frequencies
9. **Perform simulation** to check that all specs are met by the design, **if not, redesign**

```
![](Attachments/Pasted%20image%2020240426213552.png)

## Lag compensation (optional)
**Lag compensation improves:**
- Stability, by increasing the **gain margin** without changing crossover frequency or phase margin
	- Phase margin determined during gain-adjustment design stage: unchanged by lag compensator.
	- Ideally, no change in transient response between uncompensated and compensated system.
- **The steady-state error**
	- $K_{v}$ is high, while keeping the system stable (from fig below, the Uncomp system with desired $K_{v}$ would be unstable due to M > 0dB at crossover frequency.
$$G_{c}(s) = \frac{1}{a}* \frac{s + \frac{1}{T}}{s + \frac{1}{\alpha T}}$$

*Note: this expression provides $G_{c}(0) = 1$*
![800](Attachments/Pasted%20image%2020240426214224.png)

**Bode plot of a lag compensator**
Overall phase is negative (ie. lagging)
![](Attachments/Pasted%20image%2020240426214304.png)

### Design Procedure
```ad-summary
1. Set the gain K to the value that satisfies the steady state error specification and plot the Bode magnitude and phase diagrams for this value of gain.
	1. **Assumes initial gain adjustment done to operate at desired phase margin (%OS)**
2. Find frequency where phase margin is 10deg higher than desired value, to compensate for compensator phase lag
3. Select a lag compensator whose magnitude response yields a compensated bode magnitude diagram that goes through 0dB at the frequency found in step 2 as follows:
	1. Draw the compensator's high frequency asymptote to yield 0dB for the compensated system at the frequency found in step 2. If the frequency is 20log$K_{PM}$ then the compensator's high-frequency asymptote will be set to -20log$K_{PM}$
	2. **Select** the upper break frequency (compensator zero) to be 1 decade below the frequency found in step 2.
	3. Select the low frequency asymptote to be at 0dB (compensator has a DC gain 

```
