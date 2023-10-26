#ELEC/2005 

**Slides:**
[ELEC2005 Week 2 Lecture Diodes](Attachments/ELEC2005%20Week%202%20Lecture%20Diodes.pdf)
[ELEC2005 Week 2 - Lecture Diodes_2023_UPDATED](Attachments/ELEC2005%20Week%202%20-%20Lecture%20Diodes_2023_UPDATED.pdf)

**Goals:**
- [x] Understand what nonlinearity means
- [x] Understand how we can use nonlinearity
- [x] Be familiar with Diodes and their non-linear characteristics
- [x] Analyze basic diode circuits
- [ ] Be able to use models for analyzing diode circuits
- [x] Understand diode applications: Rectifiers and wave-shaping circuits
- [ ] Small signal analysis


# What is a Non-Linear Device?
![Pasted image 20230805082949](Attachments/Pasted%20image%2020230805082949.png)

*For each of these, the relationship between their output and input characteristics is not linear*

- Devices such as ideal resistors, capacitors and inductors have an output characteristics that are a linear function of input.
- Diodes of transistors have a more complex relationship between input and output
	- They do have regions of linearity

## What is a Diode
![Pasted image 20230805083732](Attachments/Pasted%20image%2020230805083732.png)
- An two terminal device with non-linear IV characteristics
- Exhibits asymmetric conductance - current only flows in one direction
- Fabricated using a semiconductor with a P-N Junction
- Applications:
	- Power conversion
	- Over voltage protection
	- Detectors
	- Signal Generation

## Types of Diode
There are many types of diodes with different properties.
![Pasted image 20230805083946](Attachments/Pasted%20image%2020230805083946.png)
#toDo write descriptions

## The PN Junction
- Modern diodes are typically based on P-N junctions fabricated using semiconductors (commonly silicon)
- These junctions conduct current asymmetrically
![Pasted image 20230805084225](Attachments/Pasted%20image%2020230805084225.png)

## Junction Diode Characteristics
![Pasted image 20230805111503](Attachments/Pasted%20image%2020230805111503.png)
*Shockley Equation (Forward bias)*
$$i_{D} = I_{s}(e^{v_{D}/nV_{r}}-1)$$
$$i_{D} = I_{s}[\exp{\frac{v_{D}}{nV_{T}}}-1]$$

