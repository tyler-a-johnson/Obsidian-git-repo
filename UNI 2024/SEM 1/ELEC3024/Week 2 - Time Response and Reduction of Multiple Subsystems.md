---
date: 2024-03-04
tags:
  - ELEC/3024
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Lecture Slides:**
[Time Response](Attachments/Nise%20-%20Ch04%20Highlights_annotated.pdf)
[Reduction of Multiple Systems](Attachments/Nise%20-%20Ch05%20Highlights_annotated.pdf)

# Time Response
---

## Time Response
- How to find the time response from the transfer function
- How to use poles and zeros to determine the response of a control system
- How to describe quantitatively the transient response of first and second order systems
- How to approximate higher-order systems as first or second order
- How to find the time response from the state-space representation

### Poles and zeros of a First-Order System
```ad-note
**Poles** of a transfer function are the values of the Laplace transform variable, $s$, that cause the transfer function to become infinite.

**Zeros** of a transfer funtion are the values of the Laplace transform variable, $s$, that cause the transfer function to become zero.

```

![](Attachments/Pasted%20image%2020240421163106.png)
We have poles at -5 and zeros at -2
$C(s) = G(s)R(s) = \frac{s+2}{s+5} * \frac{1}{s} = \frac{s+2}{s(s+5)}$
We separate C(s) into $\frac{A}{s}+\frac{B}{s+5}$  using [[Partial Fractions]]


![](Attachments/Pasted%20image%2020240421165953.png)
```ad-note
Input pole is the pole of our input $1/s$

```
We can convert our output transform$$\frac{\frac{2}{5}}{s} + \frac{\frac{3}{5}}{s+5}$$
To our output time response:
$$c(t) = \frac{2}{5} + \frac{3}{5}e^{-5t}$$

#### Example
Given the system below, specify the natural and forced parts of the output 
![](Attachments/Pasted%20image%2020240421174614.png)

## First Order Systems
![](Attachments/Pasted%20image%2020240421174729.png)
Initial slope $= \frac{1}{\text{time constant}} = a$

```ad-note

**Time constant**
$\frac{1}{a}$ it is the time it takes for the step response to rise to 63% of its final value.

**Rise time $T_{r}$**
Time for the waveform to go from 0.1 to 0.9 of its final value.

**Settling time $T_{s}$**
time for the response to reach, and stay within 2% of its final value.
$$T_{s}=\frac{4}{a}$$

```

## First Order Transfer Functions via Testing
With a step input, we can measure the time constant and the steady-state value, from which the transfer function can be calculated.

Let first order system be  $G(s) = \frac{K}{s+a}$

And the step response $C(s) = \frac{K}{s(s+a)} = \frac{K /a}{s}-\frac{K /a}{s+a}$

1. Final value = 0.72
2. 63% of final value $= 0.63*0.72 = 0.45$
3. Curve reaches 0.45 at 0.13s hence $a = 1/0.13 = 7.7$
4. Steady state value $K/a = 0.72,$ hence $K = 0.72*7.7 = 5.54$
$$G(s) = \frac{5.54}{s+7.7}$$
![](Attachments/Pasted%20image%2020240421183413.png)

## Second Order Systems Intro
![](Attachments/Pasted%20image%2020240421183652.png)
![](Attachments/Pasted%20image%2020240421183705.png)

## Summary of Second Order Systems
![](Attachments/Pasted%20image%2020240421183856.png)
There are four possible response (when $a \geq 0$ and $b>0$):
1. **Overdamped responses**
	*Poles*: Two real at $- \sigma_{1}, - \sigma_{2}$ . Where $\sigma_{1} \neq \sigma_{2}$ and $\sigma_{1},\sigma_{2}>0$
	*Natural Response:* Two exponentials with time constants equal to the reciprocal of the pole locations, or:
	$$c(t) = K_{1} e^{- \sigma_{1} t} + K_{2} e^{- \sigma_{2} t}$$
2. **Underdamped response**
	*Poles*: Two complex at $- \sigma_{d} \pm j \omega_{d}$  and $\sigma_{d} > 0$
	*Natural Response:* Damped sinusoid with an exponential envelope whose time constant is equal to the reciprocal of the pole's real part. The radian frequency of the sinusoid, the damped frequency of oscillation, is equal to the imaginary part of the poles, or:
	$$c(t) = A e^{-\sigma_{d}t}*\cos(\omega_{d}t - \phi)$$
	Where $\omega_d$ is the damped frequency of oscillation
	![500](Attachments/Pasted%20image%2020240421185052.png)
