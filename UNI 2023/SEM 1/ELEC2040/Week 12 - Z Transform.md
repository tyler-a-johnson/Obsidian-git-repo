 #ELEC/2040 #Communication #Communication/SignalProcessing #UniNotes

**Slides:**
[Week 13 Z Transform](Attachments/Week%2013%20Z%20Transform.pdf)

**Relevant Videos:**
- [What is the Z Transform?](https://youtu.be/n6MI-nEZoL0)  
- [Z Transform Region of Convergence Explained](https://youtu.be/uq_qv3Spzbs)  
- [Z Transform Example](https://youtu.be/8fFnBAX8aeg)

*Its like the S Transform but for Discrete Time*

# Z Transform
Given $x[n]$
$$X(z) = \sum\limits_{n=-\infty}^{\infty}x[n]z^{-n}$$

If $z = e^{j\omega} \rightarrow X(e^{j\omega})=$ DT FT of $x[n]$

**More generally:**
If $z=re^{j\omega}\rightarrow X(re^{j\omega})=\sum\limits_{n=-\infty}^{\infty}x[n]r^{-n}e^{-j\omega n}$
Where the summation is the FT of $x[n]r^{-n}$
![Pasted image 20230611203918](Attachments/Pasted%20image%2020230611203918.png)

## Examples

### Example 1
![Pasted image 20230611204025](Attachments/Pasted%20image%2020230611204025.png)

### Example 2
![Pasted image 20230611204044](Attachments/Pasted%20image%2020230611204044.png)
![Pasted image 20230611204053](Attachments/Pasted%20image%2020230611204053.png)

### Example 3
![Pasted image 20230611204122](Attachments/Pasted%20image%2020230611204122.png)
![Pasted image 20230611204145](Attachments/Pasted%20image%2020230611204145.png)

### Example 4
![Pasted image 20230611204216](Attachments/Pasted%20image%2020230611204216.png)

### Example 5
![Pasted image 20230611204229](Attachments/Pasted%20image%2020230611204229.png)

### Example 6
![Pasted image 20230611204251](Attachments/Pasted%20image%2020230611204251.png)

# Inverse Z Transform
$$x[n] = \frac{1}{2\pi j} \oint X(z) z^{n-1} \text{ } dz$$

$\oint$ Means integrate counter clockwise around a circle of constant amplitude in the ROC (Circle is meant to be a counter clockwise arrow)

Either directly solve the above equation, or use **partial fraction expansion and the formula sheet.**

## Examples
### Example 1
![Pasted image 20230611204849](Attachments/Pasted%20image%2020230611204849.png)

### Example 2
![Pasted image 20230611204908](Attachments/Pasted%20image%2020230611204908.png)

### Example 3
![Pasted image 20230611204926](Attachments/Pasted%20image%2020230611204926.png)

# Geometric Evaluation from Pole-Zero Plot

Suppose $H(z) = \frac{10}{1-\frac{1}{2}z^{-1}}$ Where: $|z| > \frac{1}{2}$
What is $H(z)$ when $z = e^{j \frac{\pi}{4}}$
![Pasted image 20230611205153](Attachments/Pasted%20image%2020230611205153.png)
## Observations
1. As $\omega$ increases, distance from pole to point increases and the magnitude of the transfer function decreases.  $\therefore$ Low Pass Filter
2. If the pole is moved towards the origin, the effect described in 1. is reduced, so the system is more stable.

# Properties of the Z Transform
## Time Delay
$$x[n-n_{o}] \leftrightarrow_{Z}z^{-n_{0}}X(z)$$

1 Delay in time $\rightarrow$ Multiply by $z^{-1}$

## Convolution
$$x[n]*y[n] \leftrightarrow X(z)Y(z)$$
Convolution in the time domain is multiplication in the frequency domain.

### Example
![Pasted image 20230611205843](Attachments/Pasted%20image%2020230611205843.png)

# LTI Systems

**Causal:** IF ROC of $H(z)$ is exterior of a circle extending to $\infty$

**Stability:** ROC must contain unit circle $|z| = 1$

**Difference Equations:**
## Example
### Difference Equations
![Pasted image 20230611210048](Attachments/Pasted%20image%2020230611210048.png)![Pasted image 20230611210059](Attachments/Pasted%20image%2020230611210059.png)

### Filtering Example
![Pasted image 20230611210154](Attachments/Pasted%20image%2020230611210154.png)