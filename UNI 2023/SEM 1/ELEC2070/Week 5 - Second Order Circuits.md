 #ELEC/2070 #UniNotes

**Slides:**
[ELEC2070 Week 5 2023 Complete Response 2nd](Attachments/ELEC2070%20Week%205%202023%20Complete%20Response%202nd.pdf)

# The Mathematical Approach for 1st Order
Start with differential equation in this form and an **initial condition**
$$\frac{dx(t)}{dt} + \frac{1}{\tau}x(t) = y(t)$$
Find (from y(t)) the correct form of the forced response from the table
$$x_{f} (t)$$
Sub the forced response into the differential equation to find its unknown coefficients
$$\frac{d x_{f}(t)}{dt} + \frac{1}{\tau}x_{f}(t)=y(t)$$
Write the correct form of the natural response, add the forced response
$$x(t) = x_{n}(t) + x_{f}(t) = Ke^{-\frac{t-t_{0}}{\tau}} + x_{f}(t)$$
Use the initial condition with the complete response to find the unknown coefficient of the natural response (K)
$$x(t_{1}) = Ke^{-\frac{t-t_{0}}{\tau}}+x_{f}(t_{1})$$
$$t_{1}>= t_{0}$$
**Complete response is fully solved**

# Differential Equation for Second order Circuits
A second order circuit means the total number of capacitors and inductors is two
![Pasted image 20230325140158](Attachments/Pasted%20image%2020230325140158.png)
This also means that we need to solve a *second order* differential equation to find the currents and voltages.

# The General 2nd Order Differential Equation for RLC Circuits
$$\frac{d^{2}}{dt^{2}} x(t) + 2 \alpha \frac{d}{dt}x(t) + \omega_0^2 x(t)=f(t)$$
Damping coefficient: $\alpha$
Resonant Frequency: $w_{0}$
Function to be solved (voltage or current): $x(t)$
Forcing function (due to source): $f(t)$

## General Method

1. Use Kirchhoff's and Ohm's laws to write the circuit equations
2. Use the derivative of inductor current
$$v_{L}(t) = L \frac{di_{L}(t)}{dt}$$
And the derivative of capacitor voltage
$$i_{c}=C \frac{dv_{c}(t)}{dt}$$
3. Combine the equations so that the second and the first derivatives of the same variable will appear in a linear combination. **DO NOT USE INTEGRALS** we want differential equations.

When the two storage elements are connected to an equivalent circuit (Nortons or Thevenin) we can use the so-called Direct Method

## Parallel Arrangement

![Pasted image 20230325145839](Attachments/Pasted%20image%2020230325145839.png)

We want to find the current through the inductor, **i** (as a function of time)

Since we want the **current** we use Norton's equivalent circuit.
Apply KCL at top node:
$$\frac{v}{R} + i + C \frac{dv}{dt} = i_{s}$$
But the voltage across inductor, resistor and capacitor is: $v = L \frac{di}{dt}$
(Voltage the same for ALL elements)

Hence: $\frac{L}{R} + i +CL \frac{d^{2}i}{dt^{2}}=i_{s}$

Which is a second order DE
Solve for i(t) and use $v = L \frac{di}{dt}$ to find $v$

## Series Arrangement

We want to find the voltage across the capacitor $v(t)$
Since we want the **voltage** we use Thevenin's equivalent circuit.

Apply KVL around the loop:
$$L \frac{di}{dt} + v + Ri = v_{s} $$
$$\frac{di}{dt} + \frac{v}{L} + \frac{R}{L}i = \frac{v_{s}}{L}$$
Since $C \frac{dv}{dt} = i$ (current is the same for ALL elements)

Hence: $$C \frac{d^{2}v}{dt^{2}} + \frac{v}{L} + \frac{RC}{L} \frac{dv}{dt} = \frac{v_{s}}{L}$$
Or:
$$\frac{d^{2}v}{dt^{2}} + \frac{R}{L}*\frac{dv}{dt}+\frac{1}{LC}v = \frac{v_{s}}{LC}$$
Solve for v(t) and use $C \frac{dv}{dt} = i$ to find i.

# General problem-solving method for 2nd-order circuits

The direct method - Used with equivalent circuits
1. Identify the first and second variables $x_{1}$ and $x_{2}$. These variables are capacitor voltages and/or inductor currents
2. Write one first-order differential equation, obtaining $\frac{dx_{1}}{dt} = f(x_{1}, x_{2})$
3. Obtain an additional first-order differential equation in terms of the second variable so that $\frac{dx_{2}}{dt}=Kx_{1}$ or $x_{1}=\frac{1}{K} \frac{dx_{2}}{dt}$
4. Substitute the equation of step 3 into the equation of step 2, thus obtaining a second-order differential equation in terms of $x_{2}$

