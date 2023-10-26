#ELEC/2005 

**Slides:**[ELEC2005 Week 1 Lecture Introduction_2023_Updated](Attachments/ELEC2005%20Week%201%20Lecture%20Introduction_2023_Updated.pdf)

**PART 1: Weeks 1-7 Nonlinear Devices**
- Diodes, BJTs, MOSFETs
	- [ ] How do they work?
	- [ ] How do we use them in circuits?
	- [ ] Building circuits to spec
	- [ ] Develop a library of building blocks and circuits
![Pasted image 20230725145604](Attachments/Pasted%20image%2020230725145604.png)
**PART 2: Weeks 8-13**
- [ ] High power systems and components 
	- [ ] energy generation/conversion/storage
![Pasted image 20230725145621](Attachments/Pasted%20image%2020230725145621.png)

# Learning Outcomes
![Pasted image 20230725145715](Attachments/Pasted%20image%2020230725145715.png)

```ad-summary
title: Learning Outcome 4
- [ ] Building on prerequisite knowledge (ELEC2070)
- [ ] Learn the properties and characteristics of non-linear device including diodes and transistors
- [ ] Learn how these devices work at the circuit level to modify current and voltage
- [ ] Use equivalent circuit models to simplify complex linear and nonlinear circuits
- [ ] Find linear representation of nonlinear circuits within limits of interest
```

```ad-bug
title: Learning Outcome 5
- [ ] Using LTSpice circuit simulation tools to analyse nonlinear devices
- [ ] Build and analyse physical electronic circuits
- [ ] Learn to rapidly prototype nonlinear circuits and how to measure response
```

# Review of Fundamentals

## Transistors
[Transistors](Transistors) are circuits components wherein the current between c and e depends on the voltage between b and e.
![Pasted image 20230725151209](Attachments/Pasted%20image%2020230725151209.png)
The current can be represented by the equation
$$i_{c}=g_{m}v_{be}$$
Where:
$i_{c}$ = Current between c and e
$g_{m}$ = Is a constant depending on the transistor
$v_{be}$ = Is the voltage between b and e

We can also represent a transistor as described above with a source and resistor combination.
![Pasted image 20230725151706](Attachments/Pasted%20image%2020230725151706.png)
Its important to note this equivalent circuit is only an equivalent and simply makes it easier to analyse.
![Pasted image 20230725151749](Attachments/Pasted%20image%2020230725151749.png)

## Kirchhoff's Law
[Kirchhoff's Laws](../../../Distilled%20Notes/Kirchhoff's%20Laws.md) (Current) states that for the algebraic sum of all **currents entering or leaving a node is zero at any time**.
![Pasted image 20230725152542](Attachments/Pasted%20image%2020230725152542.png)

And the algebraic sum of all **voltages around a loop is zero** at any time instant.
![Pasted image 20230725152620](Attachments/Pasted%20image%2020230725152620.png)


## Nodes
![Pasted image 20230725152829](Attachments/Pasted%20image%2020230725152829.png)
Ground node potential is zero volts. All other nodes can be measured relative to ground. Each node corresponds to a unique voltage (relative to ground).
![Pasted image 20230725153143](Attachments/Pasted%20image%2020230725153143.png)
Voltages can be represented relative to nodes.

**Node Voltage Analysis**
1. First write element currents in terms of node voltages
![Pasted image 20230725153420](Attachments/Pasted%20image%2020230725153420.png)
2. Apply Kirchhoff's Current Law at each node, except the ground node.
![Pasted image 20230725153503](Attachments/Pasted%20image%2020230725153503.png)
$i_{1}$ and $i_{2}$ are not needed if we want to find only the node voltages. The source current is normally given.

3. Order the equations with respect to the unknowns (such as you would do for the matrix method) and solve them
![Pasted image 20230725153647](Attachments/Pasted%20image%2020230725153647.png)

# Thevenin's Theorem
"Any combination of voltage sources and resistors with two terminals can be replaced by a single voltage source and a single series resistor."
![Pasted image 20230725154154](Attachments/Pasted%20image%2020230725154154.png)

We can find this equivalent by:
1. Calculate the **open circuit voltage** and the **short-circuit current** of Circuit A.
2. Then calculate Thevenin resistance as: $R_{t}=\frac{v_{oc}}{i_{sc}}$

## Graphical Analysis
![Pasted image 20230725154553](Attachments/Pasted%20image%2020230725154553.png)
Only $v_{oc}$ and one $R_{L}$ measurement is needed to make a linear graph. This is easy.
**USEFUL IN LAB**


