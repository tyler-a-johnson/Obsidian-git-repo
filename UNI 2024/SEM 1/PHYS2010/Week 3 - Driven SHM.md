---
date: 2024-03-14
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Lecture Slides:**
[Driven SHM](Attachments/PHYS2010%20Week%203.pdf)
# Maths Content
---
## Add a driving term
![](Attachments/Pasted%20image%2020240707205154.png)
Where:
$\gamma = \frac{b}{m}$
$\omega_{0}^{2} = \frac{k}{m}$
$f_{0} = a_{0} = \frac{F_{0}}{m}$

$$m \ddot{x} + b \ddot{x} + kx = F_{0} \cos(\omega_{f} t)$$
$$\ddot{x}+\gamma \dot{x}  +\omega _{0}^{2} x = a_{0} \cos \omega_{f}t$$
$$\ddot{z}+ \gamma \dot{z} + \omega_{0}^{2  z}= f_{0} e ^{i \omega_{f}t}$$
Where $z = x +iy$ and we take $Re[z]$ to get $x$

How does the response of the system depend on $\omega_{f}$

### How to Solve the ODE

$$\ddot{z} + y\dot{z} + \omega_{0}^{2}z = f_{0} e ^{i \omega_{f}t}$$

Inhomogeneous second-order linear differential equation

**To solve**
- Find any solution to $\ddot{z} + \gamma \dot{z} + \omega_{0}^{2}z=f_{0}e^{i \omega_{f}t}$
	- $z = z_{p} (t)$ (Particular solution)
- Find the general solution to the complementary homogenous equation: $\ddot{z} + y\dot{z} + \omega_{0}^{2}z = f_{0} e ^{i \omega_{f}t}$
	- $z = z_{C}(t)$
	- This is over/critical/underdamped motion depending on $\gamma , \omega_{0}$ and initial conditions.
- General solution is $z = z_{P}(t) + z_{C} (t)$

*ANY particular solution will do*
The difference of any 2 particular solutions is a complementary solution (choice of $z_{P}$ is ironed out by change in the complementary function)
- Proof: Any two particular solutions $z_{1}$
# Conceptual Info
---



# Additional Content
---
