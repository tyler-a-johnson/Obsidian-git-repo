#ELEC/2070 #Circuits #Communication #UniNotes

[ELEC2070 Week 7 2023 Sinusoidal Steady State - Impedance](Attachments/ELEC2070%20Week%207%202023%20Sinusoidal%20Steady%20State%20-%20Impedance.pdf)

# Time Domain vs Frequency Domain
*Finally, a use for Pythagoras' theorem*

## Frequency Domain
Up until now we have considered:
1. DC circuit analysis $\rightarrow$ Mesh analysis, node equations, equivalent circuit
2. Time domain analysis $\rightarrow$ Energy storage, complete response of RL, RC and RLC circuits
```ad-important
Fourier Transform converts time-domain functions into frequency-domain functions
If the time-domain signal is periodic, the frequency domain is a superposition of sinusoids.
```
![Pasted image 20230419205232](Attachments/Pasted%20image%2020230419205232.png)

## Period Signals
Typical periodic signals in time domain and frequency domain
![Pasted image 20230419205509](Attachments/Pasted%20image%2020230419205509.png)
![Pasted image 20230419205525](Attachments/Pasted%20image%2020230419205525.png)

# AC Circuits and Sinusoidal Functions
Consider a circuit having a sinusoidal input. The complete response will be:
$$v(t) = v_{n}(t) +v_{f}(t)$$

The natural response $v_{n}(t)$ will die out, leaving the forced response $v_{f}(t)$. When all the inputs have the **same** frequency, the forced response will have the **same** frequency.

```ad-important

Overall when the following 2 conditions are fulfilled:
1. All the inputs are sinusoidal and have the same frequency and
2. The circuit is at steady state.

Then all of the currents and voltages are sinusoidal and have the same frequency as the inputs.
```

Traditionally, sinusoidal currents have been called alternating currents (AC) and circuits that satisfy the above conditions are called AC circuits

## Sinusoidal Sources
We are going to examine all what we have covered so far in the unit when the independent forcing function is a sinusoidal function - AC circuits analysis (always in a steady state)
![Pasted image 20230419210741](Attachments/Pasted%20image%2020230419210741.png)
$$v(t) = A*sin(\omega t)$$
From RL, RC and RLC circuit analysis, we know that the forced response part of the complete response will be a sinusoidal with the same frequency!

**Forced responses with sinusoidal input (forcing functions) are easier dealt with in the frequency domain**

## Important parameters relating to a sinusoidal signal
A sinusoid is a periodic function, i.e.: $v(t) = v(t+T)$
$T$ = Period (s)

The general functional form for a sinusoid is: $v(t) = A*sin(\omega t)$

$\omega=2\pi f$  Angular frequency (rad/s)

Where the frequency (in $s^{-1}$) is given by: $f = \frac{1}{T}=\frac{\omega}{2\pi}$ (Hz)

## Time advance, delay and phase angle
Consider the effect of replacing $t$ with $t + t_a$ 
![Pasted image 20230419211933](Attachments/Pasted%20image%2020230419211933.png)
$$v(t +t_{a})=A*sin[\omega(t+t_{a})] = A*sin[\omega t + \omega t_{a}]=A*sin[\omega t + \theta]$$

Where:
$t_{a}$ Is the time advance (delay)
$\omega t + \theta$ Angular frequency in radians ($\theta$ is the phase angle)

Phase angle (radians) is related to time $t_{a}$: $\omega t_{a}=\theta = \frac{2\pi t_a}{T}$

## Phase Angle
Similarly, replacing $t$ with $t-t_d$ produces a sinusoid that is identical to $v(t)$ except that $v(t-t_d)$ is delayed from $v(t)$ by time $t_d$.
$$v(t-  t_{d}) = A\sin [\omega(t-t_{d})]=A\sin [\omega t - \omega t_{d}] = A\sin [\omega t+\theta]$$ 
Where the phase angle is: $\theta = - \frac{2\pi t_{d}}{T}$
```ad-important
1. An advance or delay of a full period leaves a sinusoid unchanged, that is $v(t +- T) = v(t)$. Consequently, an advance by time $t_a$ is equivalent to a delay by time $T-t_a$
2. Similarly, a delay by time $t_d$ is equivalent to an advance by time $T-t_d$
```

# Phasors and Phasor Arithmetic
ANY current or voltage in an AC circuit is a sinusoid at the SAME input frequency. Such a current or voltage is characterised by its amplitude and phase angle.

A **phasor** is a complex number that is used to represent the amplitude and phase angle of a sinusoid.  The relationship between the sinusoid and the phasor is described by:
$$A\cos (\omega t +\theta) \leftrightarrow A \angle\theta$$