```ad-note
Remember - the direct method is useful when the inductor(s) and/or capacitor(s) are connected to an equivalent circuit (Norton's or Thevenin)
```

## Example

![Pasted image 20230326180423](Attachments/Pasted%20image%2020230326180423.png)
*Find the differential equation for i*

Inductor + Capacitor connected to Norton's $\rightarrow$ Use directed method

What we know:
Capacitor voltage $v \rightarrow i=C\frac{dv}{dt}$  

KCL: Resistor current = $i_{s}-i \rightarrow$ Resistor voltage = $R(i_{s}-i)$

Resistor || (Capacitor + Inductor) Therefore same voltage:
$$Ri_{s}-Ri-L \frac{di}{dt} = v$$
Substitute (2) in (1):
$$i = C \frac{d}{dt}(Ri_{s}-Ri-L \frac{di}{dt})=CR \frac{di_{s}}{dt}-CR \frac{di}{dt}-CL \frac{d^{2}i}{dt^{2}}$$
Rearrange:
$$CL \frac{d^{2}i}{dt^{2}} + CR \frac{di}{dt} + i = CR \frac{di_{s}}{dt}$$
$$\frac{d^{2}i}{dt^{t}} + \frac{R}{L} \frac{di}{dt} + \frac{1}{CL}i = \frac{R}{L} \frac{di_{s}}{dt}$$

# Other types of Circuits
Using the direct method can be complicated for complicated circuits
![Pasted image 20230326193104](Attachments/Pasted%20image%2020230326193104.png)
**Two other methods are introduced in the textbook (Dorf):**
1. Differential Operator Method
2. State Variable Method (we will skip this in ELEC2070)

# Differential Operators
Operator "s"
$$s = \frac{d}{dt}$$
$$s x(t) = \frac{dx(t)}{dt}$$
For any order of differentiation:
$$s^{n}x(t) = \frac{d^{n}x(t)}{dt^{n}}$$
No differentiation:
$$s^{0}x(t) = x(t)$$
Integration:
$$\frac{1}{s}x(t) = \int_{- \infty}^{t} x(\tau)d\tau$$
For any order of integration:
$$s^{-n}x(t) = \frac{d^{-n}x(t)}{dt^{-n}}$$
## Finding differential equations using s-operators is now easier

Inductor voltage: $v_{L}(t) = L\frac{di_{L}(t)}{dt} = sL i_{L}(t)$

Capacitor voltage: $v_{c}(t) = \frac{1}{C} \int_{-\infty}^{t} i_{C}(\tau) d\tau=\frac{1}{sC}i_{c}(t)$

Voltages and currents of energy storage elements are now related in an algebraic form (similar to resistors)

Resistor voltage: $v_{R}(t) = R i_{R}(t)$

**Very helpful when solving second (or higher) order circuits**

## Example

![Pasted image 20230326195338](Attachments/Pasted%20image%2020230326195338.png)
Using the **s** operator, the inductor voltages become:
$v_{L_{2}}=sL_{2}i_{2}$, $v_{L_{1}}= sL_{1}(i_{1}-i_{2})$

The two GENERAL mesh equations are now
(1) $v_{s}= R_{1}i_{1}+sL_{1}(i_{1}-i_{2})$
(2) $0 = -sL_{1}(i_{1}-i_{2})+sL_{2}i_{2}+R_{2}i_{2}$

Sub in values for resistances and inductances and create the matrix representation:
$\begin{bmatrix}   2+s & -s \\ -s & 2s+3   \end{bmatrix}$ $\begin{bmatrix}   i_1 \\ i_2    \end{bmatrix}$ = $\begin{bmatrix}   v_{s} \\ 0   \end{bmatrix}$

**The currents can be found using Cramer's Rule**
Speaking of

# Cramer's Rule
Consider a system of *n* linear equations for *n* unknowns, represented in matrix multiplication form as follows:
$$Ax=b$$
Where the *n* x *n* matrix A has a nonzero determinant, and the vector
$$x=(x_{1},x_{2},x_{3},..., x_{n})$$
Is the column vector of the variables.
Then the theorem states that in this case the system has a unique solution, whose individual values for the unknowns are given by:
$$x_{i}=\frac{det(A_i)}{det(A)}$$
Where $A_i$ is the matrix formed by replacing the i-th column of A by the column vector b.

## Applying Cramer's Rule

Cramer's rule means that we need to find **FIRST** the determinant of:  $\begin{bmatrix}   2+s & -s \\ -s & 2s+3   \end{bmatrix}$

