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
## Characteristics
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

## Non-Ideal Diodes


## Analysis by Assumed States
*In a circuit with a number of diodes n*
- Assume a state for each diode (ON/OFF)(Closed/Open)
- n diodes will require $2^{n}$ possible combinations
- **Calculate currents of ON diodes and voltages of OFF diodes**
- Check to see of calculations are consistent with assumptions
- If yes, assumption works. *If no, return to step 1 and make a new assumption*.
