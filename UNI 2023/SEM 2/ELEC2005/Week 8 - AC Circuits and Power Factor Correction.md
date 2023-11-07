---
date: 2023-10-03
tags: 
status: Complete
Relevant Docs:
  - "[wk8 2023_annotated](Attachments/wk8%202023_annotated.pdf)"
Relevant Questions: []
Relevant Notes: []
Practical Docs: 
Relevant Links:
---

# Maths and Distilled Info
---



# Conceptual Info
---

![Pasted image 20231003142416](Attachments/Pasted%20image%2020231003142416.png)
Kirchoff Current and Voltage Laws (KCL and KVL) - quick example
![Pasted image 20231003143505](Attachments/Pasted%20image%2020231003143505.png)
**KCL:** $\sum\limits_{node} \pm i_{j}=0$
**KVL:** $\sum\limits_{loop} \pm v_{k}=0$

$-i_{1} + i_{2}+i_{3}=0$
$-v+v_{1}+v_{2}=0$
$-v_{2}+v_{3}=0$
One per branch

## Power and Energy

**Instantaneous Power:** $p(t) = v(t)i(t)$     Measured in Watts
**Energy:** $W = \int^{t_{2}}_{t_{1}}p(t)dt$      Measured in Joules
**Average Power:** $P = \frac{1}{T} \int_{t_{0}}^{t_{0}+T} p(t) dt$    Measured in Watts

## AC Circuits in the Time Domain
$$v(t) = V_{max}\cos(\omega t + \delta) = \sqrt{2}V\cos(\omega t + \delta)$$
$$i(t) = I_{max}\cos(\omega t + \beta) = \sqrt{2}I\cos(\omega t + \beta)$$

**RMS Value**
$$V = \sqrt{ \frac{1}{T} \int_{0}^{T} v(t)^{2}dt}=\frac{V_{max}}{\sqrt{2}}$$

$\omega = 2 \pi f \rightarrow$ Angular Frequency
$\delta$ Angle of $v(t)$ @ $\omega t = 0$
$\beta$ Angle of $i(t)$ @ $\omega t = 0$
$\phi = \delta - \beta$ Angle difference between v and i

$\phi > 0$    i(t) lags v(t)
$\phi < 0$    i(t) lags v(t)

![Pasted image 20231003145005](Attachments/Pasted%20image%2020231003145005.png)
In this example:
$\delta = \frac{\pi}{3}$ ,  $\beta = \frac{\pi}{6}$,  $\phi =\frac{\pi}{6} rads$

$i(t)$ lags $v(t)$, $I_{max}$ after $V_{max}$



### Single Phase Instantaneous Power
![Pasted image 20231003145316](Attachments/Pasted%20image%2020231003145316.png)
$$p(t)=v(t)i(t)$$
$$p(t) = 2VI\cos(\omega t + \delta)\cos(\omega t + \beta)$$
$$p(t) = VI \{\cos(\delta - \beta)+\cos(2\omega t + \delta + \beta)\}$$
$$p(t) = VI \{  \cos(\delta-\beta) + \cos[2(\omega t + \delta)-(\delta-\beta)] \}$$


**Where the first half is pr(t) and px(t)**
$$p(t) = VI_{R} \{   1+\cos[2(\omega t + \delta) ]\} + VI_{X} \sin[2(\omega t + \delta)]$$

$I_{R}=I\cos(\phi)$ Current Component in phase with $v(t)$
$I_{X}=I\sin(\phi)$ Current Component 90 degrees out of phase from $v(t)$
$\frac{1}{T} \int_{0}^{T} [p_{R}(t)]dt = \text{P Active Power}$, $\frac{1}{T}\int_{0}^{T}[p_{X}(t)]dt = 0$

![Pasted image 20231003150637](Attachments/Pasted%20image%2020231003150637.png)

$$p(t) = VI_{R} \{1+\cos[2(\omega t + \delta)]\} + VI_{X}\sin[2(\omega t + \delta)]$$
![Pasted image 20231003150857](Attachments/Pasted%20image%2020231003150857.png)
- Instantaneous power $p(t)$ pulsates @ $2\omega$.
- Can be positive or negative


