---
date: 2024-03-21
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Lecture Slides:**
[Coupled SHM](Attachments/PHYS2010%20Week%204%20Coupled%20SHM.pdf)

# Maths Content
---

## Pendula coupled by spring
For small angles, pendulum motion is *almost horizontal*...
![](Attachments/Pasted%20image%2020240709203846.png)
![](Attachments/Pasted%20image%2020240709204211.png)
$$x = l\sin \theta \approx l \theta$$
$$h = x\tan \theta \approx l \theta^2$$

With restoring force $-\left( \frac{mg}{l} \right)x$
$$\ddot{x} + \left( \frac{g}{l} \right)x = 0$$


**Define horizontal displacements y and x**
**Extension of spring is x-y**
$$F_{s} = k(x-y)$$


Calculate forces given displacement
Find equation for motion for each pendulum **Coupled Equations**
$$m \ddot{x} = -\left( \frac{mg}{l} \right)x - k(x-y) \text{ Eq. A}$$
$$m \ddot{y} = -\left( \frac{mg}{l} \right)y + k(x-y) \text{ Eq. B}$$
![](Attachments/Pasted%20image%2020240709205713.png)
*Spring extension is (x-y), gives positive force on y mass and negative on x mass*

### Decoupling the equations
$$(A) + (B): m(\ddot{x}+\ddot{y})=-\left( \frac{mg}{l} \right) (x+y)$$
$$\ddot{X} = -\left( \frac{g}{l} \right)X \text{ Where: } X = x+y$$
$$(A)-(B): m(\ddot{x}-\ddot{y})= - \left( \frac{mg}{l} \right)(x-y)-2k(x-y)$$

$$\ddot{Y} = -\left( \frac{g}{l}+\frac{2k}{m} \right)Y$$
$\text{ Where } Y = x-y$

New variables X and Y undergo uncoupled SHM!

### Normal Variables and Normal Coordinates
Writing $X = x+y: \ddot{X} = -\left( \frac{g}{l} \right)X$
Writing $Y = x-y: \ddot{Y}= -\left( \frac{g}{l}+\frac{2k}{m} \right)Y$

These are the normal modes:
- If Y, $\dot{Y}=0$ then $x=y$ we have a pure oscillation of the $X = x+y$ normal mode.
- If in X, $\dot{X}=0$ , then $x = -y$ and we have a pure oscillation of the Y = x-y normal mode.
![](Attachments/Pasted%20image%2020240709213504.png)

$$\ddot{X}=-\left( \frac{g}{l} \right)X$$
$$\ddot{Y} = -\left( \frac{g}{l}+\frac{2k}{m} \right)Y$$

$$\omega_{0}^{X}= \left( \frac{g}{l} \right)^{1/2}$$
$$\omega_{0}^{Y} = \left( \frac{g}{l}+\frac{2k}{m} \right)^{1/2}$$

$$X(t) = A^{X}\cos(\omega_{0}^{X}t + \phi^{X})$$
$$Y(t) = A^{Y}\cos(\omega_{0}^{Y}t+\phi^{Y})$$

$$\dot{X}(t) = -A^{X}\omega_{0}^{X} \sin(\omega_{0}^{X}t+\phi^{X})$$
$$\dot{Y}(t) = -A^{Y}\omega^{Y}_{0} \sin(\omega_{0}^{Y}t+\phi^{Y})$$

Different modes have different frequencies
- Lowest frequency mode has oscillators in phase
- The highest frequency mode has oscillators out of phase

### Independence of normal modes
$$\ddot{X}=-\left( \frac{g}{l} \right)X$$
$$\ddot{Y}=-\left( \frac{g}{l}+\frac{2k}{m} \right)Y$$
- Note that if Y , $\dot{Y}=0$ or X, $\dot{X}=0$ at any instant then this will remain the case forever
- Further, the equation for the X oscillation do not depend on Y or Ydot and vice versa
- **The normal modes are entirely independent, they do not exchange energy**
- Total energy is $(aX^2+b\dot{X}^{2})+(cY^{2}+d \dot{Y} ^{2})$


### General Solution
- A pure X or Y oscillation continues forever (if no damping)
- General solution is a superposition of X and Y normal modes
	- Magnitude of the X and Y contributions doesnt change with time
	- Beating occurs as the normal modes have different frequencies
	- Initial conditions (Four) determine the amplitudes and phases of the X and Y contributions
		- Express initial conditions in the normal coordinates (X and Y here)
		- Find the correct superposition of the normal modes
		- retrieve the corresponding solution for the physical variables.

#### Energy transfer between coupled pendula
Find the behaviour of two coupled pendula if:
$$x(0) = 2a, y(0) = 0$$
$$\dot{x}(0) = 0, \dot{y}(0) = 0$$

Find the initial conditions for the normal modes:
$$X = x+y, \text{ and } Y=x-y$$
$$X(0)=2a \text{, } Y(0)=2a$$
$$\dot{X}(0)=0 \text{, }\dot{Y}(0)=0$$

Find the particular solution for the normal modes:
$$X(t) = A^{X}\cos(\omega_{0}^{X}t+\phi^{X}) \rightarrow X(t) = 2a \cos(\omega_{0}^{X}t)$$
$$Y(t) = A^{Y}\cos(\omega_{0}^{Y}t+\phi^{Y}) \rightarrow Y(t) = 2a \cos(\omega_{0}^{Y}t)$$
![](Attachments/Pasted%20image%2020240709231113.png)

**Translate back to the physical displacements x and y**
$$X(t) = 2a \cos(\omega_{0}^{X}t)$$
$$Y(t) = 2a \cos (\omega_{0}^{Y}t)$$

$$x = \frac{X+Y}{2}$$
$$y = \frac{X-Y}{2}$$

$$x(t) = a \cos(\omega_{0}^{X}t) + a \cos(\omega_{0}^{Y}t) = 2a\cos\left[ \frac{1}{2}(\omega_{0}^{X}+\omega_{0}^{Y})t \right]\cos\left[ \frac{1}{2}(\omega_{0}^{X}-\omega_{0}^{Y})t \right]$$
$$y(t) = a \cos(\omega_{0}^{X}t)-a\cos(\omega_{0}^{Y}t) = -2a\sin\left[ \frac{1}{2} (\omega_{0}^{X}+\omega_{0}^{Y})t \right]\sin\left[ \frac{1}{2}(\omega_{0}^{X}- \omega_{0}^{Y})t \right]$$
![](Attachments/Pasted%20image%2020240709232302.png)

- For a normal mode
	- Oscillation is independent of other normal modes coordinates
	- Energy is not transferred to other normal modes
	- All oscillators have fixed a fixed amplitude ratio
	- All oscillators share the same frequency


# Conceptual Info
---

Multiple oscillators, 'coupled' in some way so they may exchange energy.
We need to identify **normal modes:**
- Simple vibration patterns.
- General solution is a superposition of normal modes.

- Consider two pendula coupled by a spring
	- Define placement for each pendulum
	- Calculate forces given displacement
	- Find equation of motion for each pendulum
- New element: Spring force depends on both displacements
	- Motion of each pendulum depends on the other
	- Equation of motion depends on the position of both
- For small angles, we can neglect the vertical component of the motion (cringe)



# Examples
---
## 2019 Exam
![](Attachments/Pasted%20image%2020240325212708.png)
![](Attachments/Pasted%20image%2020240325212728.png)
![](Attachments/Pasted%20image%2020240325212745.png)
![](Attachments/Pasted%20image%2020240325212826.png)
![](Attachments/Pasted%20image%2020240325212837.png)