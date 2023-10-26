#ELEC/2070 #Circuits #Communication/SignalProcessing #UniNotes

**Slides:**
[ELEC2070 Week 9 2023 Complex power and complex frequency](Attachments/ELEC2070%20Week%209%202023%20Complex%20power%20and%20complex%20frequency.pdf)

```ad-attention
title: REALLY IMPORTANT
Variables paired with a * means they are complex conjugates
```


# Power

## Instantaneous power: DC + Abrupt Change

**Instantaneous power in a resistor:**
$p(t)=v(t)i(t)=i^{2}(t)R= \frac{v^{2}(t)}{R}$

**Instantaneous power in an inductor:**
$p(t)=v(t)i(t)=Li(t) \frac{di(t)}{dt}=\frac{1}{L}v(t) \int^{t}_{-\infty}v(t')dt'$

**Instantaneous power in a capacitor:**
$p(t)=v(t)i(t)=Cv(t) \frac{dv(t)}{dt}=\frac{1}{C}i(t) \int^{t}_{-\infty}i(t')dt'$

![Pasted image 20230526113413](Attachments/Pasted%20image%2020230526113413.png)

![Pasted image 20230526113450](Attachments/Pasted%20image%2020230526113450.png)

### Instantaneous Power: Graphed
![Pasted image 20230526113519](Attachments/Pasted%20image%2020230526113519.png)
**Instantaneous power is conserved in a circuit**

### Instantaneous power in the time domain: AC example
![Pasted image 20230526113631](Attachments/Pasted%20image%2020230526113631.png)


## Average Power Received by Ideal Components
 ```ad-note
title: Average Power
$P =\frac{1}{T}\int^{t_{0}+T}_{t_{0}} p(t) dt (W)$
```

**Instantaneous AC Power**
$$p(t) = \frac{V_{m}I_{m}}{2}[\cos(\theta_{V}-\theta_{I})+\cos(\theta_{V}+\theta_{I})]$$

**Average AC Power:**
$$P = \frac{V_{m}I_{m}}{2}\cos(\theta_{V}-\theta_{I})$$
![Pasted image 20230526114648](Attachments/Pasted%20image%2020230526114648.png)

### A Problem
![Pasted image 20230526114845](Attachments/Pasted%20image%2020230526114845.png)
![Pasted image 20230526114903](Attachments/Pasted%20image%2020230526114903.png)

### Another Problem
![Pasted image 20230526115000](Attachments/Pasted%20image%2020230526115000.png)
![Pasted image 20230526115014](Attachments/Pasted%20image%2020230526115014.png)
![Pasted image 20230526115027](Attachments/Pasted%20image%2020230526115027.png)

# Apparent Power and Power Factor

## Apparent Power
Recall that average power for sinusoidal forcing functions is:
$$P = \frac{1}{2}V_{m}I_{m}\cos(\theta-\phi)$$
Where: $\theta$ = Angle of voltage
Where: $\phi$ = Angle of Current

Or using effective values: $P = V_{eff}I_{eff}\cos(\theta - \phi)$

The **apparent power** is the equivalent DC average power and is given by:
$$\frac{1}{2}V_{m}I_{m} \text{ Or }V_{eff}I_{eff}$$
Where our units are VA (Volt Amps)

The ratio of the real or average power to the apparent power is the **power factor**, PF:
$$PF = \frac{\text{average power}}{\text{apparent power}} = \frac{P}{V_{eff}I_{eff}}$$

For the sinusoidal case, this is just:
$$\cos(\theta_{V}-\theta_{I})\text{ Or }\cos(\theta - \phi)$$

## Power Factor
For a purely resistive load, the voltage and current are in phase - power factor (PF) is 1
Thus the average power and apparent power are **EQUAL**

(Note a network with inductors and capacitors may have PF = 1 if the element values and
operating frequency are carefully chosen to create and input impedance with zero phase
angle.)

Purely reactive load: PF = 0
In between, e.g., PF = 0.5 means $\theta_{V}-\theta_{I}=60\degree \text{ or }-60\degree$
$\theta_{V}-\theta_{I}=60$ means an inductive load (voltage LEADS the current)
$\theta_{V}-\theta_{I}=-60$ & means an capacitive load (current LEADS the voltage)

### Example
![Pasted image 20230526120947](Attachments/Pasted%20image%2020230526120947.png)
![Pasted image 20230526121000](Attachments/Pasted%20image%2020230526121000.png)
![Pasted image 20230526121019](Attachments/Pasted%20image%2020230526121019.png)
![Pasted image 20230526121048](Attachments/Pasted%20image%2020230526121048.png)

# Complex Power
In the **frequency domain** the current and voltage are in general given by:
$$I(\omega)=I_{m}\angle \theta_{I}\text{  And  }V(\omega)=V_{m}\angle\theta_{V}$$

The **complex power** delivered to the element is defined (in polar form) as:
$$S = \frac{VI*}{2} = \frac{(V_{m}\angle\theta_{V})(I_{m}\angle-\theta_{I})}{2}=\frac{V_{m}I_{m}}{2}\angle\theta_{V}-\theta_{I}$$

Alternatively: $S = V_{eff}I_{eff}*$

The **apparent power** is the magnitude of the complex power: $|S| = \frac{V_{m}I_{m}}{2}$

## Why do we care about complex power?
*The complex power allows us to calculate the contributions to the total power in a clean and precise way.*

Converting the complex power from polar form to rectangular we get: $S = P+jQ$
$$S = \frac{V_{m}I_{m}}{2}\cos(\theta_{V}-\theta_{I})+j \frac{V_{m}I_{m}}{2}\sin(\theta_{V} - \theta_I)$$

Therefore:
$$P = \frac{V_{m}I_{m}}{2}\cos(\theta_{V} - \theta_{I})$$
$$Q = \frac{V_{m}I_{m}}{2}\sin(\theta_{V}- \theta_I)$$

## The power triangle 
![Pasted image 20230526123028](Attachments/Pasted%20image%2020230526123028.png)

### Reactive power and VA
The dimensions of reactive power are the same as the real power P, the complex power S
and the apparent power $|S|$. To avoid confusion, with these other quantities, the unit of
Q is volt-ampere-reactive.

The physical interpretation of reactive power is the time rate of energy flow back and
forth between the source and the reactive components of the load. These components
alternatively charge and discharge, which leads to current flow from the source and to
the source respectively.

## Complex Power WRT Impedance
**Units:**
Complex Power: VA
Average Power: W
Reactive Power: VAR (R means reactive)
![Pasted image 20230526123636](Attachments/Pasted%20image%2020230526123636.png)
![Pasted image 20230526123658](Attachments/Pasted%20image%2020230526123658.png)
![Pasted image 20230526123813](Attachments/Pasted%20image%2020230526123813.png)

**Complex power is conserved in a circuit**
$$\sum\limits_{\text{All elements}} \frac{V_{k}I_{k}}{2}=0$$

**Average power is conserved in a circuit**
$$\sum\limits_{\text{All elements}} Re(\frac{V_{k}I_{k}}{2})=0$$

**Reactive power is conserved in a circuit**
$$\sum\limits_{\text{All elements}} Im(\frac{V_{k}I_{k}}{2})=0$$

# Maximum Power Transfer
![Pasted image 20230526124414](Attachments/Pasted%20image%2020230526124414.png)
The complex power delivered to the load:
$$S_{L}= \frac{V_{L}*I_{L}}{2}$$

We need to calculate $V_L$ and $I_{L}$ first, then calculate $S_{L}$:
$$I_{L}= \frac{V_t}{(Z_{t}+ Z_{load})}$$
$$V_{L}= Z_{load}*I_L$$
$$S_{L}= \frac{Z_{load}*I_{L}*I_{L}}{2}= \frac{Z_{load}*|I_L|^{2}}{2}$$

```ad-bug
title: Useful in lab/practice
$S_{L}= \frac{V_{L}*V_{L}}{2*Z_{load}}= \frac{|V_{L}|^2}{2*Z_{load}}$
```

## Average Power Delivered to Load
![Pasted image 20230526125338](Attachments/Pasted%20image%2020230526125338.png)

The **complex** power transferred to the load:
$$S_{L}= \frac{Z_{load}*|I_{L}|^2}{2}$$

The **average** power transferred to the load:
$$P_{L}=Re\{S_{L}\}= \frac{Re\{Z_{load}\}*|I_{L}|^{2}}{2} = \frac{|V_{L}|^{2}}{2Re\{Z_{load}\}}$$

## Maximum AVERAGE power transfer
![Pasted image 20230526125819](Attachments/Pasted%20image%2020230526125819.png)
```ad-important
The average power transferred from a fixed source circuit [with a Thevenin equivalent] to a load is maximum when: 

$Z_{load} = Z_{t}$
```
$$Z_{t}= R_{t}+ jX_{t}$$
$$Z_{Load}= R_{t}- jX_{t}$$
$$Z_{t}+Z_{load} = 2R_{t}$$
**Note**: This is the same case for DC power transfer

When $Z_{load}=Z_t$ The total impedance seen by the Thevenin source is purely resistive (the load reactance cancels the reactance of the Thevenin impedance)

### Theorem for the sinusoidal steady state
An independent voltage source in series with an impedance $Z_{th}$ or an independent current source in parallel with an impedance $Z_{th}$ delivers a **maximum average power** to that load impedance $Z_L$ which is the conjugate of $Z_{th}$ or $Z_{L}=Z_{th}$

**Proof:**
![Pasted image 20230526131352](Attachments/Pasted%20image%2020230526131352.png)

## Maximum Average Power Transfer
![Pasted image 20230526131448](Attachments/Pasted%20image%2020230526131448.png)
$Z_{load} = Z_{t}$
$Z_{t} = R_{t}+jX_{t}$
$Z_{load}=R_{t}-jX_{t}$
$Z_{t}+Z_{load} = 2R_{t}$
$S_{L}= \frac{Z_{load}*|I_{L}|^2}{2}$

$I_{L}= \frac{V_{t}}{2R_{t}}$
$V_{L}=(R_{t}-jX_{t})I_{L}$

$$P_{L,max}=\frac{R_{t}*|I_{L}|^{2}}{2}= \frac{|V_{t}|^{2}}{8R_{t}}$$
*This is the maximum available average power from the source circuit*

### Example
![Pasted image 20230526132144](Attachments/Pasted%20image%2020230526132144.png)

### Summary of AC power terms
![Pasted image 20230526132220](Attachments/Pasted%20image%2020230526132220.png)

# Complex Frequency

## The Damped Sinusoid 
Consider the damped sinusoidal voltage forcing function (which is real):
$$v(t) = V_{m}e^{\sigma t}\cos(\omega t + \theta)$$
Normally $\sigma$ is negative (damped) but is can be positive (feedback loop)

The equation is very important, it captures all the forcing functions that we have been studying into ONE function
1. $\sigma = \omega = 0$ We have a DC forcing function for the voltage.
2. $\sigma = 0$ Now we have a sinusoidal forcing function for the voltage.
3. $\omega = 0$ Now we have an exponential forcing function for the voltage.
This function captures all the important functions of time for both current and voltage.
The variable $\sigma$ has the units frequency (since it multiplies with $t$ to give a dimensionless number).

### A mathematical definition
A general definition:
$$f(t) = Ke^{st}$$
Here K and S are complex numbers and $s = (\sigma + j\omega)$ is known as the complex frequency (since it multiplies with $t$ to give a dimensionless value - therefore it has a unit of $s^{-1}$).

1. The complex frequency of a DC voltage or current is s = 0
2. The complex frequency of an exponential voltage or current is $s = \sigma$  where $(\omega = 0)$
3. the complex frequency of a sinusoidal voltage or current could be $s = j \omega$ where $\sigma = 0$

For the sinusoidal case:

## The Sinusoidal Case
Let us look at the sinusoidal case more closely
![Pasted image 20230526133824](Attachments/Pasted%20image%2020230526133824.png)
Sinusoidal voltage is given by:
$$v(t) = V_{m}\cos(\omega t + \theta)$$
Using Euler's Identity, this function can be converted to exponential functions only:
$$v(t) = \frac{1}{2} [e^{\omega t + \theta}+e^{-j(\omega t + \theta)}]$$
$$=(\frac{1}{2}V_{m}e^{j\theta})e^{j\omega t}+ (\frac{1}{2}V_{m}e^{-j\theta})e^{-j\omega t} $$

This latter equation can be put into our general form
![Pasted image 20230526134111](Attachments/Pasted%20image%2020230526134111.png)
![Pasted image 20230526134155](Attachments/Pasted%20image%2020230526134155.png)
*Now we are ready to create the general form of the exponentially damped sinusoid*
![Pasted image 20230526134313](Attachments/Pasted%20image%2020230526134313.png)

## Understanding the Complex Frequency S
![Pasted image 20230526134403](Attachments/Pasted%20image%2020230526134403.png)
*Complex conjugates can create real values.*

We may identify either of the complex frequencies with a sinusoidal voltage but in practice, we don't always include both complex conjugates in our analysis. It is just understood that they are both involved.

## Physical nature of the complex frequency
So now our real sinusoidal forcing function is:
$$v(t) = K_{1}e^{s_{1}t}+K_{2}e^{s_{2}t}$$
Where:
$s_{2} = s_{1}*$
$K_{2}=K_{1}*$

For example:
$$s_{1}=j10\text{ and } K_{1}=6-j8, \rightarrow K_{1}=\frac{1}{2}V_{m}e^{j\theta}=10\angle-53.1\degree$$

We get the forcing function, the **real** sinusoid: $20\cos(10t-53.1\degree)$

*In general, the complex frequency s is associated with a real function when it is
accompanied by its complex conjugate. The complex frequency contains all the
parameters we need to understand the time behaviour of the voltage*

*The specific phase and amplitude of a general exponentially damped sinusoid is
contained in K and its complex conjugate. These are the NON time dependent
parameters.*

## Features of the Complex Frequency
1. The complex frequency describes an exponentially varying sinusoidal function
2. the real part of s is associated with the exponential variation
	- If it is negative, the sinusoid decays as t increases
	- If it is positive, the sinusoid increases with t
	- if it is zero, the sinusoidal amplitude is constant
3. The larger the magnitude of the real part of s, the greater the rate of exponential decrease or increase
4. The imaginary part of s describes the sinusoidal part of the variation
5. A large value for the imaginary part of s indicates a more rapidly varying sinusoidal function of time.

## The Complex Frequency S
It is customary to use the letter $\sigma$ to designate the real part of s and $\omega$ (NOT $j\omega$) to designate the imaginary part.
$$s = \sigma + j\omega$$
The parts of the complex frequency are:
1. $\sigma$ is the neper frequency (in nepers per seconds)
2. $\omega$ is the angular frequency (in radians per second)
3. $f=\frac{\omega}{2\pi}$ is the cycle frequency'
4. The complex frequency s is measured in complex nepers per second or complex radians per second

### Example
![Pasted image 20230526141856](Attachments/Pasted%20image%2020230526141856.png)

# A Final Note
When are the Thevenin and Norton equivalent circuits appropriate?
![Pasted image 20230526142229](Attachments/Pasted%20image%2020230526142229.png)
![Pasted image 20230526142250](Attachments/Pasted%20image%2020230526142250.png)