**Where:**
- $I_{s} =$ Saturation current. Its value depends on the area of the diode and the temp. Doubling for each $5\degree$ increase for silicon diodes. $~10^{-14}$ A at 300K
- $n =$ Emission coefficient (ideality factor) $1 < n < 2$
- $V_{T} =$ Thermal voltage $V_{T =}kT/q$ 
- $k = 1.38*10^{-23}$ Joules/Kelvin (**Boltzmann's Constant**)
- $q = 1.60 * 10^{-19}$ Coulomb (Charge of an electron)

```ad-note
Temperature in K = 273 + Temp in C
```
### The Pipe Analogy
![Pasted image 20230805085819](Attachments/Pasted%20image%2020230805085819.png)

# The Ideal Diode
- If negative voltage is applied (reverse bias) No current flows. (Open Circuit)
- Of a positive current is applied (forward bias) there is no voltage drop (Short Circuit)
![Pasted image 20230805085942](Attachments/Pasted%20image%2020230805085942.png)
![Pasted image 20230805085957](Attachments/Pasted%20image%2020230805085957.png)

## Analysis by Assumed States
*In a circuit with a number of diodes n*
- Assume a state for each diode (ON/OFF)(Closed/Open)
- n diodes will require $2^{n}$ possible combinations
- **Calculate currents of ON diodes and voltages of OFF diodes**
- Check to see of calculations are consistent with assumptions
- If yes, assumption works. *If no, return to step 1 and make a new assumption*.
- Making a table helps
![Pasted image 20230805090659](Attachments/Pasted%20image%2020230805090659.png)
[Equivalent Circuits](Equivalent%20Circuits) are EXTREMELY useful here.
**SEE Hambley Example 10.5**

# Non-Ideal Diodes
In reality, our diodes aren't ideal and have more complex behavior.
![Pasted image 20230805091003](Attachments/Pasted%20image%2020230805091003.png)
Our ideal diode has no reverse breakdown and no forward turn on voltage. For negative voltage there is 0 current and for voltage >0V we have the full current.

Our realistic diode has a reverse breakdown voltage $-V_{Z}$, *once the voltage across this diode reaches $-V_{Z}$ the diode experiences reverse breakdown and allows current to flow in the reverse bias direction*. 
There is also a minimum voltage called the *forward turn on voltage* ($V_{f}$), which must be reached before the diode will allow current to flow.

## Constant Voltage Drop Model
- Only accounts for the forward turn on voltage
- Does not account for the slope or reverse breakdown.
![Pasted image 20230805091641](Attachments/Pasted%20image%2020230805091641.png)

For silicon diodes, typical $V_{f} =~ 0.7V$
We will use this model most of the time.
#todo Examples

## Simple Linear Model and Piece-Wise Linear Model
We can also model our diode using a simple linear equation. Although this is not a highly accurate model of a diode.
![Pasted image 20230805092154](Attachments/Pasted%20image%2020230805092154.png)
From this we derive:
$$i = \frac{1}{R_{a}}(v-V_{a})+ \frac{-V_{a}}{R_a}$$
![Pasted image 20230805092511](Attachments/Pasted%20image%2020230805092511.png)

We can improve this using piecewise functions to generalize non-linearity
![Pasted image 20230805092838](Attachments/Pasted%20image%2020230805092838.png)
*This is our graphical model. Good for load-line analysis*
#todo Derive mathematical model

# The Shockley Equation
*Shockley Equation (Forward bias)*
$$i_{D} = I_{s}(e^{v_{D}/nV_{r}}-1)$$
$$i_{D} = I_{s}[\exp{\frac{v_{D}}{nV_{T}}}-1]$$
![Pasted image 20230805093046](Attachments/Pasted%20image%2020230805093046.png)
**Where:**
- $I_{s} =$ Saturation current. Its value depends on the area of the diode and the temp. Doubling for each $5\degree$ increase for silicon diodes. $~10^{-14}$ A at 300K
- $n =$ Emission coefficient (ideality factor) $1 < n < 2$
- $V_{T} =$ Thermal voltage $V_{T =}kT/q$ 
- $k = 1.38*10^{-23}$ Joules/Kelvin (**Boltzmann's Constant**)
- $q = 1.60 * 10^{-19}$ Coulomb (Charge of an electron)

There is also an approximate Shockley (for forward bias more than several tenths of a volt)
$$i_{D} \approx I_{s}\exp({\frac{v_{D}}{nV_{T}}})$$

## Load Line Analysis Example
![Pasted image 20230805093606](Attachments/Pasted%20image%2020230805093606.png)
*We know the diode IV equation:*
$$i_{D} = I_{s}[\exp{\frac{v_{D}}{nV_{T}}}-1]$$
$$i_{D} \approx I_{s}\exp({\frac{v_{D}}{nV_{T}}})$$

*We know Kirchhoff's voltage law:*
$V_{SS} = Ri_{D}+v_{D}$

There is no straightforward way to solve these two equations analytically.
We use load-line analysis graphically.

![Pasted image 20230805093536](Attachments/Pasted%20image%2020230805093536.png)
*We know the diode I-V equation:*
$$i_{D} = I_{s}[\exp{(\frac{v_{D}}{nV_{T}})-1}]$$

*And [Kirchhoff's Laws](../../../Distilled%20Notes/Kirchhoff's%20Laws.md):*
$$i_{D} =\frac{V_{SS}-v_{D}}{R}$$
$V_{SS}= 2V$
$R = 1k\ohm$ 

*We also need these to find the operating point:*
$V_{DQ} \approx 0.7V$
$I_{DQ} \approx 1.3mA$

# Zener Diode
Zener diodes are designed to work at the reverse breakdown region. These diodes use this as expected behavior.
![Pasted image 20230805102124](Attachments/Pasted%20image%2020230805102124.png)
![Pasted image 20230805102201](Attachments/Pasted%20image%2020230805102201.png)
*Commonly used for voltage regulator circuits - constant output from variable supply.*

## Voltage Regulator - Analysis in the Reverse Breakdown Region
*Hambley Exercise 10.3*
![Pasted image 20230805102649](Attachments/Pasted%20image%2020230805102649.png)
5V change in the supply voltage results in only a 0.5V change the regulated output voltage.
![Pasted image 20230805102751](Attachments/Pasted%20image%2020230805102751.png)
Actual Zener Diodes can do much better than this.
**Note: The slope of the load line hasn't changed.**
## L-L Analysis of Complex Circuits
![Pasted image 20230805103041](Attachments/Pasted%20image%2020230805103041.png)
*Hambley Ex 10.4*

![Pasted image 20230805103114](Attachments/Pasted%20image%2020230805103114.png)

# Logic Gates with Diodes
![Pasted image 20230805103224](Attachments/Pasted%20image%2020230805103224.png)
*What kind of logic gate is this?* **OR GATE.**

| $V_{A}$ | $V_{B}$ | $V_{Y}$ |
| ------- | ------- | ------- |
| 5       | 0       | 5       |
| 0       | 5       | 5       |
| 5       | 5       | 5       |
| 0       | 0       | 0       |
![Pasted image 20230822203627](Attachments/Pasted%20image%2020230822203627.png)
---
![Pasted image 20230805104128](Attachments/Pasted%20image%2020230805104128.png)
*What kind of logic gate is this?* **AND GATE.** #Why 

| $V_{A}$ | $V_{B}$ | $V_{Y}$ |
| ------- | ------- | ------- |
| 5       | 0       | 0       |
| 0       | 5       | 0       |
| 5       | 5       | 5       |
| 0       | 0       | 0       |



# Rectifier Circuits
## Half-Wave Rectifier
![Pasted image 20230805104533](Attachments/Pasted%20image%2020230805104533.png)
![Pasted image 20230805104547](Attachments/Pasted%20image%2020230805104547.png)
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

## Full-Wave Rectifier
![Pasted image 20230805105215](Attachments/Pasted%20image%2020230805105215.png)
A transformer can provide this (out of phase AC voltages)

![Pasted image 20230805105337](Attachments/Pasted%20image%2020230805105337.png)

## Diode-Bridge Full-Wave Rectifier
![Pasted image 20230805105419](Attachments/Pasted%20image%2020230805105419.png)

## Precision Rectifier - The "Superdiode"
![Pasted image 20230805105633](Attachments/Pasted%20image%2020230805105633.png)

## Voltage Regulator
![Pasted image 20230805105803](Attachments/Pasted%20image%2020230805105803.png)

# Wave Shaping Circuits
![Pasted image 20230805110535](Attachments/Pasted%20image%2020230805110535.png)
![Pasted image 20230805110651](Attachments/Pasted%20image%2020230805110651.png)


# Diode Analysis
![Pasted image 20230801163315](Attachments/Pasted%20image%2020230801163315.png)
- So far we have looked at diodes in the time domain
- We calculated and plotted instantaneous voltages and currents
- We applied *DC voltages (or currents) to the diodes and found the operating points (Q point)*
- Q stands for **quiescent** i.e. quiet or no-signal point

*If the Q point is known (using the nonlinear diode characteristic), the linear AC analysis method can be applied to find the response to small (AC) signals.

## Small Signals
![Pasted image 20230801163907](Attachments/Pasted%20image%2020230801163907.png)
$$i_{D}(t) = I_{DQ}+i_{d}(t)$$
$$i_{d}(t) = I_{d}\cos(2\pi ft - 90\degree)$$

# Small Signal Diode
![Pasted image 20230805111017](Attachments/Pasted%20image%2020230805111017.png)

#What is ripple in regards to DC/AC voltages "10V+ DC with a 1V ripple".