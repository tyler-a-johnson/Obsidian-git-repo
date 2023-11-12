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


# Additional Content
---
