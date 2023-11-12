---
date: 2023-10-04
tags:
  - MTRN/3026
status: Incomplete
Relevant Docs:
  - "[Week_9_Basic_Hydraulics](Attachments/Week_9_Basic_Hydraulics.pdf)"
Relevant Questions: 
Relevant Notes: 
Practical Docs: 
Relevant Links:
---
[Week 9](Attachments/Week_4_Basic_Hydraulics(1).pdf)
# Maths and Distilled Info
---

## Fundamental Laws of Hydraulics
- When a force (F) is applied to an area (A) of an enclosed liquid, a pressure (P) is produced.
$$\text{Pressure} = \frac{\text{Force}}{\text{Area}}$$

Can be quoted in Bar, pounds per square inch (PSI) or Pascal (Pa)
For SI units:
**Force** in Newtons (N)
**Area** is in square meters ($m^{2}$)

1 Pascal = 1N/m^3
1 Bar = 100,000 Pa = 10^5

### [[Pascal's Law]]
*The pressure in a confined fluid is transmitted equally to the whole surface of its container.*
![](Attachments/Pasted%20image%2020231112125150.png)
I a downward force is applied to piston A it will be transmitted through the system to Piston B

Fluid pressure is measured in terms of the force exerted per unit area.
$$P = \frac{F_{1}}{A_{1}}=\frac{F_{2}}{A_{2}}$$
We can re-arrange this to determine any given variable with 

## Hydraulic Symbols
Used for hydraulic schematics. Useful for communicating to other engineers and planning.
![](Attachments/Pasted%20image%2020231112130723.png)

**Hydraulic Power Pack**
![](Attachments/Pasted%20image%2020231112130755.png)
![](Attachments/Pasted%20image%2020231112140948.png)

Cylinders and other other actuators also differ with respect to supply and direction arrows. As well as the 
![](Attachments/Pasted%20image%2020231112141112.png)


## Flow Rate VS Flow Velocity

The flow rate is the volume of fluid that moves through the system in a given period of time. This determines the speed at which the output will operate.

Flow velocity of a fluid is the distance the fluid travels in a given period of time.
$$Q = VA$$
Where:
Q = Flow rate ($\frac{m^{3}}{s}$)
V = Flow velocity (m/s)
A = Area (m^2)

## [[The Continuity Equation]]
If we assume fluid is incompressible and a constant flow rate, we can assume a steady flow. this means whatever volume of fluid flows through one section of the system must also flow through any other section.
![](Attachments/Pasted%20image%2020231112131353.png)
$$Q_{1} = Q_{2}$$
Therefore,
$$V_{1} A_{1} = V_{2}A_{2}$$
From the Continuity equation is shows that in a system with a steady flow rate, a reduction in area (pipe size) corresponds to an increase in flow velocity by the same factor.

## Pressure Gauges
![](Attachments/Pasted%20image%2020231112133935.png)
The outer black scale indicates pressure units of bar, and the inner red scale indicates pressure units in psi


## [[Bernoulli's Principle]] and the Venturi Effect

Essentially, higher velocity means lower pressure. High velocity fluid and gas can create a low pressure region, 
![](Attachments/Pasted%20image%2020231112134622.png)
![](Attachments/Pasted%20image%2020231112135000.png)

**Bernoulli's Equation**
For any point along a flow tube or streamline:
$$p_{1} + \frac{1}{2}p v^{2}_{1} + pgy_{1} = p_{2}+\frac{1}{2}pv^{2}_{2} + pgy_{2} = \text{Constant}$$
Applies ONLY to ideal fluid (Zero viscosity)

![](Attachments/Pasted%20image%2020231112135714.png)
![](Attachments/Pasted%20image%2020231112135738.png)


# Conceptual Info
---

## Intro
- **Fluid Power** is the method of using pressurized fluid or gas to transmit energy
- Liquid and gas are both referred to as fluid. These are broken down into **Pneumatics** and **Hydraulics** respectively

- Air is **compressible**
- Liquid is **incompressible**

Used commonly where mechanisms require large forces and precise control

## Hydraulic System Components
All industrial systems consist of the following basic components.
![](Attachments/Pasted%20image%2020231112125727.png)
- **Power Input Device**: The pump and motor combo is referred to as the power input device. The pump provides power by pumping oil from the reservoir tank.
- **Control Device**: Valves control the direction, pressure, and flow of the hydraulic fluid from the pump to the actuator
- **Power Output Device**: Hydraulic power is converted to mechanical power inside the power output device. Can be a piston for linear motion or a motor for rotational
- **Liquid**: Typically oil
- **Conductors**: Pipes or hoses needed to transmit oil

**Hydraulic Power Pack**
Combines the pump, motor, and tank/reservoir. Provides the energy required for the system.
![](Attachments/Pasted%20image%2020231112130045.png)


## Hydraulics VS Pneumatics
| Pneumatic Control                     | Hydraulic Control       |
| ------------------------------------- | ----------------------- |
| Clean (no oil)                        | Infinitely controllable |
| Fast                                  | Produces large forces   |
| Intrinsically safe (not flammable)    | Requires high pressure  |
| Overload safe                         | Requires Heavy Duty components                        |
| Inexpensive for individual components |                         |

**Dangers of Compressed air**
Air Embolism (air bubbles in the bloodstream????)
Hose/pipe whipping
Crushing/Cutting

**Dangers of high pressure oil**
- High pressure oil injection (can blast straight through skin and muscle)
- Oil burns (hot oil/corrosive)
- Crushing/cutting
- Carcinogens

****




# Additional Content
---