```ad-important
1. The sinusoid is represented using the cosine rather than the sine function. **This is a convention.**
2. The phasor is a complex number represented here in **polar** form.
```

*Ampliudes and angles depend on the frequency (even if they are not always shown this way)(this is in the frequency domain)*
$$A(\omega)\cos[\omega t + \theta(\omega)] \leftrightarrow A(\omega)\angle \theta (\omega)$$

Lowercase $i$ and $v$ is used to indicate a sinusoidal current or voltage (often with a subscript) that is a sinusoidal function of time. Sometimes we will write $i_1$ instead of $i_{1}(t)$

We will use bold uppercase **I** and **V** to indicate the corresponding phasor current or voltage with the same subscript.
The phasors are functions of the input frequency. In an AC circuit, the input frequency is fixed and we often shorten $I_{1}(\omega)$ to **$I_{bold_{2}}$**. **I cant do bold equations - just read the subscript**

**The bold capital notation of phasor means it is a vector quantity:**
$$v(t) = A\cos[\omega t +\theta] \leftrightarrow V_{bold}(\omega) = V_{bold} = A\angle \theta$$

## Example
![Pasted image 20230419231500](Attachments/Pasted%20image%2020230419231500.png)
## Important Trig Functions
$\sin(-\theta) = -sin(\theta)$
$\cos(-\theta) = \cos(\theta)$
$\tan(-\theta) = -\tan(\theta)$
![Pasted image 20230419231745](Attachments/Pasted%20image%2020230419231745.png)
## Defining phasors as complex numbers
We can represent our phasor in the complex plane as:
![Pasted image 20230419231940](Attachments/Pasted%20image%2020230419231940.png)
Which has complex coordinates:
![Pasted image 20230419232014](Attachments/Pasted%20image%2020230419232014.png)
**A** is the magnitude and $\theta$ is the angle of the phasor: $A = |V_{bold}|$ and $\theta = \angle V_{bold}$
The phasor can be represented as a complex number: $a = Re(V_{bold})$ and $b = Im(V_{bold})$ 

Hence, we have: $$a+jb = V_{bold} = A \angle \theta$$
### Why complex planes?
Phasor arithmetic can be easily accomplished using the two forms of the phasor. For the arithmetic operations addition and subtraction we use the rectangular form of the phasor **V** and for division and multiplication we use the polar form of the phasor **V**.

## Phasor Angle Direction
A phasor **V** with $Re(V)<0$:
![Pasted image 20230419234827](Attachments/Pasted%20image%2020230419234827.png)
$$V_{bold}= A\angle \theta = a+jb$$
Two important observations: $a = a\angle 0 \degree$ and $jb=b\angle90\degree$
Because $\phi \neq \theta$ we reference the phasor angle ALWAYS from the POSITIVE real axis
Convert from phasor to complex notation: $a = A \cos(\theta), b=A\sin(\theta), A=\sqrt{a^{2}+b^{2}}$

With:
$$
 \theta = \begin{cases} 
      \tan^{-1}(\frac{b}{a}) & a>0 \\
      180\degree - \tan^{-1}(\frac{b}{-a}) & a<0 \\
   \end{cases} 
$$

$1 = 1 \angle 0\degree, j=1\angle 90\degree, -1=1\angle \pm180\degree, -j = 1\angle -90 \degree = 1 \angle 270 \degree$

## Complex Algebra
*Look man, I ain't writing all this shit out*
![Pasted image 20230420000421](Attachments/Pasted%20image%2020230420000421.png)
## The exponential form of a phasor
Euler's formula is given by:
$$e^{j\theta}=\cos(\theta)+j\sin(\theta), \cos(\theta)=\frac{e^{j\theta}+e^{-j\theta}}{2}, \sin(\theta)=\frac{e^{j\theta}-e^{-j\theta}}{2j}$$

If $Ae^{j\phi}=A\cos(\phi)+jA\sin(\phi)$

And $A\angle \phi = A\cos(\phi)+jA\sin(\phi)$

Then:
$$Ae^{j\phi}=A\angle \phi$$
Conversion between polar and exponential form of phasors is immediate.

### Forms of complex voltage or current
![Pasted image 20230420001444](Attachments/Pasted%20image%2020230420001444.png)

## KVL and KCL with complex values

**KVL:**
If a set of sinusoidal voltages $v_{i}(t)$ satisfy KVL for an AC circuit, the corresponding phasor voltages $V_{i}(\omega)$ satisfy the same KVL equation.

