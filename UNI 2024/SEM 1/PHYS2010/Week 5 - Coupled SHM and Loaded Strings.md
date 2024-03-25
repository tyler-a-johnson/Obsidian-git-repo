---
date: 2024-03-25
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Lecture Slides:**
[Coupled SHM and Loaded Strings](Attachments/PHYS2010%20Week%205%20Coupled%20SHM%20and%20loaded%20strings.pdf)

## Review: Properties of Normal Modes

- For a **normal mode**:
	- Oscillation is independent of other normal modes coordinates
	- Energy is not transferred to other normal modes
	- All oscillators have a fixed phase relation
	- All oscillators have fixed amplitude ratio
	- All oscillators share the same frequency

- N oscillators $\rightarrow$ N normal modes
- Lowest frequency mode has all oscillators in phase
- Highest frequency mode has adjacent oscillators out of phase

# Loaded String
Light string under tension, loaded with point masses

**One mass**
![](Attachments/Pasted%20image%2020240325213244.png)
- Light string
- Point mass
- Constant tension
- Small deviation
$$F = m \ddot{y} = -2T \sin(\theta) \approx -2T*\tan(\theta) \approx -\frac{2Ty}{a}$$
$\approx$ for $\theta \ll 1$

$$\ddot{y}+\frac{2T}{ma}y = 0$$

SHM with frequency $\omega^{2}= \frac{2T}{(ma)}$

**Two masses**
![](Attachments/Pasted%20image%2020240325213656.png)

*Left Mass*
$m \ddot{y}_{1} = -T\sin(\theta_{1})+T\sin (\alpha) \approx -T(y_{1} / a - (y_{2}-y_{1}) / a)$

$\ddot{y}_{1} + \left(T / ma \right)(2y_{1} - y_{2})=0$

*Right Mass*
$\ddot{y}_{2}+(T / ma)(2y_{2} - y_{1})=0$


*Add:*
$\ddot{y}_{1}+\ddot{y}_{2}+(T / ma)(y_{1} + y_{2}) =0$

*Subtract*
$\ddot{y}_{1}-\ddot{y}_{2} + (3T / ma)(y_{1} - y_{2})=0$


**Two masses have two normal modes**
$Y_{1} = y_{1} + y_{2}$ with $\omega_{1}^{2} = T / ma$ and $A_{1} = A_{2}$

$Y_{2} = y_{1} - y_{2}$ with $\omega_{2}^{2} = 3T / ma$ and $A_{1} = -A_{2}$

![](Attachments/Pasted%20image%2020240325215922.png)


## Generalise to N masses
**Bloody hell**
![](Attachments/Pasted%20image%2020240325220033.png)
look at the rth mass: $\ddot{y}_{r}$ depends only on the positions $y_{r}, y_{r-1}$ and $y_{r+1}$

![](Attachments/Pasted%20image%2020240325220359.png)

$m \ddot{y}_{r} = -T \sin(\theta_{1})-T \sin(\theta_{2})$
