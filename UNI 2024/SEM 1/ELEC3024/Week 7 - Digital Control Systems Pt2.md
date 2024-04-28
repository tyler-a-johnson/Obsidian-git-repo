---
date: 2024-04-28
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Lecture Slides:**
[Digital Control Systems pt2](Attachments/Workshop%20Week%207%20–%20Digital%20Control%20Systems%20-%20Part%202_v1_annotated.pdf)

# Stability
- The difference between analogue feedback control systems and digital feedback control systems is the **effect that the sampling rate has on the transient response.**
- **Changes in sampling rate** not only change the nature of the response from overdamped to underdamped, but also can turn a stable system into an unstable one.
- Stability of digital systems from two perspectives:
	- z-plane
	- s-plane
- **Routh-Hurwitz criterion** can be used only if we perform our analysis and the design on the s-plane


Each region of the s-plane can be mapped into a corresponding region on the z-plane
- If $\alpha$ positive $\rightarrow e^{\alpha T}>1 \rightarrow$ points outside unit circle (C)
- If $\alpha$ zero $\rightarrow e^{\alpha T}=1 \rightarrow$ points on unit circle (B)
- if $\alpha$ is negative $\rightarrow e^{\alpha T}<1 \rightarrow$ points inside unit circle (A)
$$z = e^{Ts} = e^{T(\alpha+j \omega)}= e^{\alpha T}e^{j \omega T}$$
$$=e^{\alpha T} (\cos \omega T + j \sin \omega T)$$
$$=e^{\alpha T}\angle \omega T$$
![800](Attachments/Pasted%20image%2020240428164805.png)
![800](Attachments/Pasted%20image%2020240428164953.png)

## Digital System via the z-Plane
- Digital control system is 
	- **Stable if all poles of the closed-loop transfer function, T(z) are inside the unit circle on the z-plane**
	- *Unstable if any pole is outside the unit circle* and/or there are poles of multiplicity greater than one on the unit circle.
	- **Marginally stable** if poles of **multiplicity 1 are on the unit circle** and *all other poles are inside the unit circle*.

## Review
- $j \omega$-axis in the s-plane is mapped to the unit circle in the z-plane
- The left-hand s-plane is mapped to the inside of the unit circle
- The right-hand s-plane maps to the outside of the unit circle
![800](Attachments/Pasted%20image%2020240428165915.png)
![800](Attachments/Pasted%20image%2020240428165944.png)

## Intro
- For continuous systems, we can find the stability of a system by determining if the **roots of the denominator of the CL TF function are in the stable region** of the s-plane.
- The **problem for high-order systems** is that CL TF denominator is in **polynomial form, not factored form**.
- The same problem occurs with closed-loop **sampled-data transfer functions.**
- **Tabular methods for determining stability** such as the Routh-Hurwitz method used for higher-order continuous systems, exist for sampled-data systems.
	- Raible's tabular method
	- Jury's stability test

## Example - Range of T for stability
**Problem:** Determine the range of sampling interval, T, that will make the system shown in fig(13.15) below, and the range that will make it unstable.
**Solution:** Since H(s) = 1, the z-transform of the closed-loop system T(z) is found from fig(13.10) to be:

Eq (1)$$T(z) = \frac{G(z)}{1+G(z)}$$![](Attachments/Pasted%20image%2020240428171243.png)
To find G(z) first find the particial-fraction expansion of G(s)
Eq (2)$$G(s) = 10 \frac{1-e^{-Ts}}{s(s+1)}= 10 (1-e^{-Ts})\left( \frac{1}{s} - \frac{1}{s+1} \right)$$

Taking the z-transform, we obtain
Eq (3)$$G(z) = \frac{10 (z-1)}{z}\left[ \frac{z}{z-1} - \frac{z}{z-e^{-T}} \right] = 10 \frac{1-e^{-T}}{z-e^{-T}}$$
Subbing Eq (3) into Eq (1):
$$T(z) = \frac{10(1-e^{-T})}{z-(11e^{-T}-10)}$$

The pole of the above equation, $(11e^{-T}-10)$ monotonically decreases from +1 to -1 for 0<T<0.2.

For 0.2<T<$\infty$, $(11e^{-T}-10)$ monotonically decreases from -1 to -10. Thus the pole of T(z) will be inside the unit circle, and the system will be stable if 0<T<0.2. In terms of frequency, where f = 1/T, the system will be stable as long as the sampling frequency is 1/0.2, 5Hz or greater.

## Bilinear Transformation
- Bilinear transformations allow us to apply the s-plane analysis and design techniques to digital systems.
- We **prefer a simple transformation** that would yield linear arguments when transforming in both directions (bilinear) through direct substitution and **without complicated z transform**
- Bilinear transformations have been derived to **yield linear variables in s and z**

Of the form: $z = \frac{as+b}{cs+d}$

and its inverse: $s = \frac{-dz + b}{cz}$