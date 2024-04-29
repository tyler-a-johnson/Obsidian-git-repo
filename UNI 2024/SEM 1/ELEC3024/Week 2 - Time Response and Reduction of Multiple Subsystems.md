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
![600](Attachments/Pasted%20image%2020240421183413.png)

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
1. *Rise time* $T_{r}$ The time required for the waveform to go from 0.1 of the final value of 0.8 of the final value
2. *Peak time* $T_{p}$ the time required to reach the first or maximum peak.
3. *Percent overshoot* %OS the amount that the waveform overshoots the steady state, or final value at the peak time, expressed as a percentage of the steady state value.
4. *Settling time* $T_{s}$ The time required for the transient's damped oscillations to reach and stay within $\pm{2}$% of the steady state value.
![](Attachments/Pasted%20image%2020240421212418.png)

**Evaluate $T_{p}$**
$T_{p}$ is found by differentiating c(t) and finding the first zero crossing after t=0.
$$T_{p} \frac{\pi}{\omega_{n} \sqrt{  1- \zeta^{2}}}= \frac{\pi}{\omega_{d}}$$
![500](Attachments/Pasted%20image%2020240421213518.png)

**Evaluate %OS**
$$\% OS = e ^{-(\zeta \pi / \sqrt{ 1-\zeta^2 })}*100$$
$$\zeta= \frac{- \ln (\% OS / 100)}{\sqrt{ \pi^{2}+ \ln ^{2} (\%OS / 100) }}$$
![500](Attachments/Pasted%20image%2020240421213529.png)

**Evaluation of $T_{s}$**
$$e^{-\zeta \omega_{n} t} \frac{1}{\sqrt{ 1- \zeta^{2} }}=0.02$$
$$T_{s} = \frac{-\ln (0.02 \sqrt{  1-\zeta^2 })}{\zeta{\omega_{n}}}$$
$$T_{s} \approx \frac{4}{\zeta \omega_{n}}$$

**Evaluation of $T_{r}$**
-Cannot be found analytically?

#### Example
Find Tp %OS, Ts, and Tr for the transfer function

$$G(s) = \frac{100}{s^{2}+ 15s + 100}$$

$T_{p} = \frac{\pi}{\omega_{n} \sqrt{ 1- \zeta^{2} }}=0.475$

$\% OS = e^{-(\zeta \pi / \sqrt{ 1-\zeta^{2} })}*100=2.838$

$T_{s} \approx \frac{4}{\zeta \omega_{n}} = 0.533$

$T_{r} \approx \frac{2.3}{ \omega_{n}} = 0.23$

Where 2.3 is a normalised rise time corresponding to $\zeta$



*Now evaluate peak time, settling time, and overshoot in terms of the pole location*
$$G(s) = \frac{\omega_{n}^2}{s^{2}+2 \zeta \omega_{n} s + \omega_{n}^2}$$
$$s_{1,2} = -\zeta \omega_{n} \pm \omega_{n} \sqrt{ \zeta^{2}- 1 }$$
$$s_{1,2} = -\zeta \omega_{n} \pm \omega_{n} \sqrt{ 1-\zeta^{2} }$$
From Pythagoras theorem: $\cos \theta = \zeta$
$$T_{s} = \frac{4}{\zeta \omega_{n}}= \frac{4}{\sigma_{d}}$$
$\omega_{d}$ damped frequency oscillation
$\sigma_{d}$ exponential damping frequency
![600](Attachments/Pasted%20image%2020240421215552.png)





![](Attachments/Pasted%20image%2020240421220534.png)
$$T_{s} = \frac{4}{\zeta \omega_{n}} = \frac{4}{ \sigma_{d}}$$
$$T_{p} = \frac{\pi}{\omega_{d}} = \frac{\pi}{\omega_{n} \sqrt{  1-\zeta^2 } }$$

$\cos \theta = \zeta$
$\% OS = e ^{-(\zeta \pi \sqrt{  1 - \zeta ^{2} })}*100$


![](Attachments/Pasted%20image%2020240421221710.png)



#### Example
Given the plot, find $\zeta, \omega_{n}, T_{p}, \%OS \text{ and } T_{s}$
![400](Attachments/Pasted%20image%2020240421221919.png)
**Solution**
$\zeta= \cos \theta = \cos\left[ \arctan\left( \frac{7}{3} \right) \right] = 0.394$
$\omega_{n} = \sqrt{ 7^{2}+3^{2 }}= 7.62$
$T_{p} = \frac{\pi}{\omega_{d}} = \frac{\pi}{7} = 0.449$ seconds
$\%OS = e^{-(\zeta \pi / \sqrt{ 1-\zeta^{2 }})}*100= 26\%$

$$T_{s} = \frac{4}{\sigma_{d} = \frac{4}{3}} = 1.333 \text{ seconds}$$

#### Example
Find J and D to yield a 20% overshoot and $T_{s} = 2s$ for step input torque $T(t)$
![](Attachments/Pasted%20image%2020240421223710.png)
$$G(s) = \frac{1 / J}{s^{2}+\frac{D}{J}s+\frac{K}{J}}$$

