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

# Maths Content
---


## Categorization

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


# Conceptual Info
---



# Additional Content
---
