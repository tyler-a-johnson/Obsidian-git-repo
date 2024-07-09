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
- Proof: Any two particular solutions $z_{1}$ and $z_{2}$

$$\ddot{z}_{2}+ \gamma \dot{z}_{2}+\omega_{0}^{2}z_{2} = f_{0} e ^{i \omega_{f}t}$$
$$\ddot{z}_{1}+\gamma \dot{z}_{1}+\omega_{0}^{2}z_{1}=f_{0}e^{i \omega_{f}t}$$
$$\rightarrow \ddot{z}_{2}- \ddot{z}_{1} + \gamma(\dot{z}_{2}-\dot{z}_{1}) + \omega_{0}^{2} (z_{2} - z_{1}) = 0$$

$$\text{ Therefore } \ddot{z}_{d} + \gamma \dot{z}_{d}  + \omega_{0}^{2}z_{d} = 0$$
Where:
$z_{d}=z_{2}-z_{1}$

### Complementary Functions are Damped
$$ \ddot{x}+ \gamma \dot{x} + \omega_{0}^{2}=0$$

**Underdamped:** $\gamma < 2 \omega_{0}$
$x = e ^{\frac{-\gamma}{2}t} (Ae^{i \omega_{d}t}+Be^{-i \omega_{d}t})$
$\omega_{d} = (\omega_{0}^{2}-\frac{\gamma^{2}}{4})^{1/2}$    Real

**Overdamped:**
$x = e^{\frac{-\gamma}{2}t}(Ae^{\Omega t}+Be^{- \Omega t})$ 
$\Omega = \left( \frac{\gamma^{2}}{4}- \omega_{0}^2 \right)^{1/2}$
*$\Omega < \frac{\gamma}{2}$ so both terms decay with time*

**Critical Damping: $\gamma = 2 \omega_{0}$**
$$x = (A+Bt)e^{-\frac{\gamma}{2}}$$

Damping $\rightarrow$ Complementary function dies away over time: *transient*
Long-term behaviour is determined by response to the driving force, not by the initial conditions.



### Particular Solution
$$\ddot{z}+ \gamma \dot{z} + \omega_{0}^{2}z = f_{0}e^{i \omega_{f}t}$$

Let's try $z_{p} = Ae^{\alpha t}$
$$(\alpha^{2}+\gamma \alpha + \omega_{0}^{2})Ae^{\alpha t} = f_{0}e^{i \omega_{f}t}$$

$\rightarrow \alpha= i \omega_{f}$ system oscillates at the driving frequency

and $A = \frac{f_{0}}{(\omega_{0}^{2}- \omega_{f}^{2})+ i \omega_{f}\gamma}$  **Note: Contains amplitude and phase**

Therefore:
$$z_{p} = \frac{f_{0}}{(\omega_{0}^{2}-\omega_{f}^{2})+i \omega_{f}\gamma}$$


```ad-note
title: Complex Numbers
![](Attachments/Pasted%20image%2020240707224233.png)

```


## Useful Maths
### Modulus, argument, complex exponential
![](Attachments/Pasted%20image%2020240707230516.png)
$$|z| = \sqrt{ x^{2}+\gamma^{2} }=r$$
$$\phi = \tan^{-1}\left( \frac{\gamma}{x} \right)$$
$$e^{i \phi} = \cos \phi + i \sin \phi$$


$$|e^{i \phi}| = 1$$
$$z = r e^{i \phi}$$
$$z_{1}z_{2} = |z_{1}| |z_{2}| e^{i (\phi_{1}+\phi_{2})}$$
$$e^{z}=e^{x+i \gamma}= e^{x}e^{i \gamma}=e^{x} (\cos \gamma + i \sin \gamma)$$


### Complex Conjugate
![](Attachments/Pasted%20image%2020240707231047.png)

$$z^{*} = x - i \gamma = r e^{-i \phi}$$


$$Re[z] = \frac{1}{2} (z+z^{*})$$
$$Im[z] = \frac{1}{2i}(z-z^{*})$$


$$(z_{1}+z_{2})^{*} = z^{*}_{1} +z^{*}_{2 }$$
$$(z_{1}z_{2})^{*} = z^{*}_{1} z^{*}_{2 }$$


$$\frac{1}{z} = \frac{1}{x+i\gamma}= \frac{1}{x+i\gamma} \frac{x-i \gamma}{x-i \gamma} =\frac{x-i\gamma}{x^{2}+\gamma^{2}}= \frac{z^{*}}{|z|^{2}}=\frac{1}{r} e^{-i \theta}$$

**Take the real part:**

$$z_{P} = Ae^{i \omega_{f}t}$$
$$A = \frac{f_{0}}{(\omega_{0}^{2}-\omega_{f}^{2})+i \omega_{f}\gamma}$$

As usual, its best to first express A in terms of its modulus $A_{P} = |A|$ and Phase $\phi_{P}$ example: $A = A_{P} e^{i \phi_{P}}$

