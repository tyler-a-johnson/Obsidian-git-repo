#ELEC/2070 #Circuits #Communication #UniNotes

**Slides:**
[ELEC2070 Week 1 2023](Attachments/ELEC2070%20Week%201%202023.pdf)

# Fundamental Concepts
Below are some basic equations for review:
![Pasted image 20230304193246](Attachments/Pasted%20image%2020230304193246.png)

## Polarity & resistance
![Pasted image 20230304193700](Attachments/Pasted%20image%2020230304193700.png)
(a) - Absorbs (dissipates) energy. Its a "passive" element.
(b) - Supplies (generates) energy. It is an "active" element

We are going to use resistors in their linear region. 

`Ideal Resistor`
$$ v = Ri$$

# Ideal Independent Sources
![Pasted image 20230304193959](Attachments/Pasted%20image%2020230304193959.png)

Symbol of Ideal Independent *Voltage Source*.         Symbol of ideal independent *Current source*.

# Dependent Sources
![Pasted image 20230304194125](Attachments/Pasted%20image%2020230304194125.png)

*There are no simple dependent sources in practice!* But they are very useful for modelling transistors, amplifiers, etc.

## Dependent Source Examples
![Pasted image 20230304202110](Attachments/Pasted%20image%2020230304202110.png)

# Kirchoff's Laws
The algebraic sum of all *currents entering (or leaving) a node is zero* at any instant in time.
![Pasted image 20230304202635](Attachments/Pasted%20image%2020230304202635.png)

The algebraic sum of all *voltages around a loop is zero* at any time instant.
![Pasted image 20230304202737](Attachments/Pasted%20image%2020230304202737.png)

$$v1 + v2 + v3 - vs = 0$$

# Nodes
![Pasted image 20230304203017](Attachments/Pasted%20image%2020230304203017.png)

Ground node potential is *zero volts*.
*All other nodes* can be *measured relative to ground.*
Each node corresponds to a *unique voltage (relative to ground).*

# Parallel and Series Voltage and Current Sources
![Pasted image 20230304203424](Attachments/Pasted%20image%2020230304203424.png)

# Node Voltage Analysis
![Pasted image 20230304205521](Attachments/Pasted%20image%2020230304205521.png)

First, write element currents in terms of node voltages:

$$i1 = {\frac{va-vb}{R1}}$$
$$i2 = {\frac{va}{R2}}$$
$$i3 = {\frac{vb}{R3}}$$
Then, apply *Kirchhoff's Current Law* at each node except for the ground node.

Node A: $i_s = i_1 + i_2$

![Pasted image 20230304210120](Attachments/Pasted%20image%2020230304210120.png)

## Summary

1. Element currents are expressed in terms of node voltages (pay attention to current direction). 
2. KCL is applied to each node (except ground). 
3. If there are only current sources there are nice symmetries in equations.
4. If there are dependent sources, controlling voltage or current is expressed in terms of node voltages → if there is an additional unknown another equation is needed.

# Mesh Current Analysis

![Pasted image 20230304211207](Attachments/Pasted%20image%2020230304211207.png)

Write element voltages in terms of mesh currents:

$$v_{1}= R_1i_1$$
$$v_{2}= R_2i_2$$
$$v_{3}= R_3(i_{1}-i_{2})$$
Apply _Kirchhoff's Voltage Law_ to write loop equations for **each mesh**.
![Pasted image 20230304211541](Attachments/Pasted%20image%2020230304211541.png)

# Thévenin's Theorem
![Pasted image 20230304211743](Attachments/Pasted%20image%2020230304211743.png)


```
Any combination of voltage sources and resistors with two terminals can be replaced by a single voltage source and a single series resistor
```

Circuit A can be replaced with a simpler _Thévenin equivalent circuit_

To find the Thévenin equivalent circuit of Circuit A:

1. Measure (or calculate) the **open-circuit voltage** and the short-circuit current of Circuit A.
2. Then calculate Thévenin resistance using the formula:

$$R_{t}= \frac{v_{oc}}{i_{sc}}$$
- This method works well for calculations but _may not be good in practice_.
- For example: if you short circuit a battery, you will discharge it.

**Method 1:**
We now need to:
1. Find the open circuit voltage
2. Find the short circuit current
3. Calculate Thévenin resistance using the relation: $R_{t}= \frac{v_{oc}}{i_{sc}}$
![Pasted image 20230304212805](Attachments/Pasted%20image%2020230304212805.png)

# The Thévenin Parameters
![Pasted image 20230304212906](Attachments/Pasted%20image%2020230304212906.png)

(a) The **open circuit voltage**: $v_{oc}$
(b) The **short circuit current**: $i_{sc}$
(c) The **Thévenin Resistance**: $R_{t}$ This can be found by:
	1. Finding $R_{t}=\frac{v_{oc}}{i_{sc}}$
	2. Replacing all independent voltage sources with short circuits and all independent current sources with open circuit. Then calculate final resistance $-R_{t}$. **Dependent sources cannot be replaced by open and short circuits. Need to use $R_{t}=\frac{v_{oc}}{i_{sc}}$

## Simple Method to find $R_{t}$
![Pasted image 20230304214121](Attachments/Pasted%20image%2020230304214121.png)

## A Third Method to Calculate R<sub>t</sub>

![Pasted image 20230304214214](Attachments/Pasted%20image%2020230304214214.png)

