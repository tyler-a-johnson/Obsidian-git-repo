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
- Determine the required phase margin from the per
```