3. **Undamped response**
	*Poles:* Two imaginary at $\pm j \omega_{1}$
	*Natural Response:* Undamped sinusoid with radian frequency equal to the imaginary part of the poles, or
	$$c(t) = A \cos (\omega_{1} t - \phi )$$
	
4. **Critically damped responses**
	*Poles:* Two real at $- \sigma_{1}$ and $\sigma_{1} > 0$
	*Natural Response:* One term is and exponential whose time constant is equal to the reciprocal of the pole location. Another term is the product of time, t, and an exponential with time constant equal to the reciprocal of the pole location:
	$$c(t) = K_{1} e^{- \sigma_{1}t}+K_{2} t e^{- \sigma_{1} t} $$
	

### General Second Order Systems
**Natural Frequency** $\omega_{n}$
The frequency of oscillation without damping

**Damping ratio** $\zeta$
$$\zeta= \frac{\text{Exponential decay freq}}{\text{Natural frequency (rad/s)}}= \frac{1}{2 \pi} \frac{\text{Natural Period (s)}}{\text{Exponential time constant}}$$

Consider $G(s) = \frac{b}{s^{2}+as+b}$
Lets determine what is the term a and B in terms of omega and zeta
Without damping (a=0) the poles are on the imaginary axis and $G(s) = \frac{b}{s^{2} + b}$
Then 
$\omega_{n} = \sqrt{ b }$
$b = \omega_{n}^2$

Now we assume an underdamped system. The real part of the complex pole is $\sigma = -a / 2$
and it determines the exponential decay frequency.

Hence:
$$\zeta = \frac{\text{Exponential decay freq}}{\text{ Natural freq (rad/s)}}= \frac{|\sigma|}{\omega_{n}}= \frac{\frac{a}{2}}{\omega_{n}} \rightarrow a = 2 \zeta \omega_{n}$$

Then, the general second-order transfer function is:
$$G(s) = \frac{b}{s^{2}+ as + b} = \frac{\omega_{n}^{2}}{s^{2}+ 2 \zeta \omega_{n}s + \omega_{n}^2}$$
where 
$b = \omega_{n}^2$
$a= 2 \zeta \omega_{n}$

The poles of this transfer function are:
$$s_{1,2} = -\zeta \omega_{n} \pm \omega_{n} \sqrt{ \zeta^{2}-1 }$$
$$s_{1,2} = - \zeta \omega_{n} \pm j \omega_{n} \sqrt{ 1-\zeta^2 }$$
![](Attachments/Pasted%20image%2020240421204207.png)



### Underdamped Second Order Systems
Represents a common model for physical problems

Step response: $C(s) = \frac{\omega_{n}^{2}}{s(s^{2}+2 \zeta \omega_{n} s + \omega_{n}^{2})} = \frac{K_{1}}{s} + \frac{K_{2}s+K_{3}}{s^{2}+2 \zeta \omega_{n}s + \omega_{n}^{2}}$
Expanding by partial fraction we obtain $(0 < \zeta < 1)$:
$$C(s) = \frac{1}{s} - \frac{(s+\zeta \omega_{n})+ \frac{\zeta}{\sqrt{ 1- \zeta^2 }}\omega_{n}\sqrt{ 1-\zeta^2 }}{(s + \zeta \omega_{n})^{2}+\omega_{n}^{2}(1-\zeta^{2})}$$

Then in time domain:
$$c(t) - 1 - e^{- \zeta \omega_{n} t} \left(  \cos  \omega_{n}\sqrt{ 1- \zeta^{2} }t + \frac{\zeta}{\sqrt{  1-\zeta^{2} }}\sin \omega_{n} \sqrt{ 1- \zeta ^{2} }t \right)$$
$$= 1 - \frac{1}{\sqrt{ 1-\zeta^{2} }}e^{- \zeta \omega_{n}t} \cos (\omega_{n} \sqrt{  1- \zeta^{2} }t - \phi )$$

Where: $\phi = \tan^{-1}\left( \frac{\zeta}{\sqrt{  1- \zeta^2 }} \right)$

![](Attachments/Pasted%20image%2020240421211140.png)

**Specifications:**
