---
date: 2024-03-04
tags:
  - ELEC/3024
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Lecture Slides:**
[Time Response](Attachments/Nise%20-%20Ch04%20Highlights_annotated.pdf)
[Reduction of Multiple Systems](Attachments/Nise%20-%20Ch05%20Highlights_annotated.pdf)

# Time Response
---

## Time Response
- How to find the time response from the transfer function
- How to use poles and zeros to determine the response of a control system
- How to describe quantitatively the transient response of first and second order systems
- How to approximate higher-order systems as first or second order
- How to find the time response from the state-space representation

### Poles and zeros of a First-Order System
```ad-note
**Poles** of a transfer function are the values of the Laplace transform variable, $s$, that cause the transfer function to become infinite.

**Zeros** of a transfer funtion are the values of the Laplace transform variable, $s$, that cause the transfer function to become zero.

```

![](Attachments/Pasted%20image%2020240421163106.png)
We have poles at -5 and zeros at -2
$C(s) = G(s)R(s) = \frac{s+2}{s+5} * \frac{1}{s} = \frac{s+2}{s(s+5)}$
We separate C(s) into $\frac{A}{s}+\frac{B}{s+5}$  using [[Partial Fractions]]


![](Attachments/Pasted%20image%2020240421165953.png)
```ad-note
Input pole is the pole of our input $1/s$

```
We can convert our output transform$$\frac{\frac{2}{5}}{s} + \frac{\frac{3}{5}}{s+5}$$
To our output time response:
$$c(t) = \frac{2}{5} + \frac{3}{5}e^{-5t}$$

#### Example
Given the system below, specify the natural and forced parts of the output 
![](Attachments/Pasted%20image%2020240421174614.png)

## First Order Systems
![](Attachments/Pasted%20image%2020240421174729.png)