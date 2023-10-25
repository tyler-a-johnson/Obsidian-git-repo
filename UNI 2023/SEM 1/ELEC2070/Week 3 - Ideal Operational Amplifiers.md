#ELEC/2070  #Circuits #Logic #UniNotes

**Slides:**
[[Attachments/ELEC2070 Week 3 2022 Operational Amplifiers.pdf]]

# The OP Amp
An Op Amp is an integrated circuit that takes the difference between the voltages of the two inputs, and amplifies them.
![[Attachments/Pasted image 20230318133517.png]]

- Operational Amplifiers are widely used in signal processing and control circuits
- µA741 is the most common op amp
- Op amps are **differential amplifiers**

## Circuit Diagram
![[Attachments/Pasted image 20230318133656.png]]

## Definitions
![[Attachments/Pasted image 20230318133732.png]]
Some circuit diagrams swap the inputs, check the signs

# Example Schematic
![[Attachments/Pasted image 20230318134243.png]]

- The DC source supplies "bias" to the op amp
- There are usually **not** included in the schematic

## Node Analysis for Op Amps

1. Since we generally omit op amp power supplies, KCL could create problems
2. At  the ground node: we have 2 currents involving the power supplies
	1. Cannot use KCL at ground node if power supplies are omitted!
3. At the op amp: applying KCL means:
$$i_{1}+i_{2}+i_{0}+i_{+}+i_{+} = 0$$
Hence, KCL wont work if power supplies are omitted!

**USE NODE ANALYSIS FOR OP AMPS**

# Ideal Op Amp

**Keeping the Op Amp in the "linear regime"
> All numbers used are for µA741

We need

The output voltage: $|v_{o}| <= v_{sat}$ (14V)
The output current: $|i_{o}| <= i_{sat}$ (2mA)
The change in output voltage:
$$|\frac{\Delta v_{o}(t)}{\Delta t}| <= SR$$ SR = "Slew rate"
500,000 V/s

If we keep within these parameters we can use the "Ideal operational amplifier" conditions for calculationsa
![[Attachments/Pasted image 20230318135751.png]]

| Variable                                                                                             | Ideal Condition |
| ---------------------------------------------------------------------------------------------------- | --------------- |
| Inverting Node input current                                                                         | $i_{1} = 0$     |
| Non-Inverting Node input current                                                                     | $i_{2}=0$       |
| Voltage difference between inverting node voltage and $v_{1}$ and Non-Inverting node voltage $v_{2}$ | $v_{2}-v_{1}=0$ |

> the ideal operational amplifier is a model for a linear operational amplifier

## Input and Output
As opposed to other circuits so far, an op amp circuit **ALWAYS** has an output depending on a given input. Therefore, we will analyze op amp circuits with the goal of obtaining an expression for the output in terms of input quantities.

It is usually a good idea to begin analysis of the op amp circuit at the input and work from there.

## Example

![[Attachments/Pasted image 20230318152646.png]]
How does the output voltage change with input voltage? 
Figure (b) shows what we know from an ideal op amp. Note that $v_{1}= v_{2}$ since they are connected via a short.
We can now express the voltage across Rs as: 
$v_s – v_2 = v_{s} – v_{1} = v_s – v_0$
therefore: 
$v_s = v_0$ (because no current is flowing through RS , since $i_2 = 0$)

## Node Analysis of Circuits

For ideal op amps we can **ALWAYS** say:
1. $v_{1}= v_{2}$ hence we can eliminate $v_{1}$ or $v_{2}$ from the node equations
2. Inputs currents are always zero. This helps for node analysis of inputs
3. The output current is not zero and is always involved in a KCL equation at the output node.

### Example
![[Attachments/Pasted image 20230320122520.png]]

Find $v_{0}$ in terms of input voltages.
At the non inverting input node, since v1 = v2
$$\frac{v_{1}}{30,000} + \frac{v_{1}-v_{b}}{10,000} + i_{2} = 0$$
Since: $i_{2}= 0$
$v_{1}= \frac{3}{4} v_{b}$

At the inverting input node:
$$\frac{v_{1}-v_{a}}{10,000} + \frac{v_{1}-v_{0}}{30,000} + i_{1} = 0$$
Since: $i_{1}=0$
$$v_{0}= 4v_{1}-3v_{a}$$
Since: $v_{1} = \frac{3}{4}v_{b}$
$$v_{0}= 3(v_{b}- v_{a})$$
> Find more examples in the attached PDF

# Designing Circuits using Op Amps
## Functional Op Amp Circuits
![[Attachments/Pasted image 20230320123141.png]]
![[Attachments/Pasted image 20230320123203.png]]

## Voltage Follower
![[Attachments/Pasted image 20230320123237.png]]

- One of the problems when circuit 1 is connected to circuit 2 is **loading**.
- Or we have $v_{a}!=v_{b}$ (circuit 2 **loads** circuit 1 and $i_{b}$ is the **load current**)
- Therefore we need to design a solution: Use a **Voltage follower** (fig c) - This copies the voltage.