# Non-Linear Devices
A system will have a number of devices.
![Pasted image 20230725155215](Attachments/Pasted%20image%2020230725155215.png)
An example of a subsystem is a simple amplifier 
![Pasted image 20230725155352](Attachments/Pasted%20image%2020230725155352.png)
The device within this subsystem is the transistor:
![Pasted image 20230725155416](Attachments/Pasted%20image%2020230725155416.png)

## What is a Nonlinear Device
- Many systems/subsystems involve complex nonlinear circuits with multiple nonlinear devices:
- Four of the most common nonlinear devices are shown here, diodes and transistors and the circuits constructed with them.
![Pasted image 20230725155659](Attachments/Pasted%20image%2020230725155659.png)
- For each of these, the relationship between their output and input characteristics is not linear.

- Devices such as *ideal* resistors, capacitors and inductors have a output characteristics that are a linear function of input.
- Diodes and transistors have a more complex relationship between input and output. ALTHOUGH they may have regions of linearity.
![Pasted image 20230725160239](Attachments/Pasted%20image%2020230725160239.png)

# Amplifiers
- Most transducers (some sensors, especially microphones) produce weak signals (uV - mV range).
- We need to strengthen these signals whilst maintaining the information
	- Need linear gain, though non linearity here can also be useful.

![Pasted image 20230725160713](Attachments/Pasted%20image%2020230725160713.png)
- A two port circuit, shown as a triangle indicating the direction of signal flow
- Typically there is a common terminal as a reference point
- In reality amps require a power supply (not shown)
![Pasted image 20230725160858](Attachments/Pasted%20image%2020230725160858.png)

Signal gain can be achieved and expressed through voltage, current, or power.
![Pasted image 20230725161242](Attachments/Pasted%20image%2020230725161242.png)
Gain is a ratio, expressed as dimensionless, or V/V, A/A etc. Engineers often express gain logarithmically.
![Pasted image 20230725183327](Attachments/Pasted%20image%2020230725183327.png)

## Saturation
- In reality, our gain is limited
- Saturation(clipping) will occur when the output voltage approaches that of the power supplies
- Output signal becomes distorted
![Pasted image 20230725210004](Attachments/Pasted%20image%2020230725210004.png)
```ad-important
We must design amplifiers to avoid this. Knowledge of the input range is needed.

```

## Frequency Response and Bandwidth
- Amplifying a sine wave signal can **change its amplitude and phase** but **not frequency**.
![Pasted image 20230725210400](Attachments/Pasted%20image%2020230725210400.png)
- Amplifiers typically only have a flat gain response over a specific frequency range, called **bandwidth.**
![Pasted image 20230725210523](Attachments/Pasted%20image%2020230725210523.png)
```ad-important
We must design amplifiers to operate correctly over the correct frequency range for our application.

```

## Circuit Models
- Used to model terminal behaviour of amp (simplified to a building block)
- Example for a voltage amplifier:
![Pasted image 20230725211321](Attachments/Pasted%20image%2020230725211321.png)
Here, we have a basic amplifier, and an amplifier with an input source and output load. $v_{0}$ is represented as the voltage across the load, $i_{0}R_{L}$. 
This can be represented as a voltage divider between the dependent source and the two resistors.
Using our gain equation from before $A_{vo}=\frac{v_{0}}{v_{i}}$. We can rewrite our equation to the one seen above.

### Types of Amplifier
- Signal of interest (at input or output) may be current or voltage.
- Voltage amp is most popular but other models can be used.
![Pasted image 20230725212903](Attachments/Pasted%20image%2020230725212903.png)

#### Calculate the Gain of a Stage Amplifier
![Pasted image 20230728192842](Attachments/Pasted%20image%2020230728192842.png)
- We need to solve one at a time
- We need the gain $\frac{V_{L}}{V_{S}}$ so we need $V_{L}$ in terms of $V_{S}$
$$v_{i1}= v_{s} \frac{1M\ohm}{1M\ohm + 100k\ohm} = 0.9090v_{s}$$
$$v_{i2} = 10v_{i1} \frac{100k\ohm}{101k\ohm}=9.9v_{i1}=9v_{s}$$
$$v_{i3}=100 v_{i2} \frac{10k}{11k}=90*9v_{i2}=818v_{s}$$
$$v_{L}= 1v_{i3} \frac{100}{110}=0.909v_{i3}=744 v_{s}$$

*This is our overall gain:*
$$\frac{V_L}{V_{S}} = 744$$

**What is this in dB?**
$$20 \log |744| = 57.4dB$$

