---
date: 2024-03-04
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Lecture Slides:**
[Stability](Attachments/Nise%20-%20Ch06%20Highlights.pdf)
[Steady-State Errors](Attachments/Nise%20-%20Ch07%20Highlights.pdf)
# Maths Content
---


## Stability

$$c(t) = c_{\text{forced}}(t) + c_{\text{natural}}(t)$$

A system is **stable** if the natural response approaches zero as time approaches infinity
*Stable systems have closed-loop transfer functions with poles only in **left hand plane (negative real part)***

A system is **unstable** if the natural response approaches infinity as time approaches infinity
*Unstable systems have closed loop transfer functions with at **least one pole in the right half-plane (positive real part) and/or poles of multiplicity greater than one on the imaginary axis***

A system is **marginally stable** if the natural response neither decays nor grows but remains constant or oscillates
*marginally stable systems have closed loop transfer functions with **only imaginary axis poles of multiplicity 1** and poles in the **left hand plane***

![](Attachments/Pasted%20image%2020240304224319.png)

```ad-note
These definitions assume implicitly there have been are **no cancellations of RHP and/or certain imaginary axis poles!** There are systems that after cancellation only has LHP poles left, yet is unstable for non-zero initial conditions

```

### Routh-Hurwitz Criterion
Yields stability information without need to solve for the closed-loop system poles
1. Generate *Routh Table*
2. Interpret table to determine how many closed loop system poles are in the LHP and in the RHP
![](Attachments/Pasted%20image%2020240304224849.png)
```ad-note
Any row of the Routh table can be multiled by a positive constant without changing the values of the rows below

```

The number of roots of the polynomial that are in the right half plane is equal to the number of sign changes in the first column
![](Attachments/Pasted%20image%2020240304225034.png)
Two sign changes, hence two poles in the right half-plane. System unstable

#### Special Cases
Two edge cases
1. The Routh table can have a zero only in the first column of a row
2. The Routh table can have an entire row that consists of zeros

Keep in mind: A zero does not have a definite sign. Zeros do not count as sign changes. Must watch out for them in the first column.

### Examples
Find the range of gain K > 0 for the system below that will cause the system to be stable, unstable, and marginally stable.
![](Attachments/Pasted%20image%2020240304225546.png)
 - If K < 1386 then there will be no sign change in the first column, so system is stable. 
 - If K > 1386 the first element of the third row becomes negative so that there will be two sign changes and the system has two RHP poles. So, in this case it is not stable.


## Steady-State Errors
![](Attachments/Pasted%20image%2020240305204250.png)
**Steady state error** is the difference between the input and the output for the prescribed test input as $t \rightarrow \infty$

Test waveforms for evaluating steady-state errors of control systems
![](Attachments/Pasted%20image%2020240305204441.png)

### Evaluating Steady State Errors
![](Attachments/Pasted%20image%2020240305211408.png)
#todo 

## Steady-State Error for Unity Feedback Systems

Steady-State Error in terms if T(s) - *closed loop transfer function*
![400](Attachments/Pasted%20image%2020240305211545.png)

$$E(s)  = R(s) - C(s)$$
$$E(s) = R(s) [1-T(s)]$$
$$e(\infty)  \lim_{ t \to \infty } e(t) = \lim_{ s \to 0 } s E(s) $$
...final value theorem (keep in mind valid conditions)
$$e(\infty) = \lim_{ s \to \infty } s R(s)[1-T(s)]$$


### Steady-State Error in Terms of G(s) - open loop transfer function

![](Attachments/Pasted%20image%2020240305212227.png)
$$E(s) = R(s) - C(s)$$
$$C(s) = E(s)G(s)$$

$$E(s) = \frac{R(s)}{1+G(s)}$$
$$e(\infty) = \lim_{ s \to 0 }  \frac{sR(s)}{1+G(s)}$$


### Static Error Constants and System Type

Position Constant $K_{p}$ where $K_{p} = \lim_{ s \to 0 } G(s)$

Velocity Constant, $K_{v} = \lim_{ s \to 0 } sG(s)$

Acceleration Constant, $K_{a}$, where $K_{a} = \lim_{ s \to 0 }s^{2}G(s)$

For a step input: 
$$e_{step} (\infty) = \frac{1}{1+ \lim_{ s \to 0 } G(s)}$$
$$e(\infty) = \frac{1}{1+K_{p}}$$

For a ramp joint:
$$e_{ramp}(\infty)=\frac{1}{\lim_{ s \to 0 } sG(s)}$$
$$e(\infty) = \frac{1}{K_{v}}$$

For a parabolic input:
$$e_{\text{parabolic}} (\infty) = \frac{1}{\lim_{ s \to 0 } s^{2}G(s)}$$
$$e(\infty) = \frac{1}{K_{a}}$$


## System Type
![](Attachments/Pasted%20image%2020240305213859.png)
$$n = 0\dots \text{Type 0 system}$$
$$n =1 \dots \text{Type 1 system}$$
$$n = 2\dots \text{Type 2 system}$$
![](Attachments/Pasted%20image%2020240305214019.png)

### Example
 For the closed-loop system below, find the static error constants and the expected error for the standard step, ramp, and parabolic inputs
![](Attachments/Pasted%20image%2020240305214051.png)

### Example 2
Given the control system, find the value of K so that there is 10% error in the steady state.
![](Attachments/Pasted%20image%2020240305214126.png)

### Example 3
Find the steady-state error component due to a step disturbance for the system below
![](Attachments/Pasted%20image%2020240305214152.png)

### Steady-State Error for Non-unity Feedback Systems
- Control systems often **do not have unity feedback** because of the compensation used to improve performance or because of the physical model for the system. 
- When **nonunity feedback** is present, the plant's **actuating signal is not the actual error** or difference between the input and the output
![](Attachments/Pasted%20image%2020240305214231.png)
