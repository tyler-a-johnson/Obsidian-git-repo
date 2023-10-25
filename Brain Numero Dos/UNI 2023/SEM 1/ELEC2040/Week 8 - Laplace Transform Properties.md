#ELEC/2040 #Communication #Communication/SignalProcessing #UniNotes

**Slides:**
[[Attachments/Week 9 Laplace TF Properties.pdf]]

**Relevant Videos:**
- [What is the Fourier Transform?](https://youtu.be/G74t5az6PLo)
- [What is the Fourier Transform Used For?](https://youtu.be/VtbRelEnms8)
- [Fourier Transform Equation Explained](https://youtu.be/8V6Hi-kP9EE)  
- [Fourier Transform of cos function](https://youtu.be/McITNfo3LKc)  
- [Fourier Transform of cos with phase shift](https://youtu.be/97eKhJwf9Mk)  
- [What is negative frequency?](https://youtu.be/gz6AKW-R69s)
- [Time and Frequency Scaling](https://youtu.be/7M0js8Y9EyY)

**Practical:**
[[Attachments/Practical Week 8 Laplace Properties.pdf]]

# Properties of Laplace Transform
Recall:
$$x(t) \leftrightarrow_{L} X(s) \text{ With ROC = R}$$

## Linearity
$$ax_{1}(t) + b x_{2}(t)\leftrightarrow_{L} aX_{1}(s)+bX_{2}(s)$$
With $ROC = R_{1}\cap R_{2}$
(At least)

## Time Shift
$$x(t-t_{0})\leftrightarrow_{L}e^{-st_{0}}X(s)\text{ ROC = R}$$

## Convolution
$$x_{1}(t)*x_{2}(t) \leftrightarrow_{L} X_{1}(s) X_{2}(s)$$
With $ROC = R_{1}\cap R_{2}$

## Differentiation
$$\frac{dx(t)}{dt} \leftrightarrow_{L}sX(s)$$
With $ROC \text{ Contains } R$
ROC Larger if pole at S=0 is cancelled
$$\frac{d}{dt}\leftrightarrow_{L}S$$
$$\frac{d^{2}}{d^{2}t} \leftrightarrow_{L}S^{2}$$
Not mathematically correct, although in practice this works.

## Integration
$$\int_{-\infty}^{t}x(t) dt \leftrightarrow_{L} \frac{1}{s}$$
With $ROC Contains R\cap{Re\{s\}>0}$

## Initial Value Theorem
$$x(ot) = \lim_{s\rightarrow\infty} sX(s)$$
For $x(t) = 0, t<0$ and no singularities at $t=0$

## Final Value Theorem
$$\lim_{t\rightarrow \infty} x(t) = \lim_{s\rightarrow 0}sX(s)$$
For $x(t) = 0, t<0$ and no singularities at $t=0$

## Examples
![[Attachments/Pasted image 20230612135336.png]]
![[Attachments/Pasted image 20230612135354.png]]
![[Attachments/Pasted image 20230612135412.png]]

# Analysis And Characterization of LTI Systems with the Laplace Transform
$$Y(s) = H(s) X(s)$$
Recall that if $s = j\omega$ then its just the fourier transform.

## Causality
$$h(t) = 0\text{ For } t<0$$
$$h(t) \text{ Right Sided}$$
```ad-note
ROC Must be a right half plane in order to be causal. BUT only holds in reverse if $H(s)$ is rational.
```
### Examples
#### Example 1
![[Attachments/Pasted image 20230612140432.png]]

#### Example 2
![[Attachments/Pasted image 20230612140501.png]]

#### Example 3
![[Attachments/Pasted image 20230612140521.png]]


## Stability
LTI System is Stable If:
$$\int_{-\infty}^{\infty} |h(t)| \text{ dt }<\infty$$
A stable LTI has a Fourier Transform

Also, Fourier Transform = Laplace Transform when evaluated along $j\omega$ axis
```ad-important
LTI System is Stable if ROC of $H(s)$ includes $j\omega$ axis
```
```ad-attention
title: Important Observation
A causal system with rational $H(s)$ is stable if all poles of $H(s)$ have 

Re{s} < 0
```


### Examples
#### Example 1
![[Attachments/Pasted image 20230612141208.png]]
![[Attachments/Pasted image 20230612141219.png]]

## LTI Systems Described by Differential Equations
![[Attachments/Pasted image 20230612142850.png]]
![[Attachments/Pasted image 20230612142902.png]]

![[Attachments/Pasted image 20230612142918.png]]
![[Attachments/Pasted image 20230612142934.png]]
