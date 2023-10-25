#ELEC/2070 #Circuits #UniNotes

**Slides:**
[[Attachments/ELEC2070 Week 6 2023 Complete Response and Stability.pdf]]

**Lab Sheet**:
[[Attachments/ELEC2070 2023 Laboratory Worksheet for Weeks 6 and 7.pdf]]

# Complete Response for Switched First order Circuits
![[Attachments/Pasted image 20230404131122.png]]

# With Time-Varying Sources
1. Find the differential equation using Kirchhoff's and Ohm's laws. Need an initial condition for the complete response.
2. Find the forced response (including coefficients) using the differential equation (no initial conditions are needed)
3. Find the time constant; then write the natural response (with one unknown coefficient)
4. Add two responses together (the complete response now has one unknown coefficient)
5. Use the initial condition to find the unknown coefficient
![[Attachments/Pasted image 20230419191356.png]]

## A Useful Relationship
A cosine waveform and a sine waveform with the same frequency, when added together, make a cosine waveform with a phase shift
$$A*cos(\omega t) + B*sin(\omega t) = \sqrt{A^{2}+ B^{2}}*cos(\omega t - \theta)$$

Provable using Euler's formula: $\theta=tan^{-1}(\frac{B}{A})$

# Complete Response for Second Order Circuits
$$x(t) = x_{n}(t) + x_{f}(t)$$
1. Find the differential equation and the initial conditions using Kirchhoff's and Ohm's laws.
2. Find forced response (including coefficients) from the differential equation (no initial conditions needed)
3. Find the natural frequencies; then write the natural response (with two unknown coefficients if second order)
4. Add together (complete response with two unknown coefficients if second order)
5. Use two initial conditions to find the remaining two unknown coefficients, for example. $x(0)$ and $\frac{{dx(0)}}{dt}$

## Summary for source-free RLC Circuits
![[Attachments/Pasted image 20230419192818.png]]

# Types of Natural Responses for Second Order Circuits
Differential Equation:
$$\frac{{d^{2}}}{dt^{2}}x(t) + 2\alpha \frac{d}{dt}x(t)+\omega_0^2 x(t)=f(t)$$

Characteristic equation:
$$s^{2}+2\alpha s+\omega_0^2=0$$
![[Attachments/Pasted image 20230419194128.png]]
Alternatively, we could use, 
Damping Ratio: $$\zeta=\frac{\alpha}{\omega_{0}}$$
Where
$\zeta < 1 \rightarrow$ Under damped
$\zeta = 1 \rightarrow$ Critically damped
$\zeta > 1 \rightarrow$ Over damped

## Example
![[Attachments/Pasted image 20230419194621.png]]
![[Attachments/Pasted image 20230419194724.png]]
# Parallel RLC Circuit Problem
![[Attachments/Pasted image 20230419194818.png]]
Consider a parallel RLC circuit having an inductance of $10mH$ and a capacitance of $100\mu F$. Determine the resistor values that would lead to overdamped and underdamped responses.

We first calculate the resonant frequency of the circuit:
$$\omega_{0}=\sqrt{\frac{1}{LC}}=\sqrt{\frac{1}{(10*10^{-3})(100*10^{-6})}}$$
And overdamped response will result if $\alpha >\omega_{0}$: an underdamped response will result if $\alpha < \omega_0$. Thus,
$$\frac{1}{2RC}>10^3$$
and so
$$R<\frac{1}{(2000)(100*10^{-6})}$$
Or
$$R < 5 \ohm$$
Leads to an overdamped response; $R > 5\ohm$ leads to an underdamped response.

## Useful equations
![[Attachments/Pasted image 20230419195639.png]]
```ad-seealso

Find more examples in the slides
```


# Stability of Circuits with Capacitors and Inductors

```ad-success
title: Stable
$R_{t}> 0$
Exponentially decaying natural response
```
```ad-failure
title: Unstable
$R_{t}\le0$
Exponentially increasing natural response
```

$x_{n}(t) = Ae^{-t/\tau}$    $\tau = R_{t}C$   or   $\tau = L/R_t$

## Stability of Second Order Circuits
![[Attachments/Pasted image 20230419200718.png]]
Many such examples in the pdf
