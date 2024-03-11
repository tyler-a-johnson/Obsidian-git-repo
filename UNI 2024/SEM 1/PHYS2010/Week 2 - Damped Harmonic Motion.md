---
date: 2024-03-04
tags:
  - PHYS/2010
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Lecture Slides:**
[Damped Harmonic Motion](Attachments/PHYS2010%20Week%202.pdf)
# Maths Content
---

## Pendulum
Using $\tau = I \ddot{\theta}$ for a point mass
- $-mgl \sin \theta = ml^{2} \ddot{\theta}$
- $\ddot{\theta} = -\left( \frac{g}{l} \right) \theta$ for small angles
- Simple harmonic motion with $\omega = \sqrt{ \frac{g}{l} }$
![](Attachments/Pasted%20image%2020240311201316.png)
For arbitrary shapes, we need:
- mass $m$
- distance from pivot to centre of mass $l_{CM}$
- moment of inertia about the pivot $I$
- $\omega = \sqrt{ \frac{mgl_{CM}}{I} }$

- $KE + PE = \frac{1}{2} mx^{2}+ \frac{1}{2}kx^2$
- differentiate wrt time
- $\frac{1}{2}m 2 \dot{x} \ddot{x} + \frac{1}{2}k 2 x \dot{x} = 0$
- $m\dot{x}\ddot{x} ++ k x \dot{x} = 0$
- $\ddot{x} = -\left( \frac{k}{m} \right)x$, so $\omega =\sqrt{ \frac{k}{m} }$


## Superposition
- Sometimes a system vibrates in more than one frequency, and/or in more than one dimension
	- Oscillations at the same frequency in the same dimension
	- Oscillations at different frequency in the same dimension (BEATING)
	- Oscillations in different dimensions (LISSAJOUS FIGURES)

### 2D SHM: Lissajous Figures
SHM in two orthogonal directions creates patterns of motion, Lissajous figures, depending on:
- Ratio of frequencies
- Phase offset (for rational ratios)
![400](Attachments/Pasted%20image%2020240311202555.png)
$$x = a \sin (\omega_{x}t)$$
$$y = b \sin (\omega_{y}t + \delta)$$
![600](Attachments/Pasted%20image%2020240311202714.png)
A physical model of a lissajous figure, x and y have respective k values.

### 2D SHM with the same frequency
$$x = a \sin(\omega t+\phi_{1})\text{, } y=a \sin (\omega t + \phi_{2})\text{, }  \delta = \phi_{2}-\phi_{1}$$
![](Attachments/Pasted%20image%2020240311202858.png)

We find static figures when the ratio of frequencies is a rational number
- Rotation depends on phase
- Ratio can be read by counting peaks in each dimension
![](Attachments/Pasted%20image%2020240311203246.png)
m is y, n is x

### Beating
Two simultaneous oscillations along the same axis create beating at the **difference** frequency
$\omega_{2}-\omega_{1}$
$$x = a \sin(\omega_{1}t) + a \sin (\omega_{2}t)$$
$$= 2a \sin \left[ \left( \frac{\omega_{1}+\omega_{2}}{2} \right)t \right]\cos \left[ \left( \frac{\omega_{2}-\omega_{1}}{2} \right) \right]$$
![](Attachments/Pasted%20image%2020240311203912.png)

## Damped SHM (Drag)
Damped by moving through liquid (air included), has a **viscous term** and **pressure term**
- Drag force $\vec{F}_{drag} = -k_{1}\vec{v} - k_{2}v^{2}\hat{v}$
- Dissipated power $\frac{d}{dt}(-\vec{F}_{drag}*\vec{v}) = P_{drag} = k_{1}v^{2}k_{2}v^{3}$

Pressure term dominates at high speed (Skydiver)
Viscous term dominates at low speed (Sinking in oil)


### Drag with mass on a spring

- Restoring force $-kx$ resists displacement
- Drag force $-b \dot{x}$ resists velocity ($\dot{x}$ is dx/dt)

$m \ddot{x} = -kx -b\dot{x}$

$\ddot{x} + \frac{b}{m}\dot{x} + \frac{k}{m}x =0$

$$\ddot{x}+ \gamma \dot{x} + \omega_{0}^{2}x = 0$$
Where $\omega_{0}$ is the SHM frequency the system would have if damping were absent
![400](Attachments/Pasted%20image%2020240311204956.png)
Try a trial solution
$$x  = Ce^{\alpha t}$$
$$\dot{x} = C \alpha e^{\alpha t} \text{ and }\ddot{x}=C \alpha^{2}e^{\alpha t}$$

**Sub in to get:**
$$C e^{\alpha t}(\alpha^{2}+\gamma \alpha + \omega_{0}^{2})=0$$

Trivial solution C = 0, or...

$$\alpha^{2}+\gamma \alpha  + \omega_{0}^{2} = 0 \text{ with C an unknown constant}$$
$$\rightarrow a = - \frac{\gamma}{2} \pm ( \gamma^{2}/4 - \omega^{2}_{0} )^{1/2}$$

