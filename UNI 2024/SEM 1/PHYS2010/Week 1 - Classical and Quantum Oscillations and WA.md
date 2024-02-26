---
date: 2024-02-20
tags:
  - "#PHYS/2010"
status: Incomplete
Relevant Docs: []
Relevant Questions: 
Relevant Notes: 
Practical Docs: 
Relevant Links:
---
[Week 1 - Intro](Attachments/PHYS2010%20Week%201%20Intro%20and%20SHM.pdf)
# Maths Content
---

## Waves, Diffraction and Interference

**Wave equation**
$$\frac{\partial^{2}u}{\partial t^{2}} = c^{2} \nabla u$$


**Schrodinger's Equation**
$$i \hbar \frac{\partial}{\partial t} \Psi (r,t) = \left[  -\frac{\hbar^{2}{2 \mu}}+V(r,t_{}) \right] \Psi (r,t)$$

## Mass on a spring, basic oscillation
![](Attachments/Pasted%20image%2020240220102516.png)
**Hooke's Law**
$$F = -kd$$
- d is extension **from relaxed length**
- Linear restoring force characterized by **stiffness k**

Consider a system at any non-equilibrium position $x$
Since $F=ma$
- $-kx = ma = m\ddot{x}$
- $\ddot{x} = -\left( \frac{k}{m} \right)x$
$$\ddot{x} = -\omega^{2}x$$
Where:
$\omega=\sqrt{ \frac{k}{m} }$

*One possible solution*
- $x = A\sin \omega t$
- $\frac{dx}{dt}=\dot{x}= A \omega \cos \omega t$
- $\frac{d^{2}x}{dt^{2}}=\ddot{x}=-A \omega \sin \omega t = - \omega^2 x$

Position (x) of mass will oscillate with time
- Angular freq $\omega$
- Period $T = \frac{2\pi}{\omega}$
- Frequency $f = \frac{1}{T} = \frac{\omega}{2\pi}$
- Amplitude $A$

## Spring moving against gravity
$mg = kd$ at equilibrium
![](Attachments/Pasted%20image%2020240220102750.png)
When displaced:
$ma = F$
$m \ddot{x} = mg - k (d+x)$
$= (mg-kd)-kx$
$=-kx$

$\ddot{x} = -\omega^{2}x$ as before, oscillates about equilibrium position

## General solution for Simple Harmonic Motion (SHM)

$x = B \sin \omega t$ is a solution
so is $x = A \cos \omega t$

General Solution
$$x = A \cos \omega t + B \sin \omega t$$

Constants A and B are determined by initial conditions
The sum is sinusoidal
![](Attachments/Pasted%20image%2020240220103611.png)

### Amplitude and phase
$$A = a \sin \phi$$
$$B = a \cos \phi$$

$a^{2}=A^{2}+B^{2}$

$\phi = \sin^{-1}\left( \frac{A}{a} \right)$ or $\cos^{-1}\left( \frac{B}{a} \right)$

$x = a \sin \phi \cos \omega t + a \cos \phi \sin \omega t$

$$x = a \sin (\omega t  + \phi)$$

Summing cos and sin creates a sinusoid with shifted phase


## Complex Exponentials
![](Attachments/Pasted%20image%2020240221123502.png)
Recall:
$$e^{i \omega t} = \cos \omega t + i \sin \omega t$$

We can also say:
$Re[Ae^{i \omega t}] = A \cos \omega t$
$Re[Ae^{i(\omega t + \phi)}] = A \cos (\omega t+\phi)$
$Re[Ae^{i \phi}e^{i \omega t}] = A \cos (\omega t + \phi)$
$Re [Ze^{i \omega t}]= A \cos (\omega t + \phi)$

$Ze^{i \omega t}$ is a solution to:
$\ddot{x} + \omega^{2}x=0$

We can use $x = Ze^{i \omega t}$ as our trial solution, and take the real part when we want a physical value.

![](Attachments/Pasted%20image%2020240221123834.png)
Alternatively we can construct a real-valued combination:
$Ae^{i \omega t}+ Ae^{-i \omega t} = 2A \cos \omega t$
$Ae^{i \omega t} + c.c. = 2A \cos \omega t$

This is also a solution to $\ddot{x} + \omega^{2}x = 0$
Useful for multiplying solutions in nonlinear problems

## Position, Velocity and Acceleration

**Displacement**
$x(t) = A \sin (\omega t+\phi)$

**Velocity**
$\dot{x}(t) = A \omega \cos (\omega t + \phi)$
$=A \omega \sin (\omega t + \phi + \pi)$


**Acceleration**
$\ddot{x}=-A \omega^{2}\sin(\omega t+{\phi})$
$= A \omega^{2} \sin (\omega t + \phi + \pi)$

![](Attachments/Pasted%20image%2020240221125020.png)

**Velocity leads position y $\frac{\pi}{2}$ or 90 degrees**
*Max positive velocity occurs a quarter of a cycle before maximum possible displacement*

**Acceleration out of phase by $\pi$ or 180 degrees**
*Maximum positive acceleration half a cycle before maximum positive displacement, or at the same time as maximum negative displacement*


## Displacement, Velocity and Time: Phasors

$$x(t) = A \sin (\omega t + \phi)$$

$$\dot{x}(t) = A \omega \cos (\omega t + \phi)$$
$$= A \omega \sin \left(  \omega t + \phi + \frac{\pi}{2} \right)$$

$$\ddot{x}(t)= - A \omega^{2}\sin(\omega t + \phi) $$
$$= A \omega^{2}\sin (\omega t + \phi + \pi)$$

## Kinetic and Potential Energy
Consider simple harmonic motion with:
$x(t) = A \sin(\omega t + \phi)$
$\dot{x}(t) = \omega A \cos(\omega t + \phi)$

Kinetic energy depends on velocity:
$KE = \frac{1}{2}mx^{2}A^{2}\cos^{2}(\omega t + \phi)$
$= \frac{1}{2}kA^{2}\cos^{2}(\omega t + \phi)$
$= \frac{1}{2}k (A^{2}- x^2)$

PE is work done against a conservative force.

$PE = - \int  F \, dl = \int^{x}_{0} kx  \, dx$

	$= \frac{1}{2}k x^{2}= \frac{1}{2}A^{2}\sin^{2}(\omega t + \phi)$


Total energy is constant
$$PE + KE = \frac{1}{2}kA^2$$


$$KE = \frac{1}{2}kA^{2}\cos^{2}(\omega t + \phi)=\frac{1}{2}kA^{2}(A^{2}-x^2)$$
$$PE = \frac{1}{2}kA^{2}\sin^{2}(\omega t + \phi) = \frac{1}{2}kx^2$$
![](Attachments/Pasted%20image%2020240227095817.png)

## Ubiquity of SHM
SHM associated with a linear 


# Conceptual Info
---



# Additional Content
---
## Example Questions
![](Attachments/Pasted%20image%2020240221125142.png)