---
date: 2023-11-12
tags: []
status: Incomplete
Relevant Docs: []
Relevant Questions: []
Relevant Notes: []
Practical Docs: 
Relevant Links:
---
# Maths and Distilled Info
---


# Conceptual Info
---

## Overview
![](Attachments/Pasted%20image%2020231112150231.png)
The above block diagram describes a power electronic system. It works similarly to feedback systems with motors.

![](Attachments/Pasted%20image%2020231112150629.png)
Most practical topologies require an energy storage element. Which also decouples the input and output side.

**Power flow through converters**
![](Attachments/Pasted%20image%2020231112151208.png)
- Converter is a generalized term
- An AC/DC converter is shown here
- The converter is in **Rectifier** mode when converting from AC to DC
- The converter is in **Inverter** mode when converting from DC to AC

## AC Motor Drive
![](Attachments/Pasted%20image%2020231112151429.png)
- Converter 1 Rectifies line-frequency AC to DC
- Capacitor acts as a filter, stores energy and decouples both sides
- Converter 2 synthesises low-frequency AC to motor
- Polarity of DC-bus voltage remains unchanged.
	- Ideally suited for transistors of converter 2

## Power Diodes
![](Attachments/Pasted%20image%2020231112153056.png)
![](Attachments/Pasted%20image%2020231112153124.png)
When diodes turn off they conduct current in the opposite direction for a short time. *Fast-recovery diodes have a small reverse-recovery time*

## Thyristors
Essentially a diode that can be toggled with a pulse to the gate. 
![](Attachments/Pasted%20image%2020231112153721.png)
- semi controlled device
- Latches ON by a gate-current pulse if forward biased
- Turns-off if current tries to reverse

![](Attachments/Pasted%20image%2020231112153833.png)
For a successful turn-off, reverse voltage required for an interval greater than the turn-off interval

## Electric Motors
Electric motors presently used for speed control applications are:
1. DC Excited
	- Shunt
	- Series
	- Compound
	- Separately excited
	- Switched Reluctance Motors
2. AC Excited
	- Induction
	- Wound rotor synchronous
	- Permanent magnet synchronous
	- Reluctance motors
 [Week 2 - DC Motors and Selection in MTRN Systems](Week%202%20-%20DC%20Motors%20and%20Selection%20in%20MTRN%20Systems.md)


## Power Electronics Based Control of DC Motor
![](Attachments/Pasted%20image%2020231112210234.png)
We can replace a switch with an electronically controlled transistor to implement PWM control (Chopped DC)

## DC Motor H-Bridge
![](Attachments/Pasted%20image%2020231112211118.png)

•The DC motor needs four transistors to operate the DC motor
•The combination of transistor is called an H-Bridge
•Transistors are switched diagonally to allow DC current to flow in the motor in either direction
•The transistors can be Pulse Width Modulated to reduce the average voltage at the motor, useful for controlling current and speed
![](Attachments/Pasted%20image%2020231112211416.png)

## AC Drives compared to DC Drives
**Advantages of AC drives**
 1. For the same rating, ac motors are lighter in weight as compared to dc motors.
2. AC motors require low maintenance.
3. AC motors are less expensive.
4. AC motors can work in dangerous areas like chemical, petrochemical etc.

**Disadvantage of AC drives**
1. Power converters for the control of ac motors are more complex.
2. Power converter for ac drives are more expensive.
3. Power converters for ac drives generate harmonics in the supply system and load circuit.

### Industrial Applications
Induction motors with squirrel cage rotors are the workhorse of industry because of their low cost and rugged construction.

When Squirrel cage induction machine is operated directly from the line voltages(60 Hz/50 Hz essentially constant voltage) an Induction motor is operated at constant speed. However in the industry we required to vary the speed of an Induction motor.  This can be done by Induction motor drives.

Main application of Induction Motor drives:
Fans, Compressor, Pumps, blowers, machine tools like lathe, drilling machine, lifts, conveyer belts etc.


## Methods of Speed Control of Induction Motors
(1)Stator voltage Control
(2)Stator Frequency Control
(3)Stator Current Control
(4)V/F Control
(5)Slip power recovery Control (Wound Rotor Induction Machine)

## Torque-Speed Curve of Induction Motors
![](Attachments/Pasted%20image%2020231112212529.png)
- On startup draws up to seven times rated current (inrush current)
- Normally delivers 1.5 times rated torque when starting
- When at operating at base speed, if load is increased slip will increase and motors will slow down.
- If load is increased beyond breakdown torque, the machine will not be able to recover.

## V/Hz Theory Background
- An inductor motor draws the rated current and delivers the rated torque at the base speed
- Motor can take up to 2.5 load increase with 20% drop in speed

Assume voltage applied to the motor is AC, and the voltage drop across the armature resistance is very small. Then at steady state we have:
$$\hat{V} \approx j \omega\hat{\Lambda}$$
Where:
V = Voltage applied at the stator
$\omega$ = Slip speed
$\hat{\Lambda}$ = Flux

$$V \approx \omega \Lambda$$
$$\Lambda \approx \frac{V}{\omega} = \frac{1}{2 \pi} \frac{V}{f}$$
Since V/f relation is constant the flux is also constant. The **torque is independent of the supplied frequency**
Since flux is maintained constant, **the torque developed depends purely on slip speed.**
![](Attachments/Pasted%20image%2020231112213527.png)

### Control Loops
**Open loop**
![](Attachments/Pasted%20image%2020231112214019.png)
The Frequency and amplitude drives the motor, with no feedback from the motor to determine speed.

**Closed Loop**
![](Attachments/Pasted%20image%2020231112214748.png)
A speed sensor is used to determine the real speed, and its difference from the target. This can be used to accurately control the speed of the motor.

## 3 Phase PWM Inverter
![](Attachments/Pasted%20image%2020231112215140.png)
We are able to turn the DC voltage Vd into 3 phase power with a 3 phase PWM controlled inverter. 
3 Phase legs (labelled as A,B,C), each produce one of the phases required for 3 Phase power

the switches of the inverter are controlled based on a comparison of a **sinusoidal control signal** and a **triangular switching signal**. 
The sinusoidal control waveform **establishes the desired fundamental frequency** of the inverter output, while the triangular waveform **establishes the switching frequency of the inverter**.  
*The ratio between the frequencies of the triangle wave and the sinusoid* is referred to as the **modulation frequency ratio**
This results in the PWM controlled signal that averages to the fundamental line voltage sine wave.

## Single Phase Full-Bridge DC-AC Inverter
![](Attachments/Pasted%20image%2020231112220448.png)
Consists of two inverter legs, making a single phase AC signal $v_{o}$. This is the difference between voltages on the two legs.

### Half Bridge Inverter
![](Attachments/Pasted%20image%2020231112220347.png)
Capacitors provide the mid-point. Only a single inverter leg, similar to a half bridge rectifier.

## Square-Wave Mode of Operation
![](Attachments/Pasted%20image%2020231112221228.png)
We 


# Additional Content
---