**KCL:**
If a set of sinusoidal currents $i_{i}(t)$ satisfy KCL for an AC circuit, the corresponding phasor currents $I_{bold_i}(\omega)$  satisfy the same KCL equation.

# Circuit elements in the time and frequency domains

## Voltage and Current Sources
![Pasted image 20230420003246](Attachments/Pasted%20image%2020230420003246.png)
**Voltage:** $v(t) = V_{m} \cos[\omega t + \theta] \leftrightarrow V_{bold}(\omega)=V_{m}\angle \theta$
**Current:** $i(t) = I_{m} \cos[\omega t + \phi] \leftrightarrow I_{bold}(\omega) = I_{m}\angle\phi$

## Capacitors
![Pasted image 20230420003635](Attachments/Pasted%20image%2020230420003635.png)
**Voltage:** $v_{c}(t) = V_{Cm}\cos[\omega t + \theta] \leftrightarrow V_{bold_{c}}(\omega) = V_{Cm}\angle \theta$
**Current:** $i_{C}(t) = C \frac{\Delta v_{c}(t)}{\Delta t}=-C\omega V_{Cm}\sin[\omega t + \theta]=C\omega V_{Cm}\cos[\omega t + \theta + 90\degree]$

$$I_{bold_{C}}(\omega) = j\omega C V_{bold_{C}}(\omega)$$

```ad-important
Voltage and current are **not** in phase
```

## Inductors
![Pasted image 20230420005254](Attachments/Pasted%20image%2020230420005254.png)

**Current:** $i_{L}(t) = I_{Lm}\cos[\omega t + \phi] \leftrightarrow I_{bold_{L}}(\omega) = I_{Lm}\angle \phi$
**Voltage:** $v_{L}(t) = L \frac{\Delta i_{L}(t)}{\Delta t}=-L\omega I_{Lm}\sin[\omega t + \phi] = L\omega I_{Lm}\cos[\omega t + \phi + 90\degree]$
*Voltage leads current by 90 degrees*

$v_{L}= L \frac{\Delta i_{L}(t)}{\Delta t} \leftrightarrow V_{bold_{L}}(\omega) = L\omega I_{Lm}\angle(\phi + 90\degree)$

$$V_{bold_{L}}(\omega) = jL\omega I_{bold_{L}}(\omega)$$

```ad-important
Voltage and current are **not** in phase
```

## Resistors
![Pasted image 20230420010344](Attachments/Pasted%20image%2020230420010344.png)
**Current:** $i_{R}(t) = I_{Rm}\cos[\omega t + \phi] \leftrightarrow I_{bold_{R}}(\omega)=I_{Rm}\angle \phi$
**Voltage:** $v_{R}(t) = Ri_{R}(t) = RI_{Rm}\cos[\omega t + \phi] \leftrightarrow V_{bold_{R}}(\omega)=RI_{Rm}\angle\phi = RI_{bold_{L}}(\omega)$

$$V_{bold_R}(\omega)=RI_{bold_L}(\omega)$$

```ad-important
Voltage and current **ARE** in phase
```

## Summary

|  Time Domain       | Resistor  | Capacitor | Inductor                         |
| ------- | --------- | --------- | -------------------------------- |
| Voltage | $R i_{R}$ | $v_{C}$   | $L\frac{\Delta i_{L}}{\Delta t}$ |
| Current | $i_R$     | $C\frac{\Delta v_{C}}{\Delta t}$          |                   $i_L$               |

| using s-operators | Resistor  | Capacitor         | Inductor |
| ----------------- | --------- | ----------------- | -------- |
| Voltage           | $R i_{R}$ | $\frac{1}{sC}i_C$ | $sLi_L$  |
| Current           | $i_R$     | $i_C$             | $i_L$    |

| Frequency Domain | Resistor  | Capacitor                | Inductor        |
| ---------------- | --------- | ------------------------ | --------------- |
| Voltage          | $R I_{R}$ | $\frac{1}{j\omega C}I_C$ | $j\omega L I_L$ |
| Current          | $I_R$     | $I_{C}$                  | $I_{L}$         |

# Impedance and Admittance

## Ohms Law in the Frequency Domain

Sinusoidal voltage through a circuit element: $v(t) = V_{m}\cos[\omega t + \theta] \leftrightarrow V_{bold}(\omega) = V_{m}\angle \theta$

The corresponding current: $i(t) = I_{m}\cos[\omega t + \phi] \leftrightarrow I_{bold}(\omega) = I_{m}\angle \phi$

