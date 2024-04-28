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
$$z = e^{Ts} = e^{T()}$$