$\omega_{n} = \sqrt{ \frac{K}{J} }$
$2 \zeta \omega_{n} = \frac{D}{J}$


$\% OS = 20 \rightarrow \zeta = 0.456$
$$T_{s} = 2 \approx \frac{4}{\zeta \omega_{n}} \rightarrow \sqrt{  \frac{K}{J} } = \frac{2}{\zeta} \rightarrow \frac{J}{K} = 0.052 \rightarrow J = 0.26$$
$$D = 2 J \zeta \omega_{n} = 2 \zeta\sqrt{KJ} = 1.04$$

### System Response with Additional Poles
- **If a system has more than two poles or has zeros we cannot use the previously derived formulae** to calculate the performance specs.
- However **under certain conditions** a system with more than two poles or with zeros can be **approximated** as a second order system that has just **two complex dominant poles**.
![](Attachments/Pasted%20image%2020240422001550.png)
$$c(t) = Au(t) + e^{- \zeta \omega_{n} t} (B \cos \omega_{d} t  + C \sin \omega_{d} t) + De^{- \alpha_{r}t}$$
![](Attachments/Pasted%20image%2020240422215754.png)
*We can assume exponential decay is negligible after five time constants.*

#### Example
Find the step response of the transfer functions below and compare them:
$$T_{1}(s) = \frac{24.542}{s^{2}+4s + 24.542}$$
$$T_{2}(s) = \frac{245.42}{(s+10)(s^{2}+ 4s + 24.542)}$$
$$T_{3}(s) = \frac{73.626}{(s+3)(s^{2}+4s + 24.542)}$$

**Solution** Taking the laplace inverse transform $C_{i}(s) = T_{i}(s)R(s) for R(s) = s^{-1}$ and $i = 1,2,3$ gives

$$c_{1}(t) = 1-1.09e^{-2t} \cos(4.532t - 23.8 \degree)$$
$$c_{2}(t) = 1-0.29 e^{10t}-1.189 e^{-2t} \cos (4.532t-53.34\degree)$$
$$c_{3}(t) = 1-1.14 e^{-3t}-0.707 e^{-2t} \cos (4.532t-78.63\degree)$$
![](Attachments/Pasted%20image%2020240422221125.png)

## System Response with Zeros
$$T(s) = \frac{(s+a)}{(s+b)(s+c)} = \frac{A}{(s+b)}+\frac{B}{(s+c)}$$
$$ = \frac{(-b+a) / (-b+c)}{s+b} + \frac{(-c+a) / (-c+b)}{s+c}$$
$$\text{If } a\gg b,c: T(s) \approx a \left[ \frac{1 / (-b+c)}{s+b} + \frac{1 / (-c +b)}{s+c} \right] = \frac{a}{(s+b)(s+c)}$$

Zero looks like a simple gain factor and does not change the relative amplitudes of the components of the response.
![500](Attachments/Pasted%20image%2020240422223355.png)
- Let C(s) be the response of a system, T(s) with unity in the numerator
- If we add a zero to the transfer function, yielding $(s+a)T(s)$ the laplace transform of the response will be:

$$(s+a)C(s) = sC(s) + aC(s)$$
**If a is very large and positive** then the response is approximately a scaled version of the original response.

**If a is small and positive** then the derivative term has a greater effect on the response ***more overshoot***

**If a is negative (right half plane)** then the derivative term will be of a opposite sign from the scaled response term
![](Attachments/Pasted%20image%2020240422230804.png)
If the response begins to turn towards the negative direction even though the final value is positive then the system is known as **nonminimum-phase system - (zero is in the right half plane)**

### Pole Zero Cancellation
Consider:
$$T(s) = \frac{K(s+z)}{(s+p_{3})(s^{2}+as+b)}$$
if the zero at $-z$ is very close to the pole at $-p_{3}$ then it can be shown using partial fraction expansion of T(s) that the residue of the pole at **p3 is much smaller than any other residues**

#### Example
For the response functions below determine whether there is an approximate pole-zero cancellation and if so, find an approximate second order response.
$$C_{1}(s) = \frac{26.25 (s+4)}{s(s+{3.5})(s+5)(s+6)}$$
$$C_{2}(s) = \frac{26.25 (s+4)}{s(s+4.01)(s+5)(s+6)}$$

**Solution**
$C_{1}(s)$ has no approximate cancellation

$$C_{2}(s) = \frac{26.25(s+4)}{s (s+4.01)(s+5)(s+6)}$$
$$C_{2}(s) = \frac{0.87}{s}- \frac{5.3}{s+5} + \frac{4.4}{s+6} + \frac{0.033}{s+4.01} $$
Approximate cancellation, coefficient of the last term is at least an order of magnitude smaller than the others

$$C_{2}(s) \approx \frac{0.87}{s}-\frac{5.3}{s+5}+\frac{4.4}{s+6}$$
$$c(t) \approx 0.87 - 5.3 e^{-5t}+4.4e^{-6t}$$
An approximate overdamped second order response