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
Real: $\gamma > 2 \omega_{0}$ Overdamped
$$x(t) = \frac{v_{0 }}{2 \Omega} (e^{- \frac{\gamma}{2}t}e^{\Omega t} - e^{- \frac{\gamma}{2}t}e^{-\Omega t})$$
Zero: $\gamma = 2 \omega_{0}$ Critically Damped
Imaginary: $\gamma < 2 \omega_{0}$ Underdamped



# Conceptual Info
---



# Additional Content
---
