 #ELEC/2070 #Circuits #UniNotes

**Slides:**
[ELEC2070 Week 11 2023 Laplace Transform](Attachments/ELEC2070%20Week%2011%202023%20Laplace%20Transform.pdf)

# The Damped Sinusoidal Forcing Function
Recall the equation for a damped sinusoidal forcing function (voltage):
$$v(t) = V_{m}e^{\sigma t} \cos(\omega t + \theta)$$
Using the complex frequency: $S = \sigma + \omega j$

Which has a form of:
![|500](Attachments/Pasted%20image%2020230524113256.png)

Making use of Euler's identity, we can derive:
$$v(t) = Re\{ V_{m}e^{\sigma t}e^{j(\omega t + \theta)}\} \text{ Or } v(t) = Re\{ V_{m}e^{\sigma t}e^{j(-\omega t - \theta)}\}$$

Collecting factors and using the complex frequency ($s = \sigma + j \omega$), we get (*time domain*):
$$v(t) = Re\{ V_{m}e^{j\theta}e^{st}\}$$
```ad-important
This equation involves a coefficient containing the amplitude and phase angle multiplied by an exponential involving the complex frequency.
```

## The Forced Response
Assume we want the forced response, which is a current going through a branch in a circuit. This current is given by:
$$i(t) = I_{m}e^{\sigma t}\cos(\omega t + \phi)\text{ Or }i(t) = Re\{ I_{m}e^{j\phi}e^{st}\}$$
Note that is must have the **SAME functional form**.
**The complex frequency of the forcing function and response are identical**

The real part of the forcing function ($\sigma$) Gives rise to the real part of the response. The imaginary part of the forcing function ($\omega$) Gives rise to the imaginary part of the response.

Usually the Re{} factor is removed but it **MUST** be reinserted if we want the time domain response.

## The Frequency Domain Method
The basic steps in the frequency domain analysis of a circuit is:
1. Characterise the circuit using node or mesh analysis. This will create differential equations or integrodifferentials equations.
2. The forcing functions will be in complex form, so will the responses. These are substituted into the equations and the differentiations and integrations performed. (Note that since we now have exponentials only, the integrals and differentials will also be exponentials.)
3. Each term will contain the factor $e^{st}$. The term $e^{st}$ can be factored out leaving an equation containing the amplitudes and phase angle **ONLY**. Remember, to get back to the time domain, the term $e^{st}$ must be reinserted.
**This process converts from the time domain to the frequency domain.**

# The Laplace Transform
In the real world, most functions are not pure sinusoidal or pure exponential. For example, when square waves or pulses are applied to a circuit, the responses are not related to these forcing functions in a simple way.

For **non** pure sinusoidal or exponential forcing functions we are not able to simply drop terms containing $t$ and work in the frequency domain.

*There is a solution:*
Most functions of time can be decomposed into an infinite summation of exponentials (each with a unique complex frequency in the exponents)
With each exponential we can drop terms containing t and work entirely in the frequency domain (for each exponential).

## Definition
The Laplace Transform is defined as:
$$F(s) = \mathcal{L}[f(t)]=\int^{\infty}_{0}f(t)e^{-st}dt$$

Where $s$ is the **complex frequency:**
$$s = \sigma + j\omega$$
The lower limit is taken to be $0^{-}$ which allows for discontinuities in $f(t)$ at $t=0$
Note that $f(t)$ is not considered for $t<0$, or we can say $f(t) = 0$ for $t<0$

```ad-warning
title: Important
The Laplace Transform converts the time domain function $f(t)$ to a corresponding frequency domain representative, $F(s)$.
```

## Process of using the Transform
![Pasted image 20230525195914](Attachments/Pasted%20image%2020230525195914.png)
**All functions that are PHYSICALLY POSSIBLE have a Laplace Transform**

## Inverse Laplace Transform
The Inverse Laplace Transform is defined by the complex inversion integral:
$$f(t) = \mathcal{L}^{-1}[F(s)] = \frac{1}{2\pi j}\int^{\alpha+j\infty}_{a-j\infty}F(s)e^{st}ds$$
This is a contour integration in the complex plane. We will not be doing these!
**Use the table of transforms dingus**

Since the Inverse Laplace Transform is the inverse of the Laplace Transform, i.e. $F(s)=\mathcal{L}[f(t)]$ and $f(t) = \mathcal{L}^{-1}[F(s)]$

Then:
$$f(t) \leftrightarrow F(s)$$
These comprise a Laplace transform Pair

### Examples
#### Ex1
![Pasted image 20230525200723](Attachments/Pasted%20image%2020230525200723.png)
#### Ex2
![Pasted image 20230525200743](Attachments/Pasted%20image%2020230525200743.png)

## Properties: Linearity
Linearity means that: $a_{1}f_{1}(t) + a_{2}f_{2}(t) \leftrightarrow a_{1}F_{1}(s)+a_{2}F_{2}(s)$
![Pasted image 20230525200936](Attachments/Pasted%20image%2020230525200936.png)

## Differentiation
Now we want to find $F(s) = \mathcal{L}[df(t)/dt]$

We need to use: $\int udv = uv - \int vdu$

OR $F(s) = \int^{\infty}_{0} \frac{df}{dt}e^{-st}dt$