We define Impedance as:
$$Z_{bold}(\omega) = \frac{V_{bold}(\omega)}{I_{bold}(\omega)}=\frac{V_{m}\angle \theta}{I_{m}\angle\phi}=\frac{V_{m}}{I_{m}}\angle(\theta-\phi)$$

We can use impedance with ohms law in the frequency domain:
```ad-important
Ohms Law in the frequency domain: $V_{bold}(\omega)=Z_{bold}(\omega) \cdot I_{bold}(\omega)$
Impedance unit is Ohms $\ohm$
```

**Impedance Vocabulary:**
$$Z_{bold}(\omega) = R_{bold}(\omega) + jX(\omega)$$

Where **R** is the resistance (real part) and **X** is the reactance (imaginary part)

## Ohm's Law
*In terms of admittance*

**Admittance:**
$$Y_{bold}(\omega)=\frac{1}{Z_{bold}(\omega)}=\frac{I_{bold}(\omega)}{V_{bold}(\omega)}$$
```ad-note
Admittance unit is $\frac{1}{\ohm}$ (mho) or Siemens (S)
```

For an AC circuit in the frequency domain, an RLC circuit can be analysed using the impedances since the system is steady state. Remember in DC circuits, capacitors and inductors act like open and short circuits respectively.

## Impedances of Circuit Elements

**Capacitor:**
$$Z_{bold_{C}}(\omega) = \frac{V_{bold_{C}}(\omega)}{I_{bold_{C}}(\omega)}=\frac{1}{j\omega C}\ohm$$

**Inductor:**
$$Z_{bold_{L}}(\omega) = \frac{V_{bold_{L}}(\omega)}{\bar{I}_{L}(\omega)} = j\omega L \ohm$$

**Resistor:**
$$Z_{bold_{R}}(\omega)=\frac{V_{bold_R}}{I_{bold_{R}}}=R \ohm$$

```ad-important
This means that the value of the impedance **CHANGES** with frequency. For every source frequency applied to a circuit, the impedances of **EVERY** element in that circuit will change.
```

# What does Impedance Mean?
![Pasted image 20230425185101](Attachments/Pasted%20image%2020230425185101.png)
Impedance is a property of a circuit element
#todo
- [x] Write a good definition of impedance

# Kirchhoff's Laws
```ad-important
Kirchhoff's laws apply to all time domain voltages and currents.

Therefore they work for sinusoidal voltages and currents.

Hence they work in the frequency domain.
```
![Pasted image 20230425185717](Attachments/Pasted%20image%2020230425185717.png)
![Pasted image 20230425185727](Attachments/Pasted%20image%2020230425185727.png)
**Voltage Division:**
![Pasted image 20230425185759](Attachments/Pasted%20image%2020230425185759.png)

## Current and Voltage Division
![Pasted image 20230425185949](Attachments/Pasted%20image%2020230425185949.png)

## Time VS Frequency Domains
![Pasted image 20230425190248](Attachments/Pasted%20image%2020230425190248.png)
![Pasted image 20230425191243](Attachments/Pasted%20image%2020230425191243.png)
![Pasted image 20230425191305](Attachments/Pasted%20image%2020230425191305.png)

# Dependent sources in the time and frequency domains
![Pasted image 20230425191421](Attachments/Pasted%20image%2020230425191421.png)

### Example
![Pasted image 20230425222251](Attachments/Pasted%20image%2020230425222251.png)

# Node Voltage and Mesh Current Analysis using Phasors

## Node analysis in the frequency domain
- Express element voltages and currents in terms of node voltages.
- Same as DC case, but using **phasors**
- Apply **Kirchhoff's Current Law at each node.**
- Solve simultaneous equations to **find each node voltage.**
![Pasted image 20230425222630](Attachments/Pasted%20image%2020230425222630.png)

## Mesh equations in the frequency domain
- Express element voltages and currents in terms of mesh currents.
- Same as the DC case, but using **phasors.**
- Apply **Kirchhoff's Voltage Law for each current.**
- Solve simultaneous equations to **find each mesh current.**
![Pasted image 20230425222915](Attachments/Pasted%20image%2020230425222915.png)

### Example
![Pasted image 20230425222941](Attachments/Pasted%20image%2020230425222941.png)
![Pasted image 20230425222953](Attachments/Pasted%20image%2020230425222953.png)
![Pasted image 20230425223005](Attachments/Pasted%20image%2020230425223005.png)
### Example 2
![Pasted image 20230425223035](Attachments/Pasted%20image%2020230425223035.png)
![Pasted image 20230425223047](Attachments/Pasted%20image%2020230425223047.png)
