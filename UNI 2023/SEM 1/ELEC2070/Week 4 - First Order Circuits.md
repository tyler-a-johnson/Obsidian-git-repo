#ELEC/2070 #Circuits #Logic #UniNotes

**Slides:**
[[Attachments/ELEC2070 Week 4]]

# The Time-Dependent Response of Simple Circuits
Resistor: $v=Ri$
Capacitor: $i(t)=C \frac{\Delta}{\Delta t}v(t)$
Inductor: $v(t)=L \frac{\Delta}{\Delta t}i(t)$ 

## The Initial Analysis Method]
![[Attachments/Pasted image 20230321150242.png]]
**a. Simplify your circuit**
1. Combine your capacitors (or inductors) to one side
2. Resistors and sources on the other side

**b. Find:**
- Thevenin equivalent circuit as seen by the combined capacitor
Or:
- Norton equivalent circuit as seen by the combined inductor

> A circuit containing one inductor (and no capacitors) or one capacitor (and no inductors) is called a first order circuit.

## The General Time-Dependent Response
![[Attachments/Pasted image 20230321151016.png]]
![[Attachments/Pasted image 20230321151356.png]]

# The Differential Equations - Constant input to a circuit
Describing the behaviour of the first order (RC and RL) circuits

## 1. RC circuit with a DC source
![[Attachments/Pasted image 20230321152130.png]]
1. Assume circuit is at a steady state at t = -0.
2. Abrupt change at t = 0  $\rightarrow$ disturbs circuit
3. We know how to determine currents and voltages before disturbance (t<0).
4. We can derive a 1st order differential equation to solve it

**CREATE THEVENIN CIRCUIT  FOR t>0**
![[Attachments/Pasted image 20230321152506.png]]
$$V_{oc}=\frac{R_{3}}{R_{2}+ R_{3}}V_{s}$$
$$R_{t} = \frac{R_{2}R_{3}}{R_{2}+R_{3}}$$

**Response for t > 0**
What is the response of a first order circuit to **a constant input?**
![[Attachments/Pasted image 20230321152942.png]]
> "Response" usually means the voltage across the capacitor (or current in the inductor)

We can apply KVL:
$$V_{oc}= R_{t}i(t) + v(t) = R_{t}(C \frac{\Delta v{t}}{\Delta t})+v(t)$$
Re-arrange:
$$\frac{\Delta v(t)}{\Delta t} + \frac{v(t)}{R_{t}C} = \frac{V_{oc}}{R_{t}C}$$
> This is the standard differential equation for **ANY** 1st order RC circuit with a constant input.
> First order (RC) circuit $\rightarrow$ involves a first order differential equation (or DE)

## 2. RL Circuit with a DC Source
![[Attachments/Pasted image 20230321153839.png]]
1. Assume that the circuit is at a steady state at t = -0.
2. Abrupt change at t = 0 disturbs the circuit.
3. We know how to determine currents and voltages before disturbances (t<0).
4. We can derive a 1st order differential equation and solve it.

![[Attachments/Pasted image 20230321155151.png]]
**CREATE NORTON CIRCUIT FIRST**
$$I_{sc}=\frac{V_{s}}{R_{2}}$$
$$R_{t}=\frac{R_{2}R_{3}}{R_{2}+R_{3}}$$
KCL (at top node):
$$I_{sc}=\frac{v(t)}{R_{t}}+i(t)=\frac{{L\frac{\Delta i(t)}{\Delta t}}}{R_{t}}+i(t)$$
Re-arrange:
$$\frac{\Delta i(t)}{\Delta t}+\frac{R_{t}}{L} i(t) = \frac{R_t}{L}I_{sc}$$
The standard differential equation for **ANY** 1st order RL circuit with a steady state input.
> First order (RL) circuit $\rightarrow$ involves a first order differential equation