Since we will be integrating by parts, set $u = e^{-st}$ and $dv = (\frac{df}{dt})dt = df$
Then $du = -se^{-st}$ and $v=f(t)$

Integrating by parts we get: $F(s) = e^{-st}f(t) - \int_{0}^{\infty}f(t)*-se^{-st} dt$
Or $F(s) = e^{-st}f(t)|^{\infty}_{0}+s\int^{\infty}_{0}f(t)e^{-st}dt=sF(s)-f(0)$

$$\frac{df}{dt}\leftrightarrow sF(s) - f(0^{-})$$

### Examples
![Pasted image 20230525202242](Attachments/Pasted%20image%2020230525202242.png)

## Table of Laplace Transforms
![Pasted image 20230525202357](Attachments/Pasted%20image%2020230525202357.png)
![Pasted image 20230525202407](Attachments/Pasted%20image%2020230525202407.png)

### Examples
**Ex1**
![Pasted image 20230525202439](Attachments/Pasted%20image%2020230525202439.png)

**Ex2**
![Pasted image 20230525202513](Attachments/Pasted%20image%2020230525202513.png)
![Pasted image 20230525202540](Attachments/Pasted%20image%2020230525202540.png)

# Pulse Functions

## The Step Function
$$
 u(t) = \begin{cases} 
      0 & \textrm{ for $t<0$} \\
      1 & \textrm{for $t>0$} \\
   \end{cases} 
$$
![Pasted image 20230525203050](Attachments/Pasted%20image%2020230525203050.png)
### An Approximation
Because the impulse function is undefined at $t=0$ we need an approximation to allow us to better understand the step function and impulse function for the analysis of pulses.
Consider the linear function:
![Pasted image 20230525203557](Attachments/Pasted%20image%2020230525203557.png)
When $\epsilon = 0$ we have our original step function

## Impulse Function
$$
 \delta(t)=\frac{d}{dt}u(t) = \begin{cases} 
      0 & t<0 \\
      \text{undefined($\infty$)} & t=0 \\
      0 & t>0 \\
   \end{cases} 
$$
![Pasted image 20230525203342](Attachments/Pasted%20image%2020230525203342.png)
### An Approximation
We now differentiate this function $u_{\epsilon}(t)$ and we get:
![Pasted image 20230525203942](Attachments/Pasted%20image%2020230525203942.png)
Note that the area under this curve is **ALWAYS** equal to 1.

Or $\int^{\infty}_{-\infty}\delta_{\epsilon}(t)dt=\int^{\epsilon}_{0} \frac{1}{\epsilon}dt =1$

AND

$\lim_{\epsilon\to 0}\delta_{\epsilon}(t) = \delta (t)$

Thus we can say the impulse function $\delta(t)$ has infinite amplitude, infinitesimal duration BUT an area equal to 1.

### Property of the Impulse Function
An important property of the impulse function is:
$$\int^{+\infty}_{-\infty}f(t)\delta(t)dt=f(0)$$
**Its just the sifting property**

## Delaying a Linear Function
We will need Laplace Transform of other pulse functions
We can delay a function by $\tau$ using the time delay $t-\tau$
For example, consider the function $f(t)=mt+b$
![Pasted image 20230525205309](Attachments/Pasted%20image%2020230525205309.png)
If we wish to delay this function by $\tau$, we now have the equation:

$f(t-\tau)=m(t-\tau)+b$
OR
$f(t-\tau)=mt+(b-m\tau)$

Which has the same slope, but different y intercept
![Pasted image 20230525205451](Attachments/Pasted%20image%2020230525205451.png)

## Using the Step Function
Now consider multiplying the function $f(t)$ by the step function $u(t)$:
$g(t) = f(t)u(t) = (mt+b)u(t)$
![Pasted image 20230525205904](Attachments/Pasted%20image%2020230525205904.png)
Which is the same as $f(t)$ when $t>0$, but is $0 \text{ for }t<0$

If we wish to delay $g(t)$ by $\tau$, we have the function:
$g(t-\tau)=f(t-\tau)u(t-\tau)=[m(t-\tau)+b]u(t-\tau)$
![Pasted image 20230525210209](Attachments/Pasted%20image%2020230525210209.png)

### Now we can create a pulse function
![Pasted image 20230525210246](Attachments/Pasted%20image%2020230525210246.png)

### Subtracting a delayed function
![Pasted image 20230525210408](Attachments/Pasted%20image%2020230525210408.png)

### Subtracting a scaled and delayed step function
![Pasted image 20230525210448](Attachments/Pasted%20image%2020230525210448.png)

### Another Pulse Function
![Pasted image 20230525210526](Attachments/Pasted%20image%2020230525210526.png)

### LT of a Delayed Function
![Pasted image 20230525210607](Attachments/Pasted%20image%2020230525210607.png)

# Inverse Laplace Transform

## Use Linearity
![Pasted image 20230525210643](Attachments/Pasted%20image%2020230525210643.png)

## Ratios of polynomials
![Pasted image 20230525210708](Attachments/Pasted%20image%2020230525210708.png)

## Poles and Zeros
![Pasted image 20230525210732](Attachments/Pasted%20image%2020230525210732.png)

### Example
![Pasted image 20230525210749](Attachments/Pasted%20image%2020230525210749.png)