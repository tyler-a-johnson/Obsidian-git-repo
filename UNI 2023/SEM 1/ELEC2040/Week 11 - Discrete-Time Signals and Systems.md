#Communication/SignalProcessing #ELEC/2040 #Communication #UniNotes

**Slides:**
[Week 12 Discrete Time Signals and Systems](Attachments/Week%2012%20Discrete%20Time%20Signals%20and%20Systems.pdf)

**Relevant Videos:**
- [Discrete Time Convolution Example](https://youtu.be/KAOJsqCyd5Y)
- [Discrete Time System Output Example](https://youtu.be/Um564Ftq5s0)

# Linear Time-Invariant Systems - Discrete Time

Any $x[n]$ can be constructed from unit impulses with various gains
![Pasted image 20230610090212](Attachments/Pasted%20image%2020230610090212.png)
$$x[n] =-\frac{1}{2} \delta[n+1] + \delta[n] + \frac{1}{2}\delta[n-1]$$
$$x[-1]\delta[n+1]+x[0]\delta[n]+x[1]\delta[n-1]$$

**Therefore:**
$$x[n] = \sum\limits_{k=-\infty}^{\infty}x[k]\delta[n-k]$$
Where:
$x[k]$ Represents our coefficients
$\delta[n-k]$ Represents our basis functions.

# Convolutional Sum Representation of a System
![Pasted image 20230610090736](Attachments/Pasted%20image%2020230610090736.png)
Because this is linear,
$$x[k]\delta[n-k] \rightarrow x[k]h_{k}[n]$$
Where:
$x[k]$ Represents our coefficients
$\delta[n-k]$ Represents our function

$h_{k}[n]$ Is still our function written in a general form (Described above)

In general notation, any $x[n]$ can be represented as:
$$x[n] = \sum\limits_{k=-\infty}^{\infty}x[k]\delta[n-k]$$

**For LTI Systems:**
$$y[n] = \sum\limits_{k=-\infty}^{\infty}x[k] h_{k}[n]$$

Since our system is time invariant we can also assume:
$h_{1}[n] = h_{0}[n-1]$
$h_{2}[n] = h_{0}[n-2]$
$h_{3}[n] = h_{0}[n-3]$

$$y[n] = \sum\limits_{k=-\infty}^{\infty}x[k]h[n-k]$$
$$=x[n]*h[n]$$
Where * Denotes Convolution and $h[n]=h_{0}[n]$

## Properties
- $h[n]$ **FULLY** Characterises a LTI System
- $x[n] * h[n] = h[n] * x[n]$
- Finite Impulse Response (FIR)
	- IF $h[n] = h[0]\delta[n]+h[1]\delta[n-1]+\text{... }h[M]\delta[n-M]$ For M finite
	**Example: Averaging Filter with Weights**
	$y[n] = 3x[n] + 2x[n-1]+x[n-2]$

	Test with $x[n] = \delta[n]$:
	$y[n] = 3\delta[n]+2\delta[n-1]+\delta[n-2]$

	$y[-2] = 0, y[-1]=0, y[0] = 3, y[1]=2, y[2]=1, y[3] = 0$

![Pasted image 20230610093949](Attachments/Pasted%20image%2020230610093949.png)
- Infinite Impulse Response (IIR)
	If $h[n]$ has $\infty$ number of non zero elements
	**Example:** $y[n] = \frac{9}{10}y[n-1] + x[n]$![Pasted image 20230610095201](Attachments/Pasted%20image%2020230610095201.png)

# Calculating a Convolution

**Example:**
Suppose an LTI system has unit impulse response
![Pasted image 20230610095404](Attachments/Pasted%20image%2020230610095404.png)
What is the output when the input is $x[n] \text{ Convolved with } h[n]$

![Pasted image 20230610095426](Attachments/Pasted%20image%2020230610095426.png)
## Method 1: Maths and Shit
![Pasted image 20230610095513](Attachments/Pasted%20image%2020230610095513.png)

## Method 2: Graphical
Think of $x[n]$ as two impulses summed.
$\frac{1}{2}\delta[n]$  &  $2\delta[n-1]$

Since this is an LTI system, output will be the sum of 2 responses (as $x[n]$ is made of 2 delta functions in this example)
![Pasted image 20230610100631](Attachments/Pasted%20image%2020230610100631.png)

## Example
What is the impulse response of this IIR System
$$y[n+1] - y[n] = x[n]$$
Where: $y[n] = 0 \text{ for } n <0$

**Answer:**
Choose $x[n] = \delta[n]$

$y[0] = y[-1]+x[-1]=0$
$y[1] = y[0] + x[0] = 1$
$y[2] = y[1] + x[1] = 1$
![Pasted image 20230610102145](Attachments/Pasted%20image%2020230610102145.png)

## Convolution Example
Compute $h[n] * x[n]$ for: 
$x[n]= \alpha^{n} u[n]$
$h[n] = \beta^{n}u[n]$
Where: $\beta \neq \alpha$

![Pasted image 20230610102813](Attachments/Pasted%20image%2020230610102813.png)
![Pasted image 20230610102834](Attachments/Pasted%20image%2020230610102834.png)

# Properties and Examples of DT FT

## Time Shift
$$x[n-n_{0}] \leftrightarrow_{FT} e^{-j\omega n_{0}}X(e^{j\omega}) $$

## Frequency Shift
$$e^{j\omega_{0}n} x[n] \leftrightarrow_{FT} X(e^{j(\omega - \omega_0})$$

In **Discrete Time** once you have shifted by $2\pi$ in frequency, you are back to the start.
$$e^{j(\omega+2\pi)n}=e^{j\omega n}e^{j2\pi n} = e^{j\omega n}$$

$e^{j2\pi n}$ is *ALWAYS* equal to 1 because in DT n is an *INTEGER*

**Therefore:**
LOW Frequencies = $0,2\pi,4\pi,6\pi ...$
HIGH Frequencies = $\pi,3\pi,5\pi,7\pi ...$

## Time Expansion
**In Continuous Time:**$$x(at) \leftrightarrow_{FT} \frac{1}{|a|}X(\frac{j\omega}{a})$$
**In Discrete Time, IF:**
$$
 x_{k}[n] = \begin{cases} 
      x[n/k] & \textrm{If n is a multiple of k} \\
      0 & \textrm{If n is not a multiple of k} \\
   \end{cases} 
$$

*Then:*
$$x_{k}[n] \leftrightarrow_{FT} X(e^{jk\omega})$$
![Pasted image 20230610121553](Attachments/Pasted%20image%2020230610121553.png)

### Example (Time shift, Time expansion and Linearity)
![Pasted image 20230610121703](Attachments/Pasted%20image%2020230610121703.png)
![Pasted image 20230610121729](Attachments/Pasted%20image%2020230610121729.png)

## Convolution
$$x[n] * h[n] \leftrightarrow_{FT}X(e^{j\omega})H(e^{j\omega})$$

## Multiplication
$$x_{1}[n] x_{2}[n] \leftrightarrow_{FT} \frac{1}{2\pi} \int_{2\pi}X_{1}(e^{j\theta})X_{2}(e^{j(\omega-\theta)}) \text{ }d\theta$$
Periodic Convolution over $2\pi$

## Difference Equaitons
![Pasted image 20230610123141](Attachments/Pasted%20image%2020230610123141.png)

# Summary Table
![Pasted image 20230610123204](Attachments/Pasted%20image%2020230610123204.png)