## Source free RL circuit (pure natural response)
![[Attachments/Pasted image 20230321161407.png]]
[[Attachments/ELEC2070 Week 4#^tqx8c0n2y6i]]

Solution, see above link for working
$$i(t) = I_{0}e^{\frac{-Rt}{L}}$$

## Source free RC Circuit
![[Attachments/Pasted image 20230321165623.png]]
**Solution, see link above for full working:**
$$v(t) = v(0) e^{\frac{-t}{RC}}=V_{0}e^{\frac{-t}{RC}}$$

# The General Differential Equation for DC input
Standard differential equation for ANY 1st order circuit with constant input:
$$\frac{\Delta x(t)}{\Delta t} + \frac{x(t)}{\tau}=K$$
Where the time constant $\tau = R_{t}C$ or $L/R_{t}$
And K is CONSTANT

Our boy Dorf (The textbook) has the answer of how to solve the 1st order differential.
$$x(t) = x(\infty)+[x(0) - x(\infty)]e^{\frac{-t}{\tau}}$$

Where the $x(\infty)$  is the value of the long-term capacitor voltage or inductor current (i.e. when t -> infinity, there are no other abrupt changes)

And x(0) is the initial state

# The Time Constant of a 1st Order Circuit
![[Attachments/Pasted image 20230321171720.png]]
1. Take the slope of the tangent at t=0.
2. Where the tangent intercepts with the long-term value of x(t) or x(inf) is called the TIME CONSTANT $\tau$
$$\tau = R_{t}C = L/R_{t}$$
More generally: $\tau = R_{eq}C_{eq}$

$\tau$ is the time constant of the first-order circuit - the time the response would take to reach the final value if the (transient) response occurs at the initial rate of change.

It is an indication of how fast the response changes in a given 1st order circuit.

# The Voltage or Current at $t=\tau$
![[Attachments/Pasted image 20230321172243.png]]
The general solution:
$$x(t)=x(\infty) + [x(0)-x(\infty)]e^{\frac{-t}{\tau}}$$
x(t) could be v or i 

When $t=\tau$:
$$x(\tau) = x(\infty) + [x(0)-x(\infty)]0.368$$

When the time after an abrupt change to circuit is equal to the time constant, the value of the voltage or current is 63% lower than the value at the time the abrupt change occurs.

# Summary
![[Attachments/Pasted image 20230321172836.png]]
![[Attachments/Pasted image 20230321172850.png]]
This description is only appropriate for circuits in which the natural response dies out. Real circuits always will as there is resistance associated with other components that drain the signal. There are some "pathologic" circuits where the natural response is nonvanishing as time becomes infinite.

## Switching an RC or RL Circuit
![[Attachments/Pasted image 20230321173312.png]]

## How to solve a Switching Problem
RC Circuits
![[Attachments/Pasted image 20230321173341.png]]

RL Circuits
![[Attachments/Pasted image 20230321173419.png]]

## Circuit Diagrams
![[Attachments/Pasted image 20230321173452.png]]
[[Attachments/ELEC2070 Week 4#^lubjk3nbc5]]
See link for examples

# The Complete Response
Here we add the natural (transient) response to the forced (steady state) response

## The General Differential Equation involving Forced and Natural Responses
![[Attachments/Pasted image 20230321173802.png]]
![[Attachments/Pasted image 20230321173909.png]]

## Natural Response
Solution to the Homogenous Differential Equation

Since the solution looks like this: $x(t) = x_{n}(t) +x_{f}(t)$
(Natural + Forced = Complete)

We can determine each part separately and just slap em together.
![[Attachments/Pasted image 20230321174137.png]]
This is the **Homogeneous** form of the differential equation

This has the solution: 
![[Attachments/Pasted image 20230321174302.png]]

## Forced Response
| Forcing Function, y(t)                         | Forced Response, $x_{t}(t)$                |
| ---------------------------------------------- | ------------------------------------------ |
| 1. Constant: $y(t) = M$                        | $x_{t} = N$, a constant                    |
| 2. Exponential:$y(t) = Me^{-bt}$               | $x_{t} = Ne^{-bt}$                         |
| 3. Sinusoid: $y(t) = M sin(\omega t + \theta)$ | $x_{t}=A sin (\omega t) + B cos(\omega t)$ |

Forcing functions and forced responses have similar time dependence but they have different magnitudes.

## Solution for a constant input / forcing function
![[Attachments/Pasted image 20230321175110.png]]
![[Attachments/Pasted image 20230321175217.png]]

## The Mathematical approach
![[Attachments/Pasted image 20230321175246.png]]

# Sequential Switching
- Initial conditions need to be calculated for each switching event
- The circuit may **not** have reached steady state before each switching event
- Each cycle may or may not have the same time constant - the switching process may involve new circuit elements
![[Attachments/Pasted image 20230321175436.png]]
![[Attachments/Pasted image 20230321175451.png]]

# Unit Step Function
![[Attachments/Pasted image 20230321175555.png]]

If an independent voltage source provides a voltage written like this:
![[Attachments/Pasted image 20230321175639.png]]

It means this overall
![[Attachments/Pasted image 20230321175652.png]]
![[Attachments/Pasted image 20230321175703.png]]

# SUMMARY SUMMARY GOD DAMN
## Driven RL Circuits
![[Attachments/Pasted image 20230321175757.png]]

## Drive RC Circuits
![[Attachments/Pasted image 20230321175824.png]]