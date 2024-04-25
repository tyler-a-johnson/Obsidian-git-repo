---
date: 2024-04-25
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Lecture Slides:**
[Frequency Response](Attachments/Workshop%20Ch10%20-%20Frequency%20Response_v1_annotated-1.pdf)
# Frequency Response (Bode Plots)
- Not as intuitive as root locus
- Provides a new vantage point from which to view feedback control systems:
	- When modelling TF functions from physical data.
	- Designing lead compensators to meet a steady-state error requirement and a transient response requirement
	- Finding the stability of nonlinear systems
	- In settling ambiguities when sketching root locus

- In the steady state, sinusoidal inputs to a linear system generate sinusoidal responses of the same frequency.
- Responses are of the same frequency as the input, they differ in magnitude and phase angle from the input.
- These differences are functions of frequency
- **Sinusoids representation**
	- Sinusoids can be represented as complex numbers called *phasors*
	- A system causes both the amplitude and phase angle of the input to be changed
![500](Attachments/Pasted%20image%2020240425222054.png)

- Analytical expressions for the frequency response can be obtained from the TF G(s).
$$G(j \omega) = G(s)|_{s\rightarrow j \omega}$$

- **Plotting of the frequency response**
$$G(j \omega) = M_{G} (\omega) \angle \phi_{G} (\omega)$$
As a function of **frequency** with separate magnitude and phase plots


## Asymptotic Approximations: Bode Plots
- **Bode plots** of Bode diagrams: Curves of the **log-magnitude** and **phase frequency** response as functions of $\log \omega$
$$G(s) = \frac{K(s+z_{1})(s+z_{2})\dots(s+z_{k})}{s^{m} (s+p_{1})(s+p_{2})\dots(s+p_{n})}= \frac{Ne^{i \angle N}}{De^{j \angle D}} = \frac{N}{D}e^{j \angle N-D}$$

**The magnitude response is given by:**
$$|G(s)| = \frac{K|(s+z_{1})||(s+z_{2})|\dots|(s+z_{k})|}{s^{m} |(s+p_{1})| |(s+p_{2})|\dots|(s+p_{n})|}$$

Converting the **magnitude response into dB** we obtain:
$$20 \log |G(j \omega)| = 20 \log K + 20 \log |(s+z_{1})| + 20 \log |(s+z_{2})| + \dots $$
$$\dots - 20 \log|s^{m}| - 20 \log |(s+p_{1})|- \dots |_{s \rightarrow j \omega}$$

**Phase frequency response**
Is the sum of the phase frequency response curves of the **zero terms** minus the sum of the phase frequency response curves of the **pole terms**.

### Bode plots for $G(s) = (s+a)$ Low frequency asymptote
- Low frequency asymptote

$$G(s) = (s+a), \text{ } s=j \omega$$
$$G(j \omega) = (j \omega + a) = a \left( j \frac{\omega}{a} + 1 \right)$$

At low frequencies when $\omega$ approaches zero: $G(j \omega) \approx a$
The magnitude response in dB is: $20 \log M = 20\log a$
![700](Attachments/Pasted%20image%2020240425225545.png)
![700](Attachments/Pasted%20image%2020240425225601.png)

### Bode plots for $G(s) = (s+a)$ High frequency asymptote
At high frequencies, where $\omega \gg a$

$$G(j \omega) = (j \omega+a) = a\left( j \frac{\omega}{a} + 1 \right)$$
$$G(j \omega) \approx a\left(\frac{j \omega}{a} \right) = a\left( \frac{\omega}{a} \right)\angle 90 = \omega \angle 90$$
$$20 \log M = 20 \log a + 20 \log \frac{\omega}{a} = 20 \log \omega$$
![700](Attachments/Pasted%20image%2020240425230216.png)

---
![](Attachments/Pasted%20image%2020240425232545.png)

$$G(j \omega) = (j \omega+a) = a\left( j \frac{\omega}{a} + 1 \right)$$
From the above equation:
- At the **break frequency** a, phase is 45deg
- At **low frequencies** the phase is 0deg
- At **high frequencies** the phase is 90deg

---

- It is often convenient to **normalize the magnitude** and **scale the frequency** so that the log-magnitude plot will be 0dB at a break frequency of unity.
- Normalization and scaling makes it **easier to add components** to obtain the **Bode plot** of a function such as:  $$|G(s)| = \frac{K|(s+z_{1})||(s+z_{2})|\dots|(s+z_{k})|}{s^{m} |(s+p_{1})| |(s+p_{2})|\dots|(s+p_{n})|}$$
- To **normalize (s+a)** factor out the quantity a and form $a\left[ \left( \frac{s}{a} \right) + 1 \right]$
- The **frequency is scaled** by defining a new frequency variable, $s_{1} = s / a$
- The magnitude is divided by the quantity a to yield 0 dB at the break frequency.

**Hence, the normalized and scaled frequency function is $(s_{1}+1)$**
![700](Attachments/Pasted%20image%2020240425233203.png)
![700](Attachments/Pasted%20image%2020240425233301.png)
![700](Attachments/Pasted%20image%2020240425233434.png)

---
We can find the normalised and **scaled Bode plots** for:
![](Attachments/Pasted%20image%2020240425235619.png)
![700](Attachments/Pasted%20image%2020240425235726.png)
![700](Attachments/Pasted%20image%2020240425235748.png)
![700](Attachments/Pasted%20image%2020240425235915.png)

---

Similarly, we can find the normalised and scaled Bode plots for:
![700](Attachments/Pasted%20image%2020240426000307.png)

---

**Bode plots for** $G(s) = s^{2}+ 2 \zeta \omega_{n} s + \omega_{n}^{2}$

