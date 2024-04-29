---
date: 2024-04-29
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---

# Block Diagrams
![](Attachments/Pasted%20image%2020240429200839.png)
Cascaded Systems![](Attachments/Pasted%20image%2020240429200903.png)Parallel subsystems![](Attachments/Pasted%20image%2020240429200941.png)
Feedback systems![](Attachments/Pasted%20image%2020240429201241.png)


# Time Response
```ad-note
**Poles** of a transfer function are the values of the Laplace transform variable, $s$, that cause the transfer function to become infinite.

**Zeros** of a transfer funtion are the values of the Laplace transform variable, $s$, that cause the transfer function to become zero.

```
![](Attachments/Pasted%20image%2020240421163106.png)
We have poles at -5 and zeros at -2
$C(s) = G(s)R(s) = \frac{s+2}{s+5} * \frac{1}{s} = \frac{s+2}{s(s+5)}$
We separate C(s) into $\frac{A}{s}+\frac{B}{s+5}$  using [[Partial Fractions]]

