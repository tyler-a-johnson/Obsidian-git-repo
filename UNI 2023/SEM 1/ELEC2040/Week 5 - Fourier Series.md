#ELEC/2040  #Communication/SignalProcessing #Communication #UniNotes

**Relevant Videos:**
- [What is the Fourier Transform?](https://youtu.be/G74t5az6PLo)
- [What is the Fourier Transform Used For?](https://youtu.be/VtbRelEnms8)
- [Fourier Transform Equation Explained](https://youtu.be/8V6Hi-kP9EE)  
- [Fourier Transform of cos function](https://youtu.be/McITNfo3LKc)  
- [Fourier Transform of cos with phase shift](https://youtu.be/97eKhJwf9Mk)  
- [What is negative frequency?](https://youtu.be/gz6AKW-R69s)
- [Time and Frequency Scaling](https://youtu.be/7M0js8Y9EyY)

**Slides:**
[[Attachments/Week 5 Fourier Transform.pptx]]
[[Attachments/Week 5 Fourier Transform.pdf]]

# The Fourier Transform
$$f(t) \rightarrow_{F}F(\omega)$$
$F(\omega)$ is a signal in the frequency domain, its a function of frequency

$y(t) = e^{j\omega t}$ is a function of t for a fixed value of $\omega$
$Z(\omega) = e^{j\omega t}$ is a function of $\omega$ for a fixed value for t

**Inverse Fourier Transform:**
$$f(t) = \frac{1}{2\pi} \int^{\infty}_{-\infty} F(\omega) e^{j\omega t} d\omega$$
This takes $F(\omega)$ and tells us how to get $f(t)$

**Fourier Transform:**
$$F(\omega) = \int_{-\infty}^{\infty} f(t) e^{-j\omega t} dt$$
This takes $f(t)$ and gives us $F(\omega)$

*Both the fourier and inverse fourier transforms are linear*

![[Attachments/Pasted image 20230612170053.png]]
![[Attachments/Pasted image 20230612170107.png]]

# Energy Spectral Density (Huh)
For an energy signal $x(t)$ with Fourier Transform $X(\omega)$ we can interpret $\frac{1}{2\pi}|X(\omega)|^{2}$ as the energy density at frequency $\omega$.

**Parseval's Equation States that**
$$\int_{-\infty}^{\infty} |x(t)|^{2} dt = \frac{1}{2\pi}\int_{-\infty}^{\infty}|X(\omega)|^{2}d\omega$$
We can compute the energy density in either time domain.

**Time domain:**
$$E = \int_{-\infty}^{\infty}|x(t)|^{2}dt$$

**Frequency Domain:**
$$E = \frac{1}{2\pi} \int_{-\infty}^{\infty}|X(\omega)|^{2}d\omega$$

We can change the range over which we integrate in order to find the energy within a specific band

```ad-note
There is no energy density for signals like $x(t) = cos(\omega_{0}t)$ but there is a power spectrum for such signals.
```

# Properties

## Linearity
![[Attachments/Pasted image 20230612171315.png]]

## Time Reversal
![[Attachments/Pasted image 20230612171340.png]]

## Time Scaling
![[Attachments/Pasted image 20230612171437.png]]
![[Attachments/Pasted image 20230612171503.png]]

## Time Shift
![[Attachments/Pasted image 20230612171519.png]]

## Frequency Shift
![[Attachments/Pasted image 20230612171539.png]]

