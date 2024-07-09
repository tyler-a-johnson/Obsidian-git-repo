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