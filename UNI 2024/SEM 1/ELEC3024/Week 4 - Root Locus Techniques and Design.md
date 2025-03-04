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
$$\bar{M} = Me^{j \text{ (phase of m)}}$$
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

**Closed loop transfer function**
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
3. **Real-axis segments** - On the real axis, for K>0 the root locus exists to the left of a pole if there are an odd number of poles before it (inclusive of that pole), finite open-loop poles and/or finite open-loop zeros.
![](Attachments/Pasted%20image%2020240314205629.png)
Here the root locus is in blue
Xs are poles
Dots are zeros
4. **Starting and ending points** - The root locus begins at the finite and infinite poles of G(s)H(s) and ends at the finite and infinite zeroes of G(s)H(s). Begins when gain is 0.
5. **Behaviour at infinity** - The root locus approaches straight lines as asymptotes as the locus approaches infinity. Further, the equations of the asymptotes are given by the real-axis intercept and angle in radians as follows.

$\sigma_{a}$ is the coordinate the asymptote crosses the x axis
$$\sigma_{a}  = \frac{\sum \text{ finite poles} - \sum \text{finite zeros}}{\text{ num of poles - num of zeroes}}$$

$$\theta_{a} = \frac{(2k+1)\pi }{\text{num of finite poles - num of finite zeroes}}$$
where k is pm 0, 1, 2, 3...

6. **Real axis breakaway and break in points** - The root locus breaks away from the real axis at a point where the gain is maximum and breaks into the real axis at a point where the gain is minimum
$$KG(s)H(s) = -1 - 1 \angle (2k+1)180 \degree$$
$$K = -\frac{1}{G(s)H(s)} $$


For points along the real-axis segment of the root locus where breakaway and break-in points could exist $s = \sigma$

$$K = - \frac{1}{G(\sigma)H(\sigma)}$$
![](Attachments/Pasted%20image%2020240314214549.png)
$\frac{dK}{d \sigma} = 0$ solving for $\sigma$ we find breakaway and break-in points
looking for minimum points (breakin) and maximum (breakout)

7. **Calculation of jw axis crossing**
The root locus crosses the jw axis at the point where $\angle G(s) H(s) = (2k+1) 180\degree$

**OR** By letting s = jw in the characteristic equation, equating both the real part and the imaginary part to zero, and solving for w and K.

**OR** Using the Routh Hurwitz test.

## Transient Response Design via Gain Adjustment
1. Higher order poles are much farther into the left half of the s-plane than the dominant second-order pair of poles. The response that results from a higher order pole does not appreciably change the transient response expected from the dominant second-order poles.
![](Attachments/Pasted%20image%2020240314215644.png)
**Far enough away is classified as 5 times the distance p1 and 2 are from the jw axis**

2. Closed-loop zeroes near the closed-loop second-order pole pair are nearly cancelled by the close proximity of higher order closed loop poles (they both cancel out, treat as if its just p1 p2)
3. Closed loop zeroes not cancelled by the close proximity of higher-order closed loop poles are far removed from the closed-loop second-order pole pair.
![](Attachments/Pasted%20image%2020240314215906.png)