## Active Power, Reactive Power, Power Factor
![Pasted image 20231003151116](Attachments/Pasted%20image%2020231003151116.png)

**Definitions:**
- $P = VI_{R}=VI \cos(\phi)$ **REAL/ACTIVE Power** (W)
- $Q = VI_{X}=VI\sin(\phi)$ **Reactive Power** (VAr)
- $\phi = \delta - \beta$  phase angle difference between **v** and **i** respectively

$$\cos (\phi)\text{ Is the power factor}$$
### Example: Purely Resistive Load

![Pasted image 20231003153000](Attachments/Pasted%20image%2020231003153000.png)
![Pasted image 20231003153027](Attachments/Pasted%20image%2020231003153027.png)
$$v(t) = \sqrt{2}V \cos(\omega t + \delta)$$
$$i(t) = \frac{v(t)}{R}$$
$$i(t) = \sqrt{2} \frac{V}{R} \cos(\omega t +\delta)$$
$$P = \frac{V^2}{R}$$


### Example: Purely Inductive Load
![Pasted image 20231003153328](Attachments/Pasted%20image%2020231003153328.png)
![Pasted image 20231003153337](Attachments/Pasted%20image%2020231003153337.png)
$$v(t) = \sqrt{2}V \cos(\omega t + \delta)$$
$$v(t) = L \frac{di(t)}{dt}$$
$$i(t) = \frac{1}{L}\int^{t}_{0}v(t) dt$$

$$i(t) = \frac{\sqrt{2}V}{\omega L}\cos(\omega t + \delta - \frac{\pi}{2})$$
$$\phi = \frac{\pi}{2}$$


$$P = 0$$
$$Q = \frac{V^{2}}{\omega L}\sin(\frac{\pi}{2})=\frac{V^{2}}{\omega L}$$


### Example: Purely Capacitive Load
![Pasted image 20231003153920](Attachments/Pasted%20image%2020231003153920.png)
![200](Attachments/Pasted%20image%2020231008201052.png)
$$v(t) = \sqrt{2}V \cos(\omega t + \delta)$$
$$i(t) = C \frac{dv(t)}{dt}$$

```ad-note
title: Sine and Cosine
$$\sin(\omega t) = \cos(\omega t - \frac{\pi}{2})$$
![accircuits-acp33a](Attachments/accircuits-acp33a.png)
$$\cos(\omega t) = \sin(\omega t + \frac{\pi}{2})$$

```



$$i(t) = \sqrt{2} \omega CV \cos(\omega t + \delta + \frac{\pi}{2})$$
Where $\phi = -\frac{\pi}{2}$

$$Q = \omega CV^{2}\sin(- \frac{\pi}{2})=-\omega CV^{2}$$


## Phasors

**Assumption**
- Constant frequency, i.e. $\omega = 2 \pi f$ is fixed

```ad-note
**Reminder**: $V$ is $V_{rms}$.

$\sqrt{2}V$ is $V_{max}$

```


Cosinusoidal quantity quantity x(t) (Voltage, current, whatever) characterised by:
- Maximum value $X_{M}$
- Phase angle $\delta$

$$x(t) = X_{M}\cos(\omega t + \delta)$$
$$= \sqrt{2} X \cos (\omega t + \delta)$$

Where: $X = \frac{X_{M}}{\sqrt{2}}$ = RMS, effective value.

Using [Euler's Identity](Euler's%20Identity) $e^{j \phi} = \cos \phi + j \sin \phi$

$$x(t) = Re[X_{M}e^{j(\omega t + \delta)}]=Re[\sqrt{2} (Xe^{j \delta})e^{j \omega t}]$$

![Pasted image 20231003155517](Attachments/Pasted%20image%2020231003155517.png)


### Phasor Representation

**Given**
$$v(t) = \sqrt{2}V \cos(\omega t + \delta)$$

With $\omega = 1$
$\delta=40\degree$
$\sqrt{2}V = 4V$

Phasor Diagram: **X - Axis = Real, Y - Axis = Imaginary Axis**
![Pasted image 20231003160346](Attachments/Pasted%20image%2020231003160346.png)
![Pasted image 20231003160414](Attachments/Pasted%20image%2020231003160414.png)




