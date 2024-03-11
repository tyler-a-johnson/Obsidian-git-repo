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

## Damped SHM
Damped by moving through liquid (air included)
- Drag force $\vec{F}_{drag} = -k_{1}\vec{v} - k_{2}$

# Conceptual Info
---



# Additional Content
---