Or: $D = (2+s)(2s+3)-s^{2}$

To find $i_{2}$ we need to find the determinant of:
$$D_{i_{2}}=\begin{bmatrix}   2+s & v_{s} \\ -s & 0   \end{bmatrix}$$
AND then $i_{2}=\frac{D_{i_2}}{D}=\frac{sv_s}{(2+s)(2s+3)-s^{2}}$
$i_{2}=\frac{D_{i_1}}{D}$

Hence $i_{2} = \frac{sv_s}{4s+6+2s^{2}+3s-s^2}$

or $(s^{2}+7s+6)i_{2}= sv_{s} \rightarrow [s^{2}+7s+6]i_{2}=sv_s$

Convert back to differential equation form:
$$\frac{d^{2}}{dt^{2}}i_{2} + 7 \frac{d}{dt}i_{2}+6i_{2}= \frac{d}{dt}v_s$$

# Solving the differential equations for second order circuits
The general form of a (linear) second order differential equation:
$$a_{2}\frac{d^{2}}{dt^{2}}x(t)+a_{1}\frac{d}{dt}x(t) +a_{0}x(t)=f(t)$$
Where:
$x(t)=$ Function to be solved
$f(t)=$ Forcing function (due to the source)
$a_n=$ Constants

The same equation using *s* operators:
$$a_{2}s^{2}x(t)+a_{1}sx(t) + a_{0}x(t) = f(t)$$
Has a general solution:
$$x(t) = x_{n}(t) + x_{f}(t)$$
Where:
$x(t) =$ The Complete Response
$x_{n}(t) =$ Natural Response
$x_{f}(t) =$ Forced Response

# Natural Response for Second Order Circuits

## The Characteristic Equation

The natural response is obtained by zeroing the forcing function

**In General:**
$$a_{2}s^{2}x_{n}(t) + a_{1}sx_{n}(t) + a_{0}x_{n}(t) = 0$$

The solution to this characteristic equation is the natural response, $x_{n}(t)$
Natural response must be an exponential (since an exponential is proportional is ALL its derivatives)
$$x_{n}(t) = Ae^{st}$$
Substitute: $a_{2}As^{2}e^{st}+a_{1}Ase^{st}+a_{0}Ae^{st}= 0$

Since $x_{n}(t)=Ae^{st}$ then: $a_{2}s^{2}x_{n}(t)+a_{1}sx_{n}(t)+a_{0}x_{n}(t) = 0$

Or: $(a_{2}s^{2}+a_{1}s+a_{0})x_{n}(t) = 0$

$x_{n}(t) = 0$ is trivial, therefore we seek the solution to: $$a_{2}s^{2}+ a_{1}s + a_{0} = 0$$
This is the **CHARACTERISTIC EQUATION**

## Finding the Natural Response

The solution to the equation $a_{2}s^{2}+ a_{1}s + a_{0} = 0$ can be found using the quadratic equation
$$s_{1,2} = \frac{-a_{1}+- \sqrt{a_{1}^{2}-4a_{2}a_{0}}}{2a_2}$$
The natural response can now be given by:
$$x_{n}(t) = A_{1}e^{s_{1}t} + A_{2}e^{s_{2}t}$$
*Where $A_{1}$ and $A_{2}$ are obtained from the initial conditions*

The roots $s_{1}$ and $s_{2}$ are known as the **Natural Frequencies**.

The reciprocal magnitude of the frequencies are the **TIME CONSTANTS**

## Natural Response of an Unforced (source free) circuit: Parallel RLC Circuit

![Pasted image 20230326221112](Attachments/Pasted%20image%2020230326221112.png)

For ALL RLC circuits, we need to solve:  $a_{2}\frac{d^{2}}{dt^{2}}x(t)+a_{1}\frac{d}{dt}x(t)+a_{0}x(t)=f(t)$

This can be simplified to (this form is relevant to RLC circuits): $\frac{d^{2}}{dt^{2}}x(t)+2\alpha \frac{d}{dt}x(t)+\omega_0^2 x(t)=f(t)$

Since $f(t)=0$ (for the natural response) the general equation is: $\frac{d^{2}}{dt^{2}}x(t)+2 \alpha \frac{d}{dt} x(t) + \omega_0^2 x(t)=0$

### General RLC Equation

