---
date: 2024-04-26
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Lecture Slides:**
[Design via Frequency Response](Attachments/Workshop%20Ch11%20-%20Design%20via%20Frequency%20Response_annotated.pdf)

**Review of root locus design:**
- The transient response of a control system can be designed by adjusting the gain along the root locus
	- Finding the transient specification on the root locus
	- Setting the gain accordingly
	- Settling for the resulting steady-state error
- Disadvantage
	- Only the transient response and steady-state error represented by **points along the root locus** are available
- **Cascade compensators** have been introduced to meet transient response specifications represented by **points not on the locus** and, independently, steady-state error requirements.

*Bode plots vs Root Locus*
- Stability and transient response design via gain adjustment
	- Unlike root locus techniques, **Bode plots can be implemented conveniently without a computer or other tool except for testing the design.**
	- We can easily draw bode plots using asymptotic approximations and **read the gain from the plots.**
	- The **computational disadvantage** of root locus **vanishes** when using tools like MATLAB.

Transient response design via cascade compensation
	- Bode plots are **not as intuitive as the root locus**
	- It is something of an art to design cascade compensation with Bode plots
	- In Bode plots, phase margin is related to percent overshoot and bandwidth is related to both damping ratio and settling time (or peak time), and the equations are rather complicated
	- The reshaping of open-loop transfer function's frequency response can lead to several trials until all transient response requirements are met.

Steady-state error design via cascade compensation
- *An advantage of bode plots is the ability to design derivative compensation, such as lead compensation, to improve both transient response and steady-state error.*
- **Using root locus there are an infinite number of possible solutions to the design of a lead compensator**
- **root locus requires numerous tries to arrive at the solution that yields the required steady-state error performance.**

![](Attachments/Pasted%20image%2020240426195341.png)

# Steady-state error insights from Bode plots
Step input, assuming G(s) type 0:
![700](Attachments/Pasted%20image%2020240426195614.png)
Type zero system:
$$G(s) = K \frac{\prod^{n}_{i=1}(s+z_{i})}{\prod_{i=1}^{m} (s+p_{i})}$$

Position constant $K_{p}$
$$K_{p} = K \frac{\prod _{i=1}^{n} z_{}}{2}$$