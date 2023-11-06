---
date: 2023-11-02
tags: []
status: Incomplete
Relevant Docs: []
Relevant Questions: []
Relevant Notes: []
Practical Docs: 
Relevant Links:
---

# Prereq and Basics

## Transistor Equivalent Circuit
![Pasted image 20230725151706](Attachments/Pasted%20image%2020230725151706.png)
## Simple Voltage Amplifier
![Pasted image 20230725211321](Attachments/Pasted%20image%2020230725211321.png)


## Thevenin's Theorem
"Any combination of voltage sources and resistors with two terminals can be replaced by a single voltage source and a single series resistor."
![Pasted image 20230725154154](Attachments/Pasted%20image%2020230725154154.png)

We can find this equivalent by:
1. Calculate the **open circuit voltage** and the **short-circuit current** of Circuit A.
2. Then calculate Thevenin resistance as: $R_{t}=\frac{v_{oc}}{i_{sc}}$
(Can be done with $R_{t}$ and $v_{oc}$ only

## Amplifiers
Signal gain can be achieved and expressed through voltage, current, or power.
![Pasted image 20230725161242](Attachments/Pasted%20image%2020230725161242.png)
Gain is a ratio, expressed as dimensionless, or V/V, A/A etc. Engineers often express gain logarithmically.
### Saturation
![Pasted image 20230725210004](Attachments/Pasted%20image%2020230725210004.png)



# Diodes
- Fabricated using a semiconductor with a P-N Junction
- Applications:
	- Power conversion
	- Over voltage protection
	- Detectors
	- Signal Generation
![Pasted image 20230805083946](Attachments/Pasted%20image%2020230805083946.png)
## Shockley Equation
![Pasted image 20230805111503](Attachments/Pasted%20image%2020230805111503.png)
*Shockley Equation (Forward bias)*
$$i_{D} = I_{s}(e^{v_{D}/nV_{r}}-1)$$
$$i_{D} = I_{s}[\exp{\frac{v_{D}}{nV_{T}}}-1]$$

**Where:**
- $I_{s} =$ Saturation current. Its value depends on the area of the diode and the temp. Doubling for each $5\degree$ increase for silicon diodes. $~10^{-14}$ A at 300K
- $n =$ Emission coefficient (ideality factor) $1 < n < 2$
- $V_{T} =$ Thermal voltage $V_{T =}kT/q$ 
	- Temperature in K = 273 + Temp in C
- $k = 1.38*10^{-23}$ Joules/Kelvin (**Boltzmann's Constant**)
- $q = 1.60 * 10^{-19}$ Coulomb (Charge of an electron)

There is also an approximate Shockley (for forward bias more than several tenths of a volt)
$$i_{D} \approx I_{s}\exp({\frac{v_{D}}{nV_{T}}})$$

## Constant Voltage Drop Model
- Only accounts for the forward turn on voltage
- Does not account for the slope or reverse breakdown.
![Pasted image 20230805091641](Attachments/Pasted%20image%2020230805091641.png)
For silicon diodes, typical $V_{f} =~ 0.7V$


## Linear Model (Not Accurate)
We can also model our diode using a simple linear equation. Although this is not a highly accurate model of a diode.
![](Attachments/Pasted%20image%2020231102185558.png)
From this we derive:
$$i = \frac{1}{R_{a}}(v-V_{a})+ \frac{-V_{a}}{R_a}$$

We can improve this using piecewise functions to generalize non-linearity
![Pasted image 20230805092838](Attachments/Pasted%20image%2020230805092838.png)
*This is our graphical model. Good for load-line analysis*


## Analysis

### Assumed States
*In a circuit with a number of diodes n*
- Assume a state for each diode (ON/OFF)(Closed/Open)
- n diodes will require $2^{n}$ possible combinations
- **Calculate currents of ON diodes and voltages of OFF diodes**
- Check to see of calculations are consistent with assumptions
- If yes, assumption works. *If no, return to step 1 and make a new assumption*.

### Load Line Analysis
There's no straightforward way to solve the Shockley Equation with Kirchhoff's Voltage Law ($V_{SS} = Ri_{D}+v_{D}$)
We use load-line analysis graphically. Since $v_{D}$ is upside down here, what this means is that when there is no reverse bias, $i_{D} = \frac{V_{ss}}{R}$. When full reverse bias there is no current.
$i_{D} =\frac{V_{SS}-v_{D}}{R}$
![Pasted image 20230805093536](Attachments/Pasted%20image%2020230805093536.png)
$V_{SS}= 2V$
$R = 1k\ohm$ 

*We also need these to find the operating point:*
$V_{DQ} \approx 0.7V$ (constant drop)
$I_{DQ} \approx 1.3mA$

#### Load Line Analysis of Complex Circuits
![Pasted image 20230805103114](Attachments/Pasted%20image%2020230805103114.png)

### Small Signal Analysis (AC Signals)
- We applied *DC voltages (or currents) to the diodes and found the operating points (Q point)*
- Q stands for **quiescent** i.e. quiet or no-signal point
![Pasted image 20230801163315](Attachments/Pasted%20image%2020230801163315.png)
*If the Q point is known (using the nonlinear diode characteristic), the linear AC analysis method can be applied to find the response to small **(AC) signals.**
![Pasted image 20230801163907](Attachments/Pasted%20image%2020230801163907.png)
$$i_{D}(t) = I_{DQ}+i_{d}(t)$$
$$i_{d}(t) = I_{d}\cos(2\pi ft - 90\degree)$$


![Pasted image 20230805111017](Attachments/Pasted%20image%2020230805111017.png)




## Zener Diode
Zener diodes are designed to work at the reverse breakdown region. These diodes use this as expected behaviour.
![](Attachments/Pasted%20image%2020231102191003.png)
*Commonly used for voltage regulator circuits - constant output from variable supply.*
5V change in the supply voltage results in only a 0.5V change the regulated output voltage.

## Rectifiers and Regulation

### Half Wave
![](Attachments/Pasted%20image%2020231102192507.png)
*We can use the 0.7V drop model or ideal diode model without losing much accuracy because voltage levels >> 0.7V*
We can add a capacitor to smooth the output
![Pasted image 20230805104757](Attachments/Pasted%20image%2020230805104757.png)
$$C \approx \frac{I_L T}{V_{r}}$$
**Where:**
$I_{L} =$ Average load current
$T =$ Period of AC voltage
$V_{r} =$ Ripple voltage

*Chose diode to withstand Peak Inverse Voltage*
$PIV \approx 2V_{m}$
PIV needs to be less than the breakdown voltage of the diode.

### Full-Wave Rectifier
![Pasted image 20230805105337](Attachments/Pasted%20image%2020230805105337.png)

**Diode Bridge Full-Wave Rectifier**
![Pasted image 20230805105419](Attachments/Pasted%20image%2020230805105419.png)

### Diode Regulator
![](Attachments/Pasted%20image%2020231102193318.png)
Using 0.7V Drop Model, $V_{O} \approx 2.1V$

### Wave Shaping Circuits
![](Attachments/Pasted%20image%2020231102194126.png)
Similarly with input signal exceeding gain in an amp, clipping will occur here

# BJTs
![Pasted image 20230812104002](Attachments/Pasted%20image%2020230812104002.png)
The Arrow shows the current of the controlling pn-Junction
- Arrow from Emitter = PNP
- Arrow TO Emitter = NPN

## Modes of Operation
![Pasted image 20230812104512](Attachments/Pasted%20image%2020230812104512.png)
*Operating mode depends on DC biasing or large signal voltages and currents:*
- **Active** mode - Used for AC amplification
- **Cutoff** and *saturation* modes - used for switching
- BJT is not symmetrical - inverse region is not normally used.

### Active Region
![Pasted image 20230812122553](Attachments/Pasted%20image%2020230812122553.png)
Using Kirchhoff:
$$i_{E}= i_{C}+i_{B}$$

We can define:
$$i_{C}=\beta i_{B}$$
$$i_{C}=\alpha i_{E}$$

Which Implies:
$$\beta i_{B} = \alpha i_{E}$$

$$\alpha = \frac{\beta}{\beta+1}$$
Where:
$\beta$ = Factor of proportionality
$\alpha = \frac{i_{C}}{i_{E}}=$ Emitter injection efficiency

Typical values of these include:
$$\beta = 100$$
$$\alpha = 0.9 \leftrightarrow 0.99$$

*Some derivation I guess:*
$$i_{E}= (\frac{I_{s}}{\alpha})(e^{\frac{v_{BE}}{V_{T}}}-1)\approx (\frac{I_{s}}{\alpha})e^{\frac{v_{BE}}{V_{T}}}$$
$$i_{B}\approx (\frac{I_{s}}{\beta})e^{v_{BE}/V_{T}}$$
$$i_{C}\approx I_{s}e^{v_{BE}/V_T}$$
```ad-attention
title: NOTE
Base-emitter voltage controls the collector current
```

![Pasted image 20230812123453](Attachments/Pasted%20image%2020230812123453.png)
*Emitter current is equal to the total current:*
$$i_{E}=i_{B} + i_{C}=\frac{i_{C}}{\alpha}$$

Using [Kirchhoff's Laws](../../../Distilled%20Notes/Kirchhoff's%20Laws.md) and our diode equation:
$$i_{C} = I_{s}e^{v_{BE}/V_T}$$
Where:
$I_{s} =$ Constant (Saturation Current)
$V_{T}=$ Constant (Thermal Voltage)

We can determine:
$$i_{B}= \frac{i_{C}}{\beta}=\frac{I_{s}}{\beta}e^{v_{BE}/V_T}$$
*Base current is much smaller that collector current*

Emitter current is the total current:
$$i_{E}=i_{B}+i_{C}= \frac{i_C}{\alpha}$$



## Equivalent Circuits

### Active Region
![](Attachments/Pasted%20image%2020231106165507.png)
**Collector current is controlled by base-emitter, voltage:**
$$i_{C} = I_{s} e^{v_{BE}/V_{T}}$$

*Base current is much smaller than the collector current:*
$i_{B} = \frac{i_{C}}{ \beta }$

**Emitter current is total current**
$i_{E} = i_{B} + i_{C} = \frac{i_{C}}{\alpha}$

### Saturation Region
![](Attachments/Pasted%20image%2020231106165353.png)

$i_{C} = I_{s}e^{\frac{v_{BE}}{V_{T}}-I_{sc}}e^\frac{v_{\underset{ ED }{ be }}}{V_{T}}$