The Thévenin resistance can be found by connecting a current source to the terminals of the circuit. The voltage across the current source is measured or calculated. The Thévenin resistance is found from $R_{t}=\frac{v_t}{i_t}$

(This could be carried out a few times to check linearity)

**Particularly useful for complicated circuits with dependent sources**

# Calculating the Thévenin Resistance

**Method 1:** Find $v_{oc}$ and $i_{sc}$ then apply $R_{t}=\frac{v_{oc}}{i_{sc}}$. Useful for simple circuits and when doing paper calculations.

**Method 2:** Make a new Circuit *A* by "zeroing" _independent_ sources of Circuit *A*. Find equivalent resistance of Circuit *A*. This is the Thévenin resistance of *A*.
![Pasted image 20230304214930](Attachments/Pasted%20image%2020230304214930.png)

**Method 3:** Apply a current source $i_t$ to the terminals of Circuit *A*; Measure $v_t$. Calculate $R_t$ from $v_t$ and $i_t$:
$$R_{t}= \frac{v_t}{i_t}$$
**You should not connect a current supply to the output of a circuit in practice without knowing what's inside, might damage it.

# Dependent Sources
The presence of dependent sources means we cannot find $R_t$ using the normal "switching off independent sources" technique

We now need to:
1. Find the open circuit voltage
2. Find the short circuit current
3. Calculate Thévenin resistance using the relation: $R_{t}= \frac{v_{oc}}{i_{sc}}$

**Example**: This circuit involves a dependent source
![Pasted image 20230304215830](Attachments/Pasted%20image%2020230304215830.png)


*Find the open-circuit voltage*

Since we have one closed loop we can apply KVL to this loop - remember the polarities

KVL: $$-20 + 6i - 2i + 6i = 0$$
$$i = 2 A$$
Therefore the open-circuit voltage: $v_{oc} = 6i = 12V$

## Worked Solution Find i<sub>sc</sub>
![Pasted image 20230304220317](Attachments/Pasted%20image%2020230304220317.png)

Find the short-circuit current by connecting the terminals at a-b 

Now we have a simple mesh equation problem

**Mesh 1:** $-20 + 6i_{1} - 2(i_{1} - i_{2}) + 6(i_{1}-i_{2}) = 0$
**Mesh 2:** $6(i_{2}- i_{1}) + 10i_{2}= 0$

This equation gives: $i_{1}=\frac{8}{3}i_{2} = 2.67i_2$
Put this value into $i_2$ into Mesh 1's Equation gives: $i_{2} = \frac{60}{68}$

Therefore $R_t$ = 13.6 Ohms

# Norton's Equivalent circuit
![Pasted image 20230304221031](Attachments/Pasted%20image%2020230304221031.png)

![Pasted image 20230304221058](Attachments/Pasted%20image%2020230304221058.png)

# Thévenin To Norton = Source transformation
![Pasted image 20230304221156](Attachments/Pasted%20image%2020230304221156.png)

![Pasted image 20230304221214](Attachments/Pasted%20image%2020230304221214.png)

**We choose the equivalent circuit depending on the overall problem we are trying to solve

# Graphical analysis to determine Thévenin and Norton circuits
![Pasted image 20230304221356](Attachments/Pasted%20image%2020230304221356.png)

**Our two Options
![Pasted image 20230304221550](Attachments/Pasted%20image%2020230304221550.png)
1. These are only models (=equivalent circuits) !!!
2. In practice, a voltage source is always a voltage source.
3. The real circuit with its internal nodes and branches is still there.

# Source Transformation
![Pasted image 20230304221724](Attachments/Pasted%20image%2020230304221724.png)

**Note:**
	The current is unchanged between the ideal and non-ideal voltage source.
	The voltage is unchanged between the ideal and non-ideal current source.

## Equivalence
![Pasted image 20230304221843](Attachments/Pasted%20image%2020230304221843.png)

If we connect the non-ideal sources to the circuit B, then all the currents and voltages in B will be unchanged. This is called *equivalence*.

The process of transforming between these two non-ideal sources is called a *source transformation*.

## Conditions
![Pasted image 20230304222010](Attachments/Pasted%20image%2020230304222010.png)

If the transformed sources are equivalent, then the current and voltage in R will be identical.

So we start the analysis with 2 extreme example: R = 0 and R = Infinity
When R = 0, we have a short circuit: Hence for *(a)* $i = \frac{v_s}{R_{s}}$ and for *(b)* $i = i_s$ (Since no current flows through R<sub>p</sub>) **therefore**: $v = v_{s}= i_{s}R_{p}$
![Pasted image 20230304222504](Attachments/Pasted%20image%2020230304222504.png)
**Examples are in the pdf**


# Superposition
**All the circuits we study in this unit are linear.**
• If the circuit is linear, you can calculate the output voltages and currents by considering one independent source at a time, then add up all solutions to get the final solution. 
• To consider one source at a time, you need to “zero” the other sources. 
• To zero the independent voltage sources you need to replace them by short-circuits. 
• To zero the independent current sources you need to replace them with open-circuits.

## Linear Circuits
![Pasted image 20230304222827](Attachments/Pasted%20image%2020230304222827.png)

## To "Zero" Independent Sources
![Pasted image 20230304222900](Attachments/Pasted%20image%2020230304222900.png)