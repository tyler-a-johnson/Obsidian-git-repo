---
date: 2023-09-20
tags: 
status: Incomplete
Relevant Docs:
  - "[[Attachments/ELEC2005 Week 6 Lecture MOSFETs-part-2_2023_UPDATED.pdf]]"
  - "[[Attachments/sedra8e_solvedproblems_ch05.pdf]]"
Relevant Questions: []
Relevant Notes: []
Practical Docs: 
Relevant Links: https://www.physicsforums.com/threads/infinite-capacitance-uses-implications-in-jfet-circuits.224568/
---
I should sum that up, an infinite capacitor would pass all frequencies except the DC component of a signal. The DC component would see the cap as an open, but all other frequencies would see it as a short. The problem is probably just telling you that the circuit is decoupled from DC and coupled with AC.  

# How to make an Amplifier or Switch
![[Attachments/Pasted image 20231002231526.png]]

![[Attachments/Pasted image 20231008203958.png]]

# MOSFET

## Voltage Gain
![[Attachments/Pasted image 20231008204017.png]]
$$v_{DS}=V_{DD}-i_{D}R_{D}$$

In saturation (Q):
$$i_{D}=\frac{1}{2}k_{n}(v_{GS}-V_{t})^{2}$$
$$v_{DS}=V_{DD}- \frac{1}{2}R_{D}k_{n}(v_{GS}-V_{t})^{2}$$

**Gain:**
$$A_{v}= \frac{\delta v_{DS}}{\delta v_{GS}}=-k_{n}R_{D}(v_{GS}-V_{t})=-k_{n}R_{D}V_{OV}$$
$$i_{D}=\frac{1}{2}k_{n}V^{2}_{OV} \rightarrow A_{v}= \frac{i_{D}R_{D}}{V_{OV}/2}$$

$$|A_{v,max}| = \frac{V_{DD}}{V_{OV}/2}$$ A max is typically ~10.

## Small Signal Analysis
![[Attachments/Pasted image 20231008210308.png]]
![[Attachments/Pasted image 20231008210323.png]]
DC voltages (VGS and VDD) set the bias point (Q) and AC signal vgs is amplified.

### Example
![[Attachments/Pasted image 20231008211116.png]]
Consider the amplifier shown,

**Transistor:**
$V_{t}= 0.4V$
$k_{n}' = 0.4 mA/V_2$
$W/L$ = 10
$\lambda = 0$
$V_{DD}=1.8V$
$R_{D}= 17.5k \ohm$
$V_{GS}=0.6V$

a) For Vgs = 0 (hence Vds = 0) find Vov I, VDS and Ay
b) DC bias point: what mode?

![[Attachments/Pasted image 20231008211647.png]]
Saturation with VOV = 0.2V and ID = 0.08mA, VDS = 0.4V
Av = -14

c) maximum symmetrical swing allowed at the drain? Hence find maximum allowable amplitude of sinusoidal $V_{gs}$
d) What is the criterion for our gain calculation to be applicable
![[Attachments/Pasted image 20231008212123.png]]

$V_{DS}>V_{OV}$ hence allowed swing at $V_{DS}$ is 0.2V Swing.

$\hat{v_{ds}}<0.2V$      $v_{gs} \leq \frac{0.2}{|A_{v}|}=14.2mV$

![[Attachments/Pasted image 20231008212446.png]]
![[Attachments/Pasted image 20231008212506.png]]
$$v_{DSmin} \geq v_{GSmax}-V_{t}$$
$$0.4V-\hat{v_{ds}}\geq 0.6V+\hat{v_{gs}}-0.4V$$
![[Attachments/Pasted image 20231008212732.png]]
$$v_{gs} \leq \frac{0.2}{|A_{v}|+1}=13.3mV$$

## Small Signal Approximation - Saturation Region
Similar technique for linearization as for the exponential diode and the BJT. No need for [[Taylor Series]].

$v_{GS} = V_{GS}+v_{gs}$

$i_{D} = I_{D}+i_{d}$

$i_{D =\frac{}1}{2} k_{n}(v_{GS}-V_{t})^2$

If $v_{gs} <<2(V_{GS}-V_{t})$


$$i_{D} \approx \frac{1}{2}k_{n}(V_{GS}-V_{t})^{2}+k_{n}(V_{GS}-V_{t})v_{gs}$$

$$i_{d} = g_{m}v_{gs}$$
$$g_{m}=k_{n}(V_{GS}-V_{t})$$

![[Attachments/Pasted image 20231008214644.png]]
![[Attachments/Pasted image 20231008214910.png]]

$v_{GS}=V_{GS}+v_{gs}$
$i_{D} = I_{D}+i_{d}$
$i_{D}= \frac{1}{2}k_{n}(v_{GS}-V_{t})^{2}$

![[Attachments/Pasted image 20231008215144.png]]