$$x_{P} = Re[z_{P}]= Re[A_{P}e^{i \phi_{P}}e^{i \omega_{f}t}] = A_{P} Re[e^{i(\omega_{f}t+\phi_{P})}]=A_{P} Re[e^{i(\omega_{f}t+\phi_{P})}]$$
$$\text{Therefore:} A_{P} \cos(\omega_{f}t + \phi_{P})$$

Now we find $A_{P}$ and $\phi_{P}$

$$ A = \frac{f_{0}}{\omega_{0}^{2}-\omega_{f}^{2}+i \omega_{f}\gamma}$$
$$= \frac{f_{0 }}{\omega_{0}^{2}-\omega_{f}^{2}+ i \omega_{f}\gamma} \frac{\omega_{0}^{2}-\omega_{f}^{2}- i \omega_{f}\gamma}{\omega_{0}^{2}-\omega_{f}^{2}- i \omega_{f}\gamma}$$
$$= f_{0} \frac{\omega_{0}^{2}-\omega_{f}^{2}- i \omega_{f}\gamma}{(\omega_{0}^{2}-\omega_{f}^{2})^{2}+  \omega_{f}^2\gamma^2}$$



$$A_{P} = \frac{f_{0}}{\sqrt{ \omega_{0}^2-\omega_{f}^{2 }+\omega_{f}^{2}\gamma^{2}}}$$
$$\phi _{P} = \tan^{-1}\left( \frac{- \omega_{f}\gamma}{\omega_{0}^{2}- \omega_{f}^2} \right)$$



### Complete Solution (For Underdamped)
$$x(t) = x_{P}(t) + x_{C}(t)$$
$$x = A_{P} \cos (\omega_{f}t + \phi_{P}) + A_{C}e^{-\gamma t/2}\cos(\omega_{d}t+\phi_{C})$$

$A_{P}\cos$ is determined by driving force, $A_{C}$ section is determined by $x_{0}, v_{0}$
![](Attachments/Pasted%20image%2020240708220859.png)

*Transient* phase while the complementary solution is significant. Sensitive to initial conditions

*Steady State* for $t\gg \frac{\gamma}{2}$ independent of initial conditions.

#### Transient Behaviour
Steady state amplitude and phase is entirely defined as the driving force.
- If the system is not consistent with the driven motion, there will be a transient state between this motion and driven
- *Described by the decaying complementary function*
$$x = A_{P} \cos (\omega_{f}t + \phi_{P}) + A_{C}e^{-\gamma t/2}\cos(\omega_{d}t+\phi_{C})$$
- Transient behaviour can be complicated, and is significant only for a time of order $\gamma /2$

### Steady State Behaviour - Undamped
$$x_{P} = A_{P} \cos(\omega_{f}t + \phi_{P})$$
$$A_{P} = \frac{f_{0}}{\sqrt{( \omega_{0}^{2 }-\omega_{f}^{2})^{2}+\omega^{2}_{f}\gamma^{2}}}$$
$$\phi_{P} = \tan^{-1} \frac{- \omega_{f}\gamma}{\omega_{0}^{2}-\omega_{f}^{2}}$$
$$\gamma = 0 \rightarrow A_{P} = \frac{f_{0}}{| \omega_{0}^{2}-\omega_{f}^{2} |}$$

$\omega_{0}$ natural frequency of oscillator
$\omega_{f}$ driving frequency

![](Attachments/Pasted%20image%2020240708234157.png)

![](Attachments/Pasted%20image%2020240708234211.png)
[File:Mplwp resonance zeta envelope.svg - Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Mplwp_resonance_zeta_envelope.svg)

#### Finding $\omega_{res}$ and $A_{P}^{res}$

$$A_{P} = \frac{f_{0}}{\sqrt{ (\omega_{0}^{2} - \omega_{f}^{2} )^{2}+ \omega_{f}^{2}\gamma^{2}}} =\frac{f_{0}}{\sqrt{ \Delta }}$$

At a maximum when $\frac{d A_{P}}{d \omega_{f}}=\frac{f_{0}}{2 \Delta^ {\frac{3}{2}}} * \frac{dD}{d \omega_{f}} = 0$
$$0 = \frac{dD}{d \omega_{f}} = 2(\omega_{0}^{2} - \omega_{f}^{2})(-2 \omega_{f})+ 2 \omega_{f}\gamma^{2} = 2 \omega_{f}[\gamma^{2} - 2(\omega_{0}^{2}- \omega_{f}^{2})]$$

$$\omega_{res} = \sqrt{ \omega_{0}^{2}- \frac{\gamma^{2}}{2}}$$
$$\omega_{d} = \sqrt{ \omega_{0}^{2} - \frac{\gamma^{2}}{4} }$$
$$\omega_{res} < \omega_{d} < \omega_{0}$$

Evaluate $A_{P}$ for $\omega_{f} = \omega_{res}$:
$$(\omega_{0}^{2}-\omega_{res}^{2})^{2}+ \gamma^{2}\omega_{res}^{2} = \frac{\gamma^{4}}{4}$$
# Conceptual Info
---

## Forced Motion
- Simple harmonic motion that is being driven by a driving force at a particular frequency.
	- Sum responses to describe arbitrary driving forces
	- Find: resonances

# Additional Content
---