The characteristic equation for the general RLC equation (for the natural response) is:
$$s^{2}+2\alpha s + \omega^2_0=0$$
The roots of this characteristic equation are:
$s_{1}= -\alpha + \sqrt{\alpha ^{2}-\omega^2_0}$ and $s_{2}=-\alpha - \sqrt{\alpha^{2}-\omega^2_0}$
![Pasted image 20230326223226](Attachments/Pasted%20image%2020230326223226.png)
Apply KCL: $$\frac{v}{R}+\frac{1}{L}\int^{t_{0}v}d\tau +i(0) + C\frac{dv}{dt}=0$$
### Parallel RLC circuit (with $f(t) = 0$)

Differentiating both sides:
$$C \frac{d^{2}v}{dt^{2}}+\frac{1}{R} \frac{dv}{dt}+\frac{1}{L}v=0$$
Divide by C, and using the s operator:
$$s^{2}+\frac{1}{RC}s+\frac{1}{LC}=0$$
Comparing with the **general equation** we have: $\alpha = \frac{1}{2RC}$ and $\omega^{2}_{0}=\frac{1}{LC}$

The roots of the characteristic equation are therefore:
$s_{1}= -\frac{1}{2RC}+\sqrt{(\frac{1}{2RC})^{2}-\frac{1}{LC}}$ and $s_{2}= -\frac{1}{2RC}-\sqrt{(\frac{1}{2RC})^{2}-\frac{1}{LC}}$

## The Solution for the Natural Response

General Natural Response:
$$v_{n}= A_{1}e^{s_{1}t} + A_{2}e^{s_{2}t}$$

Where Natural Frequencies are given by:
$$s_{1}= -\alpha + \sqrt{\alpha^{2}-\omega_0^2}$$
$$s_{2}=-\alpha + \sqrt{\alpha^{2}-\omega_0^2}$$
For parallel RLC circuit:
$\alpha = \frac{1}{{2RC}}$ and $\omega_0^2=\frac{1}{LC}$

We defined the **Damped Resonant Frequency** as:
$$w_{d}= \sqrt{w_0^2-\alpha^2}$$
The natural frequencies now become

$s_{2}=-\alpha + jw_d$ and $s_{2}=-\alpha - jw_d$

## Summary

For **Second Order Circuits**:
![Pasted image 20230329124544](Attachments/Pasted%20image%2020230329124544.png)

# Damping
The root of the characteristic equation assume three possible conditions:

a. 2 real and distinct roots when: $\alpha^{2}>w^2_0$
b. 2 real and equal roots when : $\alpha^{2}=\omega^2_0$
c. 2 complex roots when: $a^{2}<w^2_0$

![Pasted image 20230329124838](Attachments/Pasted%20image%2020230329124838.png)

# The Complete Response

General differential equation:
$$\frac{d^2}{dt^{2}}x(t)+2\alpha\frac{d}{dt}x(t)+\omega^2_0x(t)=f(t)$$

Characteristic equation for the Natural Response:
$$s^{2}+2\alpha s+\omega^2_0=0$$


**WE WILL BE GIVEN THESE IN THE TEST**
![Pasted image 20230329125220](Attachments/Pasted%20image%2020230329125220.png)

## Example

![Pasted image 20230329125242](Attachments/Pasted%20image%2020230329125242.png)

### Applying the initial condition: i(0)

Take the Derivative of:
$$v_{n}= A_{1}e^{s_{1}t} + A_{2}e^{s_{2}t}$$
**(1)** - And apply at t=0, we get:
$$\frac{dv_n(0)}{dt}=s_{1}A_{1}+s_{2}+A_{2}$$
**(2)** Our original KCL equation:
$$\frac{v}{R}+\frac{1}{L} \int^t_0vd\tau+i(0)+C\frac{dv}{dt}=0$$
Becomes (at t=0) 
$$\frac{dv(0)}{dt}=-\frac{v(0)}{RC}-\frac{i(0)}{C}$$

Equating **(1) and (2)** we get:
$$s_{1}+A_{1}+s_{2}+A_{2}=-\frac{v(0)}{RC}-\frac{i(0)}{C}$$
Placing the values for $s_1,s_2,v(0),i(0)$ we get:
$$-A_{1}-2A_{2}=\frac{10}{1/3}-\frac{2}{1/2}$$
Now we have 2 equations for out 2 unknowns. Easy.

**Actual Solution:**
$$v_{n}= (-14e^{-t}+24e^{-2t}V)$$
# Summary
![Pasted image 20230329130434](Attachments/Pasted%20image%2020230329130434.png)
![Pasted image 20230329130446](Attachments/Pasted%20image%2020230329130446.png)

# The Complex Frequency Plane
![Pasted image 20230329130511](Attachments/Pasted%20image%2020230329130511.png)
![Pasted image 20230329130546](Attachments/Pasted%20image%2020230329130546.png)