$$x = Ce^{-\gamma t/2}e^{t (\gamma^{2} / 4-\omega_{0}^{2})^{1/2}}$$
$$\text{or } Ce^{-\gamma t/2}e^{-t(\gamma^2/4-\omega_{0}^2)^{1/2}}$$

**General Solution**
$$x = e^{- \frac{\gamma}{2}t} (Ae^{\Omega t}+Be^{-\Omega t})$$
With A and B determined by initial conditions

***Behaviour depends on:***
$$\Omega= \left( \frac{\gamma^{2}}{4} - \omega_{0 }^{2} \right)^{1/2}$$



**Real: $\gamma > 2 \omega_{0}$ Overdamped**
General solution simplifies
$$x(t) = \frac{v_{0 }}{2 \Omega} (e^{- \frac{\gamma}{2}t}e^{\Omega t} - e^{- \frac{\gamma}{2}t}e^{-\Omega t})$$
![](Attachments/Pasted%20image%2020240311224814.png)


**Zero: $\gamma = 2 \omega_{0}$ Critically Damped**
General solution simplifies
$$x = (A+Bt)e^{\frac{-\gamma}{2}t}$$
![](Attachments/Pasted%20image%2020240311224721.png)


**Imaginary: $\gamma < 2 \omega_{0}$ Underdamped**
Solution becomes
$$x = e^{\frac{-\gamma}{2}t}(Ae^{i \omega_{d} t}+Be^{-i \omega_{d}t})$$
Where $\omega_{d} = \left( \omega^{2}_{0} - \frac{\gamma^{2}}{4} \right)^{1/2}$
The general solution needs to be real everywhere, constraining B = A*
$$x = e ^{- \frac{\gamma}{2}t} Re[2A e ^{i \omega_{d}t}]$$

Can be complex, representing amplitude and phase
Write $2A = Ce^{i \phi}$
$$x = e^{- \frac{\gamma}{2}t}Re[Ce^{i(w_{d}t + \phi)}]$$
$$x = Ce^{\frac{-\gamma}{2}t} \cos(\omega_{d}t + \phi)$$
C and $\phi$ determined by initial conditions
![](Attachments/Pasted%20image%2020240311224830.png)


## Logarithmic Decrement
Consider motion
$x(t) = x_{0}e^{- \frac{\gamma}{2}t}\cos(\omega_{d}t)$

Look at successive values where cosine is max
$t_{n} = n 2 \pi /\omega_{a}=nT_{d}$
$x(t_{n}) = x_{0} e ^{-(\gamma t_{n}/2)}=x_{0}e^{-(\gamma  n T_{d}/2)}$

Ratio between peaks $n$ and $n+1 = e^{\delta} = e^{(\gamma T_{d}/2)}$ 
![](Attachments/Pasted%20image%2020240311225614.png)
$\delta$ is the logarithmic decrement

## Relaxation Time
Another way to characterise is the time taken $\tau$ for the amplitude to decay by a factor $e^{-1} \approx 0.37$
![](Attachments/Pasted%20image%2020240311225953.png)
From $x(t) = x_{0}e^{- \frac{\gamma}{2}t}\cos(\omega_{d}t)$ we see $\tau = \frac{2}{\gamma}$


## Energy in an underdamped oscillator
Consider $x(t) = x_{0} e^{- \frac{\gamma}{2}t}\sin(\omega_{d}t)$

$$PE = \frac{1}{2}kx^{2}= \frac{1}{2}kx_{0}^{2} e^{-\gamma t}\sin^2(\omega_{d}t)$$
$$KE = \frac{1}{2}m \dot{x}^{2} = \frac{1}{2}m x_{0}^{2}e^{-\gamma t}\left( \omega_{d} \cos \omega_{d} t - \frac{1}{2} \gamma \sin \omega_{d} t  \right)^{2}$$

![](Attachments/Pasted%20image%2020240311231057.png)

$$\approx \frac{1}{2} m \omega^{2}_{d}x^{2}_{0}e^{-\gamma t} \cos^{2} \omega_{d} t \text{ for weak damping}$$
$$\approx kx_{0}^{2}e ^{-\gamma t} \cos^{2}\omega_{d} t$$

**Total mechanical energy:**
$KE + PE = \frac{1}{2} k x_{0}^{2}e^{- \gamma t}$
```ad-note
Decay constant is $\gamma$ not $\frac{\gamma}{2}$

```

**Rate of energy loss is $\frac{dE(t)}{dt}=- \gamma E(t)$**
Normalised loss rate $\frac{{dE(t)}/{dt}}{E(t)}=-\gamma$ is constant


## Q Factor
A way to quantify loss in periodic systems. (High or low Q)
```ad-important
Q = Number of radians for energy to decay to $E_{0}e^{-1}$
- If $E(t) = E_{0}e^{- \gamma t}$ then $E(\tau) = E_{0}e^{-1}$ for $\tau = 1/\gamma$
- If system oscillates wit

```



# Conceptual Info
---



# Additional Content
---
