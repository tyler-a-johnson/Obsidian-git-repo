---
date: 2024-03-14
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Lecture Slides:**

# Root Locus
- A graphical technique that gives qualitative **description** of a control system's performance.
- Provide solutions for systems of order greater than two
- Describe qualitatively the performance (transient response) of a system as various parameters are changed
- Graphical representing a system's stability

## Vector Representation of Complex Numbers (1)

![](Attachments/Pasted%20image%2020240314194050.png)
$$\bar{M} = Me^{j \text{ phase of m}}$$
$$F(s) = s  + a  = (\sigma + a) + j \omega $$

Bottom right is a different way to draw the same vector, we aren't concerned with location
Zeros are now at $- a$

Bottom right we are evaluating $F(s) = s + 7$ at the point $s = 5  + j2$
We pin the end of the vector at $5+j2$ and draw the zero at -7.

Same as if we drew the start at 0 and the end is $12+j2$


**PHASE ANGLE AND MAGNITUDE REMAINS THE SAME**

$(s+a)$ is a complex number and can be represented by a vector drawn from the zero of the function to the point s


Apply this to something more complex

Product of all zeroes of the function over the product of all poles $\prod$  = product
![](Attachments/Pasted%20image%2020240314201621.png)
Each complex factor can be expressed as a vector of magnitude $M$ and angle $\theta$

![](Attachments/Pasted%20image%2020240314194910.png)
Vector written as
$$|F(s)|  \text{  = Length of vector}$$
$$\angle F(s) \text{ = is the phase angle}$$
$$\text{ We can also use } M\angle \theta$$

$$(s+z_{1})(s+z_{2})= M_{1} e^{j \phi_{1}}*M_{2}e^{j \phi _{2}} = M_{1} M_{2} e^{j(\phi_{1}+\phi_{2})}$$
Division we change to $\phi_{1}-\phi_{2}$


# Defining the Root Locus
**Root Locus** - Representation of the paths of the closed-loop poles as the gain is varied.
Example, a camera system that follows a subject
![](Attachments/Pasted%20image%2020240314195125.png)

![](Attachments/Pasted%20image%2020240314195211.png)

**Closed loop transfer of the camera system**
![](Attachments/Pasted%20image%2020240314195238.png)

**Pole location as a function of gain for the camera system**
![](Attachments/Pasted%20image%2020240314195931.png)
Location of poles as gain changes
![](Attachments/Pasted%20image%2020240314195942.png)
These form a limit, here around -5.
Starting point is when gain = 0
![](Attachments/Pasted%20image%2020240314203334.png)

## Properties of the Root Locus
Using the properties of the root locus we can sketch the root locus for higher order systems without having to factor the denominator of the closed loop transfer function
![](Attachments/Pasted%20image%2020240314204403.png)
$s_{}$ is a pole of $T(s)$ if the denominator is 0.
$$1 + KG(s)H(s) = 0$$
$$KG(s)H(s) = -1$$

Alternatively
![](Attachments/Pasted%20image%2020240314205001.png)
the angle of the complex number is an **odd** multiple of 180 degrees. That value of s is a system pole for some value of K.
180 * (1, 3, 5, 7 etc)

## Sketching the Root Locus
1. **Number of branches** - Number of branches of the root locus equals the number of closed-loop poles
2. **Symmetry** - The root locus is symmetrical about the real axis
3. **Real-axis segments** - On the real axis, for K>0 the root locus exists to the left of an odd number of real-axis, finite open-loop poles and/or finite open-loop zeros.
![](Attachments/Pasted%20image%2020240314205629.png)