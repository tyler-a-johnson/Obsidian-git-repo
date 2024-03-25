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
$\approx -T[(y_{r} - y_{r-1}) / a + (y_{r}-y_{r+1}) / a]$

$$\ddot{y}_{r} + (T / ma)(2y_{r}-y_{r+1}-y_{r-1})=0$$
r = 1, 2, ... , n

```ad-note
First and lass masses r = 1 and r = n are special

```

### N masses
$$\ddot{y}_{r} + (T / ma) (2y_{r} - y_{r+1} - y_{r-1})=0$$
r = 1, 2, ... , n
![](Attachments/Pasted%20image%2020240325221216.png)
First and last masses depend on the left and right endpoints, $y_{0}$ and $y_{n+1}$

Boundary conditions: $y_{0} = y_{n+1} = 0$

Then look for normal modes:
$$y_{r} = A_{r}e^{i \omega t}, y_{r+1}=A_{r+1}e^{i \omega t}, y_{r-1}=A_{r-1}e^{i \omega t}$$
![](Attachments/Pasted%20image%2020240325221641.png)

$$-A_{r-1}+\left( 2- \frac{\omega^{2}ma}{T} \right) A_{r} - A_{r+1} = 0$$

$$\frac{A_{r+1}+A_{r-1}}{A_{r}} = \frac{2 \omega_{0}^{2}-\omega^2}{\omega_{0}^2}$$
with $\omega_{0}^{2}= T / ma$

```ad-important
Look for modes with $A_{r} = Ce^{i(r \theta + \phi)}$

Note: C is real
```

Take real value to compare with physical coordinates:
$Re[A_{r}]=a_{r}=C \cos(r \theta + \phi)$
![](Attachments/Pasted%20image%2020240325222831.png)

$$\frac{Ce^{i(r+1)\theta + i \phi}+Ce^{i(r-1)\theta+i \phi}}{Ce^{i r \theta + i \phi}}= e^{i \theta}+e^{-i \theta} = 2 \cos \theta$$

```ad-note
$e^{x+y} = e^{x}e^{y}$

$e^{x-y}=e^{x}/e^{y}$

```


$A_{r} = Ce^{i (r \theta+\phi)}$
is a valid solution as long as $2 \cos \theta = \frac{2 \omega_{0}^{2}-\omega^{2}}{\omega_{0}^2}$

### A rough summary
![](Attachments/Pasted%20image%2020240325224222.png)

$$a_{r} = C \sin \left( \frac{j \pi r}{n+1} \right)$$

and

$$w_{j}^{2} = 2 \omega_{0}^{2}\left[ 1- \cos\left( \frac{j \pi}{n+1} \right) \right]$$


### Masses Lie on a Sine Curve
![](Attachments/Pasted%20image%2020240325225551.png)
$n=1$
$j=1$
$\omega_{1} = 2 \omega_{0}$
$a_{1} = C \sin \left( \frac{\pi}{2} \right) = C$

Masses are connected by straight string segments (**any curvature implies infinite acceleration**)
![](Attachments/Pasted%20image%2020240325230017.png)

They really are on a sine curve
![](Attachments/Pasted%20image%2020240325230029.png)
![](Attachments/Pasted%20image%2020240325230055.png)

http://www.falstad.com/loadedstring/