![Pasted image 20231003160602](Attachments/Pasted%20image%2020231003160602.png)
- Counter clockwise rotating vector $\sqrt{2}(Ve^{j \delta})e^{j \omega t}$ projection on the x-axis is $v(t) = \sqrt{2}V \cos(\omega t + \delta)$ Therefore $v(t)=Re[\sqrt{2}(Ve^{j \delta})e^{j \omega t}]$
- $\bar{V} = Ve^{j \omega}$ is defined as the RMS phasor, its a vector **fixed** at the angle of rotating vector ($\delta$) when t = 0
- *V rms value is the magnitude of the RMS phasor $V=\frac{V_{max}}{\sqrt{2}}$

![Pasted image 20231003161125](Attachments/Pasted%20image%2020231003161125.png)
![Pasted image 20231003161238](Attachments/Pasted%20image%2020231003161238.png)
$$\bar{V}=Ve^{j \delta} \rightarrow v(t) = Re[\sqrt{2}(Ve^{j \delta})e^{j \omega t}]$$
$$= Re[\sqrt{2}Ve^{j(\omega t + \delta)}]$$
$$=Re[\sqrt{2}V(\cos(\omega t + \delta) + j \sin(\omega t + \delta)]$$


$$= \sqrt{2}V \cos(\omega t + \delta)$$

```ad-important
We use $V = \frac{V_{max}}{\sqrt{2}}$. This may be different to other units, and is a convention in electrical engineering.
```

### Phasor Operations
![Pasted image 20231003175819](Attachments/Pasted%20image%2020231003175819.png)
**Polar Form**
Coordinates ($V, \delta$) Useful for multiplication and division
$$\bar{X} = \bar{Y}\bar{Z} = Ye^{j \alpha} Ze^{j \beta}$$
$$=(YZ)e^{j(\alpha+\beta)}$$
$$\bar{X} = \frac{\bar{Y}}{\bar{Z}}= \frac{Ye^{j \alpha}}{Ze^{j \beta}}= (\frac{Y}{Z})e^{j(\alpha-\beta)}$$

**Rectangular Form**
Coordinates (Re$[\bar{V}]$, Im$[\bar{V}])$
Useful for addition and subtraction:
$$\bar{Y}=a+jb$$
$$\bar{Z}=c+jd$$
$$\bar{X}=\bar{Y}\pm \bar{Z}$$
$$= (a \pm c) + j(b\pm d)$$


Given: $v(t) = \sqrt{2}V\cos(\omega t + \delta)$
![Pasted image 20231003180754](Attachments/Pasted%20image%2020231003180754.png)
$$\frac{dv(t)}{dt} \rightarrow j \omega V e^{j \omega}$$

Derivation in the time domain becomes multiplication by jw in the frequency domain.

Same can be done for integration.
![Pasted image 20231003180957](Attachments/Pasted%20image%2020231003180957.png)
$$\int v(t) dt \rightarrow \frac{V}{j \omega}e^{j \delta}$$

![Pasted image 20231003181150](Attachments/Pasted%20image%2020231003181150.png)
![Pasted image 20231003181337](Attachments/Pasted%20image%2020231003181337.png)
**Resistor** - Has no effect on phase (In phase)
**Inductor** - Current *Lags* Voltage
**Capacitor** - Current *Leads* Voltage

![Pasted image 20231003181643](Attachments/Pasted%20image%2020231003181643.png)
**Impedance**: $Z = \frac{\bar{V}}{\bar{I}}$

**Admittance**: $Y = \frac{\bar{I}}{\bar{V}}$

- Ohms law can be written in the RMS phasor domain for any passive circuit element as: $\bar{V} = Z\bar{I}$
- Series and parallel combination of passive elements imply that the impedance has a real and imaginary component.

$Z = R \pm jX$  and  $Y = G \pm jB$

$Z = |Z|e^{j \phi}$    $|Z| = \sqrt{R^{2}+X^{2}}$     $\tan(\phi)=\frac{X}{R}$

#### Example
Using RMS phasor approach, determine the time domain expression for the current in a circuit by the differential equation:
![Pasted image 20231003182407](Attachments/Pasted%20image%2020231003182407.png)
![Pasted image 20231003182502](Attachments/Pasted%20image%2020231003182502.png)


### Series and Parallel
![Pasted image 20231003182836](Attachments/Pasted%20image%2020231003182836.png)

Power definition in the time-domain **instantaneous power**
$$p(t) = v(t)i(t)$$

Power definition in the phasor domain **complex power**
$$\bar{S} = \bar{V}\bar{I}* = VIe^{j(\delta-\beta)}=VI\cos(\delta-\beta)+jVI\sin(\delta-\beta)=P+jQ$$

**Where:**
$\bar{S}=Ve^{j \delta}$ and $\bar{I}=Ie^{j \beta}$ are the voltage and current rms phasors, 
and $\bar{I}*$ is the complex conjugate of $\bar{I}$ ($\bar{I}* = Ie^{-j \beta}$)

![Pasted image 20231003183637](Attachments/Pasted%20image%2020231003183637.png)

## Complex Power: Definition and Power Triangle

**Resistor:**
$$\bar{S}_{R}=\bar{V}\bar{I}_{R}* = Ve^{j \delta} \frac{V}{R}e^{-j \delta} = \frac{V^{2}}{R}$$

**Inductor:**
$$\bar{S}_{L}=\bar{V}\bar{I}_{L}* = Ve^{j \delta} \frac{V}{\omega L}e^{-j(\delta - \frac{\pi}{2})}=j \frac{V^{2}}{\omega L} = j \frac{V^{2}}{X_{L}}$$

**Capacitor:**
$$\bar{S}_{C}=\bar{V}\bar{I}_{C}* = Ve^{j \delta} V \omega C e^{-j(\delta+ \frac{\pi}{2})}= -j \omega CV^{2} = -j \frac{V^{2}}{X_{C}}$$


For a general **(Passive) RLC circuit** with the load convention: **P > 0,** *Q > 0 for inductive loads* (Q is absorbed) *Q < 0 for capacitive loads* (Q is sourced)
![Pasted image 20231003190058](Attachments/Pasted%20image%2020231003190058.png)

$$S = \sqrt{P^{2}+ Q^{2}}$$
$$\delta-\beta=\tan^{-1}(\frac{Q}{P})$$
$$Q = P \tan (\delta-\beta)$$

**Power Factor**
$$p.f. = \cos(\delta-\beta) = \frac{P}{S} = \frac{P}{\sqrt{P^{2}+Q^{2}}}$$
Sometimes $\theta$ is used instead of $\phi$.

## Power Factor Correction
We can correct the power factor by altering the load as seen by the voltage source $\bar{V}$.
![Pasted image 20231003190839](Attachments/Pasted%20image%2020231003190839.png)
For (a). Without capacitor, angle between total load current and voltage is $\theta_1$
For (b). With capacitor, angle between total load current and voltage is $\theta_{2}<\theta_{1}$

**Case A**
$$P = S_{1}\cos(\theta_1)$$
$$Q_{1}= S_{1}\sin\theta_{1}= P \tan \theta_1$$

**Case B**
$$Q_{2}=P \tan \theta_{2}$$
$$|Q_{C}| = Q_{1}-Q_{2}=P(\tan \theta_{1} - \tan \theta_{2})$$
$$|Q_{C}| = \omega CV^{2}$$

```ad-important
$$C = \frac{|Q_{C}|}{\omega V^{2}}= \frac{P(\tan \theta_{1} - \tan \theta_{2})}{\omega V^{2}}$$

```

### Example
![Pasted image 20231003191751](Attachments/Pasted%20image%2020231003191751.png)

![Pasted image 20231003191822](Attachments/Pasted%20image%2020231003191822.png)
![Pasted image 20231003191841](Attachments/Pasted%20image%2020231003191841.png)

### Capacitive Load Example
![Pasted image 20231003192051](Attachments/Pasted%20image%2020231003192051.png)
If the load is capacitive, and we want to increase power factor, then a shunt inductor can be used.

$$L = \frac{V^{2}}{\omega Q_{L}} = \frac{V^{2}}{\omega(Q_{1}-Q_{2})}$$

![Pasted image 20231003192249](Attachments/Pasted%20image%2020231003192249.png)