### Example 1
![[Attachments/Pasted image 20230320123535.png]]

In this circuit (a) we can apply KCL at node 1:
$$\frac{v_{a}-v_{in}}{20,000} + \frac{v_{a}}{60,000}+i_{a}= 0$$
$v_{a} =0.75v_{in}$

If we connect a 30k resistor (circuit b) we now have:
$$\frac{(v_{b}-v_{in})}{20,000}+\frac{v_{b}}{60,000}+\frac{v_{b}}{30,000}=0$$

The loading comes from the new current in the resistor

Now add a voltage follower
![[Attachments/Pasted image 20230320124152.png]]

Note 1:
$$\frac{v_{a}-v_{in}}{20000}+ \frac{v_{a}}{60000}=0$$
$v_{a}=0.75v_{in}$ but $v_{c}=v_{a}$
Hence $v_{c}= 0.75v_{in}$

> The voltage follower provides the current for the 30k resistor not the independent power supply $v_{in}$ therefore keeping voltage the **SAME**

# Power Supplied to Op Amps

> If no current flows into or out of either input terminal of an op amp, why does current flow from the output?

In ELEC2070 (And many other practical applications) we are treating op amps as an independent element (like a resistor) but in reality they are supplied with an independent power source!
(Check pinout for µA741)
![[Attachments/Pasted image 20230318133517.png]]

# Scaling a Voltage

$v_{0}= K v_{in}$

![[Attachments/Pasted image 20230320124849.png]]

We want an amplifier circuit and K is called the **gain**. for any real number K

> In general: choose resistors in real op amp circuits between 5k and 500k (currents in IC's must be small)

## Examples
![[Attachments/Pasted image 20230320125036.png]]

Inverting amplifier, where the gain is $\frac{-R_{f}}{R_{1}}$
K = -5

![[Attachments/Pasted image 20230320125133.png]]

Non-Inverting amplifier, where the gain is $(\frac{1+R_{f}}{R_{1}})$
K = 5

![[Attachments/Pasted image 20230320125256.png]]

A non-inverting amplifier

## Virtual Ground
![[Attachments/Pasted image 20230320125326.png]]

> The fact that the inverting input terminal finds itself at zero volts in this type of circuit configuration leads to what is often referred to as a "virtual ground". This does not mean the pin is **ACTUALLY** grounded, which can be confusing. The op amp makes whatever internal adjustments are necessary to prevent voltage difference between the input terminals. The input terminals are **NOT** shorted together

# Amplifiers

Voltage follower (buffer amplifier)
(Same as $R_{f}=0$ or $R_{1}= 0$ in non inverting amp)
K = 1
![[Attachments/Pasted image 20230320125729.png]]

For gains $0<K<1$ no amplifier exists but we an use:

Voltage divider + Follower

Here, K = 0.8

This could be considered an attenuator
![[Attachments/Pasted image 20230320125825.png]]

# Using the Non Inverting summing amplifier

Say we want to sum these voltages:
$$v_{0}=2v_{1}+3v_{2}+ 4v_{3}$$
Want inputs between -1V and 1V

Consider an op amp that has $i_{sat}= 2mA$ and $v_{sat}= 15V$
![[Attachments/Pasted image 20230320130028.png]]

> Detailed example on page 35 of the slides

# Solving Linear Algebraic Equations using Circuits

Assume we want to solve: $z = 4x - 5y + 2$
This could be solved using an op amp circuit to give
$$v_{z} = 4v_{x}-5v_{y}+2$$
Where $v_{x}$ and $v_{y}$ are inputs

## Block Diagrams
![[Attachments/Pasted image 20230320130250.png]]
![[Attachments/Pasted image 20230320130311.png]]
![[Attachments/Pasted image 20230320130325.png]]
### Can we do better?
![[Attachments/Pasted image 20230320130440.png]]
Still a little hard to read - Improve later
#todo 

# Properties of Practical Op Amps

Real Op Amps have:
- Nonzero bias current
- Nonzero input offset voltage
- Finite input resistance
- Nonzero output resistance
- Finite voltage gain
> For small signals, the actual currents and voltages in real op amps are very important

## A more Realistic Model

The **Offset Model** accounts for:
- Nonzero bias currents
- Nonzero input offset voltage
![[Attachments/Pasted image 20230320130750.png]]

# Properties for Common Real World Op Amps
![[Attachments/Pasted image 20230320130838.png]]

## Open Loop Gain
![[Attachments/Pasted image 20230320130916.png]]

Note: The actual **open-loop voltage gain** is very large compared to what we encountered in out previous examples.

There is a distinction between this parameter and the closed-loop voltage gain that characterizes a particular op amp circuit. The "loop" refers to an external path between the output pin and the inverting input pin. It can be a wire, a resistor, etc. depending on the application.