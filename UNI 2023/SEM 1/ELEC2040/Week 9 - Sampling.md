 #ELEC/2040 #Communication #Communication/SignalProcessing #UniNotes

**Slides:**
[[Attachments/Week 9 Sampling.pdf]]

**Relevant Videos:**
- [Sampling Signals](https://youtu.be/AcuQnIXiZ2A)
- [Sampling Example](https://youtu.be/50sZh1YWu_o)  
- [How are Signals Reconstructed from Digital Samples?](https://youtu.be/dD9HC1GThZY)
- [What is Aliasing?](https://youtu.be/B3nZUFNkTGY)
- [Fourier Transform of sum of delta functions](https://youtu.be/t0NLutwAi3c)  
- [Why is the Fourier TF of a Sum of Deltas also a Sum of Deltas?](https://youtu.be/ry171Hgvm-8)

# CT and Samples
How fast do you need to sample a CT signal and then **EXACTLY** reconstruct it from the samples?
![[Attachments/Pasted image 20230524195139.png]]

## Impulse Train Sampling

Using an Impulse Train: $p(t) = \sum_{n=-\infty}^{\infty} \delta (t-nT)$ To sample $x(t)$

Gives $x_{p}(t) = x(t)p(t)$

$x_{p}(t) = \sum_{n=-\infty}^{\infty} x(nT)\delta(t-nT)$

**In the frequency domain:**
$X_p(j\omega) = \frac{1}{{2\pi}}X(j\omega)\ast P(j\omega)$

Where: $P(j\omega) = \frac{2\pi}{T}\sum_{k=-\infty}^{\infty} \delta(\omega - k \omega_s)$ (Fourier transform of the impulse train)
Where: $\omega_{s}= \frac{2\pi}{T}$

$X_{p}(j\omega) = \frac{1}{T}X(j\omega)\ast \sum_{k=-\infty}^{\infty}\delta(\omega - k\omega_s)$

$X_p(j\omega)=\frac{1}{T}\sum_{k=-\infty}^{\infty}X(j(\omega - k\omega_s))$

![[Attachments/Pasted image 20230524201220.png]]

# Sampling Theorem

For $x(t)$ bandlimited, $X(j\omega) = 0$ for $|\omega|>\omega_s$ 
If sampling is done at period T
then $x(t)$ is uniquely determined by samples $x(nT)$ **IF**
$$\omega_{s}=\frac{2\pi}{T}> 2\omega_m$$

Where: $2\omega_m$ is called the **NYQUIST RATE**
and: $\omega_m$ is called the **NYQUIST FREQUENCY**

Recover $x(t)$ from $x_p(t)$ using ideal LPF.
![[Attachments/Pasted image 20230525135204.png]]

$x_{p}(t) \ast x(t) \text{ IF } \omega_{s}>2\omega_{m}$
$h(t)$ is an ideal LPF

# Reconstruction from samples interpolation

## Ideal Low Pass Filter
*With Gain T*
![[Attachments/Pasted image 20230525140031.png]]


$h(t) = T*\frac{sin(\omega_{c}t)}{\pi t}$
![[Attachments/Pasted image 20230525140221.png]]
$h(t) = 0$ when $\omega_{c}t = kTC$
i.e. $t = \frac{2k\pi}{\omega_{s}}= kT$

**Recall:**
$x_{p}(t) = \sum_{n=-\infty}^{\infty}x(nT)\text{ }\delta(t-nT)$
$x_{r}(t) = \sum_{n=-\infty}^{\infty}x(nT)\text{ }h(t-nT)$
![[Attachments/Pasted image 20230525141244.png]]
Reconstructed **EXACTLY** if Nyquist is satisfied.

## Zero Order Hold
![[Attachments/Pasted image 20230525141428.png]]
$$H(j\omega)=e^{-j\omega \frac{T}{2}} \frac{2 \sin(\omega \frac{T}{2})}{\omega}$$
![[Attachments/Pasted image 20230525141632.png]]

## First Order Hold
![[Attachments/Pasted image 20230525141747.png]]
$$H(j\omega)=\frac{1}{T}[\frac{\sin(\frac{\omega T}{2})}{\omega/2}]^2$$
![[Attachments/Pasted image 20230525142004.png]]

# Under sampling: Aliasing

Suppose $\omega_{s} < 2\omega_{m}$
![[Attachments/Pasted image 20230525142127.png]]

Using ideal LPF does **NOT** recover the signal. Higher frequencies are **mapped (folded back)**.

Since "Noise" in a system has a broad spectrum, a typical signal **REALLY** looks like.
![[Attachments/Pasted image 20230525142420.png]]
We need a LPF **Before** sampling so that the HIGH FREQ noise doesn't get folded back, affecting our reconstruction.

## Examples
![[Attachments/Pasted image 20230525143645.png]]