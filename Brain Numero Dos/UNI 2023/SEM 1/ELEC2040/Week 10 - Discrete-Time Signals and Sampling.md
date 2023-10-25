 #ELEC/2040 #UniNotes

**Slides:**
[[Attachments/Week 10 Discrete Time Signals and Sampling.pdf]]

**Relevant Videos:**
- [Discrete Time Signals](https://youtu.be/mMPxfhplRGw)  
- [Discrete Time Basis Functions](https://youtu.be/P7q2YMQiat8)
- [Fourier Transform of Discrete Time Signals are not Discrete](https://youtu.be/AOQAlrtGUzo)  
- [Sampling Discrete Time Signals](https://youtu.be/mKGp7kus4yo)  
- [Discrete Time Sampling Example](https://youtu.be/vGxvrq5kCzQ)  
- [Decimation of Discrete Time Signals](https://youtu.be/jP267ZoMChw)  
- [Interpolation of Discrete Time Signals](https://youtu.be/C5HoWirRQiU)
- [How does the Discrete Fourier Transform DFT relate to Real Frequencies?](https://youtu.be/pIFz84oj9cA)
- [Discrete / Fast Fourier Transform DFT / FFT of a Sinusoid Signal](https://youtu.be/lwQTNcWtN7w)  
- [How do the Frequency, Sample Rate and Duration affect the DFT of a Sinusoid?](https://youtu.be/5diC6XLLVoA)

# Discreet Time and Continuous Time Cases

**Continuous Time:**
$$x(t) = Ce^{at}$$
Both C and a, complex

Some Cases:
1. C & a $\rightarrow$ Real Valued
2. $C = Ae^{j\phi}, a=j\omega_o$
3. $C=Ae^{j\phi}, a=r+j\omega_o$
$\rightarrow x(t)=Ae^{rt}\cos(\omega_{o}t+\phi) + jAe^{rt}\sin(\omega_{o}t + \phi)$

**Discrete Time:**
$$x[n] = C \alpha^{n}$$
Both C and $\alpha$, complex

Some more cases
1. $C$ & $\alpha \rightarrow$ Real
2. $C = Ae^{j\phi}, \alpha = e^{j\omega_o}$
3. $C = Ae^{j\phi}, \alpha = |\alpha| e^{j\omega_o}$

# Periodicity Properties of DT Complex Exponentials

```ad-attention
title: Important Property of Discrete TIme
In **Continuous Time**, $x(t) = e^{j\omega_{0}t}$ is always periodic as $e^{j\omega_{0}t} = e^{j\omega_{0}(t+T)}$ can always be solved and the solution is independent of t.

In **Discrete Time**, $x[n] = e^{j\omega_{0}n}$ is **NOT** always periodic. This is because n is an integer rather than a continuous variable like t.

```

Suppose we sample a CT signal $x(t) = e^{j\omega_{0}t}$ at times t = 0, T, 2T, 3T...
We can generate $x[n] e^{j\omega_{0}Tn}$, which looks like this:
![[Attachments/Pasted image 20230608164509.png]]
When T is small (fast sampling)
This will **ONLY** be periodic **IF** you choose T to sample the **SAME** bit of the curve on it's next cycle.

![[Attachments/Pasted image 20230608165042.png]]
Would be periodic if sampled here and with same period as the sine wave.

**NOT** same period if sampled at 1.5T. This is actually twice the period. #Why 

![[Attachments/Pasted image 20230608165425.png]]

# Discrete time samples for various values of $\omega_0$

![[Attachments/Pasted image 20230608165613.png]]

# Unit and Impulse Functions in Discrete Time
$$
 \delta[n] = \begin{cases} 
      1 & n=0 \\
      0 & n \neq 0 \\
   \end{cases} 
$$
![[Attachments/Pasted image 20230608174719.png]]
Impulse function is a single sample of height 1 at n=0 in discrete time.
$$
 u[n] = \begin{cases} 
      1 & n>=0 \\
      0 & n < 0 \\
   \end{cases} 
$$![[Attachments/Pasted image 20230608174800.png]]A unit step function is a series of samples of height 1 at n >= 0 in discrete time.

## Difference Equations (Differentials in CT)

$$\delta[n] = u[n] - u[n-1]$$
Where:
$$u[n] = \sum\limits_{m=-\infty}^{n} \delta[m]$$

## Sampling Property
$$x[n] \delta[n] = x[0]\delta[n]$$
Results in sampling $x[n]$ at n = 0

$$x[n] \delta[n-n_{0}]=x[n_{0}]\delta[n-n_{0}]$$

# Discrete Time Fourier Transform for Aperiodic Signals
$$x[n]= \frac{1}{2\pi}\int_{2\pi}X(e^{j\omega}) e^{j\omega n} \text{ }d\omega$$
$$X(e^{jw}) = \sum\limits_{n=-\infty}^{\infty} x[n] e^{-j\omega n}$$
Where:
$\int_{2\pi}$ Means integrate over any $2\pi$ range

## Examples
### Example 1
![[Attachments/Pasted image 20230608181053.png]]

### Example 2
![[Attachments/Pasted image 20230608181132.png]]

### Example 3
![[Attachments/Pasted image 20230608181211.png]]

```ad-attention
Most of this is getting our equation in the right form and using the identity sheet to get the answer.
```

# Discrete Time Fourier Transform for Periodic Signals
$$X(e^{j\omega}) = \sum\limits_{k=-\infty}^{\infty} 2\pi a_{k} \delta(\omega - k\omega_0)$$

## Examples
### Example 1
![[Attachments/Pasted image 20230608181711.png]]

# Discrete Time Processing of Continuous Signals
![[Attachments/Pasted image 20230608185242.png]]
**But how do $X_{p}(j\omega)$ (CT FT of $x_{p}(t)$) and $X_{d}(e^{j\ohm})$ (DT FT of $x_{d}[n]$) Relate?**

$$x_{p}(t) = \sum\limits_{n=-\infty}^{\infty} x_{c}(nT) \delta(t-nT)$$
Therefore:
$$X_{p}(j\omega) = \sum\limits_{n=-\infty}^{\infty} x_{c}(nT) e^{-j\omega nT}$$

AND:
$$X_{d}(e^{j\ohm})=\sum\limits^{\infty}_{n=-\infty}x_{d}[n]e^{-j\ohm n}$$
$$= \sum\limits_{n=-\infty}^{\infty} x_{c} (nT) e^{-j\ohm n}$$

```ad-important
title: Therefore
$$\text{C.T Frequency  } \omega = \frac{\text{Discrete Time Frequency } \ohm}{T}$$
```
In order for $x_{p}(t)$ to have same frequency properties as $x_{d}[n]$

# Sampling of DT Signals
Given $x[n]$ sample to produce 
$$
x_{p}[n] = \begin{cases} 
      x[n] & n=mN \\
      0 & \text{Other} \\
   \end{cases}
$$

![[Attachments/Pasted image 20230608200907.png]]

$$p[n] = \sum\limits_{k = -\infty}^{\infty} \delta[n-kN]$$
$$x_{p}[n] = x[n]p[n]$$
![[Attachments/Pasted image 20230608201046.png]]

**Given $X(e^{j\omega})$ what is $X_{p}(e^{j\omega})$?**
$p[n]$ is periodic, with a period of 3

$$a_{k}= \frac{1}{3}\sum\limits_{n=0}^{2} p[n] e^{-jk \frac{2\pi}{3}n} = \frac{1}{3}$$
$$P(e^{j\omega})=2\pi \int_{2\pi} \frac{1}{3}\delta(\omega - k\omega_{s})$$
Where $\omega_{s} = \frac{2\pi}{3}$

$$X_{p}(e^{j\omega}) = \frac{1}{2\pi} \int_{2\pi} P(e^{j\theta}) X(e^{j(\omega-\theta)}) \text{ }d\theta$$
$$=\frac{1}{2\pi} \int_{2\pi} \frac{2\pi}{3}\sum\limits_{k=-\infty}^{\infty} \delta(\theta - \frac{2\pi}{3}k)X(e^{j(\omega-\theta)})\text{ }d\theta$$
$$\frac{1}{3}\sum\limits_{k=0}^{2}X(e^{j(\omega- \frac{2\pi}{3}k)})$$
![[Attachments/Pasted image 20230608202530.png]]
```ad-attention
title: Recovery
We can recover the original signal if:
$$\omega_{s}= \frac{2\pi}{N} > 2\omega_{m}$$

```

# Discrete Time Decimation (Down Sampling)

Decimation removes samples from a sampled DT signal and then removes the subsequent zeroes created by doing this. Decimation is a form of compression, and is used to store signals in a more "space" efficient manner.
![[Attachments/Pasted image 20230608203009.png]]
$$X_{b}(e^{j\omega})= \sum\limits^{\infty}_{k=-\infty}x_{b}[k]e^{-j\omega k}$$
$$=\sum\limits^{\infty}_{k=-\infty} x_{p}[kN]e^{-j\omega k}$$
Use $kN = n$
$$= \sum\limits_{n=\text{multiple of N}}x_{p}[n] e^{-j\omega \frac{n}{N}}$$
$$= \sum\limits_{n=-\infty}^{\infty}x_{p}[n] e^{-j\omega \frac{n}{N}}$$

**THEREFORE**
$$X_{b}(e^{j\omega})=X_{p}(e^{\frac{j\omega}{N}})$$
![[Attachments/Pasted image 20230608203834.png]]

# Interpolation (Upsampling)
![[Attachments/Pasted image 20230608204342.png]]
![[Attachments/Pasted image 20230608204353.png]]
