---
date: 2023-10-04
tags:
  - MTRN/3026
status: Incomplete
Relevant Docs:
  - "[Week-8(Pneumatic system)](Attachments/Week-8(Pneumatic%20system).pdf)"
  - "[pneumatics_system-notes](Attachments/pneumatics_system-notes.pdf)"
Relevant Questions: 
Relevant Notes: 
Practical Docs: 
Relevant Links:
---

# Maths and Distilled Info
---

## Gas Laws
**Boyle/Marriot's Law:** If temperature remains constant, the product of pressure and volume of a particular quantity of gas is constant. $$PV=C$$

**Charles' Law:** If pressure remains constant, the volume of gas is proportional to temperature. $$\frac{V1}{V2}=\frac{T1}{T2}$$

**Lussac's Law:** If volume remains constant, the pressure of a particular quantity if gas is directly proportional to its absolute temperature. $$\frac{p1}{p2}=\frac{T1}{T2}$$
**General Gas Law:** Combination of all is the general law $$\frac{p1V1}{T1}=\frac{p2V2}{T2}$$


## [Compressors - Gas](../../../Distilled%20Notes/Compressors%20-%20Gas.md)
![Pasted image 20231017160356](Attachments/Pasted%20image%2020231017160356.png)
Air capacity of air compressors are generally rated at atmospheric conditions. Equation used for the calculation is $$V1=\frac{p2*V2*T1}{p1*T2}$$
Power required to drive compressors:
$$kW Required = \frac{p_{in}Q}{17.1}[(p_{in}/p_{out})^{0.286}-1]$$
$p_{in}$ is the inlet atmospheric pressure (psia, kPa abs)
$p_{out}$ is the outlet atmospheric pressure (psia, kPa abs)
$Q$ is the flow rate (SCFM. standard m3/min)'

### Air Filter
**The size of a air reservoir is given by:**
$$V_{r}= \frac{101t(Q_{r}-Q_{c})}{p_{max}-p_{min}}$$

**Where Vr = Reservoir Size**
t = Times that the reservoir can supply required amount of air (min)
Qr = Consumption rate of pneumatic system $(m^{3}/min)$
Qc = Output flow rate of compressor $(m^{3}/min)$
Pmax = Maximum pressure in reservoir (kPa)
Pmin = Minimum pressure level in reservoir (kPa)

## Typical Pneumatic System
![Pasted image 20231017180316](Attachments/Pasted%20image%2020231017180316.png)

**Actuating systems:** Either it can be manual or solenoid based

**Air pressure losses in pipelines:**  Due to friction, while air flows through a pipe, it loses energy. The loss shows up as pressure loss, which can be calculated:
$$p_{loss}= \frac{cLQ^{2}}{3600 (CR)d^{5}}$$
*Where:*
$p_{loss}$ = pressure loss (psi)
c = experimentally determined co-efficient
L = length of pipe
Q = Flow rate
CR = Compression ration, pressure in pipe/atmospheric pressure
d = Inside diameter of pipe (**in**)

Coefficient c can be represented as a function of the inside diameter of the pipe:
$$c = \frac{0.1205}{d^{31}}$$

# Conceptual Info
---
## Basics
**Advantages if using compressed air as a source:**
1. Cleanliness
2. Pressure is transmitted undiminished in all direction throughout the system
3. Low cost
4. Best solution for jig and fixture systems, automation lines, pick and place machines

**Disadvantages:**
- Typical max pressure for a pneumatic system is 7 to 10 bars. Unsuitable for heavy duty loads usually
- Exploding components?

## Bar
Using SI unit Pascal
$$1 \text{ bar} = 100,000Pa=100,000N/m^{2}$$

**1 Bar also equals:**
$1,000,000$ Ba (bayre)
*Approximately equal to:*
0.987 atm
14.5038 psi Absolute
29.53 inHg
750.06 mmHg
750.06 Torr
1019.72 Centimetres of water (cmH2O)

## [Compressors - Gas](../../../Distilled%20Notes/Compressors%20-%20Gas.md)
Compresses gas from a low inlet pressure (usually atmosphere) to a higher desired pressure. This is done with a cam and piston to physically compress the gas.
![Pasted image 20231017160356](Attachments/Pasted%20image%2020231017160356.png)
Air capacity of air compressors are generally rated at atmospheric conditions. Equation used for the calculation is $$V1=\frac{p2*V2*T1}{p1*T2}$$
Power required to drive compressors:
$$kW Required = \frac{p_{in}Q}{17.1}[(p_{in}/p_{out})^{0.286}-1]$$
$p_{in}$ is the inlet atmospheric pressure (psia, kPa abs)
$p_{out}$ is the outlet atmospheric pressure (psia, kPa abs)
$Q$ is the flow rate (SCFM. standard m3/min)'

### Air Filter
![600](Attachments/Pasted%20image%2020231017161939.png)
![300](Attachments/Pasted%20image%2020231017160958.png)
Inlet air is filtered before use. Air needs to be free of moisture and contamination. (5 micron filter or less)

**Particulate Matter, or PM**: Term for particles found in the air, including *dust, dirt, soot, smoke, and liquid droplets.* Particles can be suspended in the air for long periods. Some can get so small you need an electron microscope.


#### Principles of Operation
**The size of a air reservoir is given by:**
$$V_{r}= \frac{101t(Q_{r}-Q_{c})}{p_{max}-p_{min}}$$

**Where Vr = Reservoir Size**
t = Times that the reservoir can supply required amount of air (min)
Qr = Consumption rate of pneumatic system $(m^{3}/min)$
Qc = Output flow rate of compressor $(m^{3}/min)$
Pmax = Maximum pressure in reservoir (kPa)
Pmin = Minimum pressure level in reservoir (kPa)

## Pneumatic System Components

**Air pressure regulator:** Used to adjust the pressure of the pneumatic system.
![Pasted image 20231017174439](Attachments/Pasted%20image%2020231017174439.png)

**Air Lubricator:** Ensures proper lubrication of the system
![Pasted image 20231017174548](Attachments/Pasted%20image%2020231017174548.png)

**Air service unit:** The function is to ensure preparation of optimum compressed air for a specific pneumatic system.
![Pasted image 20231017174701](Attachments/Pasted%20image%2020231017174701.png)
![Pasted image 20231017174709](Attachments/Pasted%20image%2020231017174709.png)

**Pneumatic Silencer:** A silencer may be used to decrease the noise in the outlet of valves. Usually they are made from porous plastic or bronze.
![Pasted image 20231017175232](Attachments/Pasted%20image%2020231017175232.png)

**Pneumatic Cylinder:** The cylinders convert energy of the compressed air into linear motion which extend or retract the piston rod.
![800](Attachments/Pasted%20image%2020231017175339.png)
![600](Attachments/Pasted%20image%2020231017175408.png)
**Pneumatic Rotary Actuator:** Convert energy of the compressed air into rotary motion. Most of them are Vain air monitor.
![Pasted image 20231017175607](Attachments/Pasted%20image%2020231017175607.png)

**Pneumatic Valves:** The valves are used to control flow, pressure and direction of airflow.
![Pasted image 20231017175701](Attachments/Pasted%20image%2020231017175701.png)

### Pipes
![Pasted image 20231017175740](Attachments/Pasted%20image%2020231017175740.png)
**Pipe materials and size:** Air systems are normally plumbed with Schedule 40 black iron pipe. (*galvanized pipe is not recommended because some galvanizing material may flake off and get into moving parts*)
Several other available plumbing materials could be used for air piping because pressure us relatively low.

Some mechanics recommend plastic pipe, but be aware a few synthetic compressor lubricants attack plastic and cause it to lose strength. This type of damage weakens the plastic until it bursts. 
*Never use any piping material not specifically designate by code.*

## Typical Pneumatic System
![Pasted image 20231017180316](Attachments/Pasted%20image%2020231017180316.png)

**Actuating systems:** Either it can be manual or solenoid based

**Air pressure losses in pipelines:**  Due to friction, while air flows through a pipe, it loses energy. The loss shows up as pressure loss, which can be calculated:
$$p_{loss}= \frac{cLQ^{2}}{3600 (CR)d^{5}}$$
*Where:*
$p_{loss}$ = pressure loss (psi)
c = experimentally determined co-efficient
L = length of pipe
Q = Flow rate
CR = Compression ration, pressure in pipe/atmospheric pressure
d = Inside diameter of pipe (**in**)

Coefficient c can be represented as a function of the inside diameter of the pipe:
$$c = \frac{0.1205}{d^{31}}$$

**Consideration of Pneumatic Circuit Design**
1. Safety
2. Performance
3. Efficiency
4. Costs

### Symbols for Pneumatic Circuit Design
• The standard for fluid power symbols is ISO 1219-1. This is a set of basic shapes and rules for the construction of fluid power symbols 
• **Cylinders can be drawn to show their extreme or intermediate positions of stroke** and any length above their width 
• **Valves show all states in the one symbol.** The prevailing state is shown with the port connections 
• **Other components are single state symbols**
![500](Attachments/Pasted%20image%2020231017181225.png)
![|600](Attachments/Pasted%20image%2020231017181250.png)
![700](Attachments/Pasted%20image%2020231017181313.png)
![Pasted image 20231017181403](Attachments/Pasted%20image%2020231017181403.png)
#todo Find higher rez


**Symbols single acting actuators**
![Pasted image 20231017181459](Attachments/Pasted%20image%2020231017181459.png)

**Symbols double acting actuators**
![Pasted image 20231017181531](Attachments/Pasted%20image%2020231017181531.png)

**Symbols rotary actuators**
![Pasted image 20231017181559](Attachments/Pasted%20image%2020231017181559.png)
- Semi-rotary double acting
- Rotary motor single direction of rotation
- Rotary motor bi-directional

**Symbols valves**
![Pasted image 20231017181655](Attachments/Pasted%20image%2020231017181655.png)
- 2/2 Valve Push button / spring
- 3/3 Valve Push button / spring
- 3/2 Valve lever operated

A valve function is known by a pair of numbers e.g. 3/2. This indicates the valve has 3 main ports and 2 states.

**Example 1**
- The valve symbol shows both of the states
- Port numbering is to CETOP RP68P and shows:
	- When valve is operated at the 12 end port 1 is connected to port 2
	- When reset to the normal state at the 10 end port 1 is connected to nothing (0); port 3 is connected to port 2.
![Pasted image 20231017182041](Attachments/Pasted%20image%2020231017182041.png)
**Example 2**
![Pasted image 20231017182323](Attachments/Pasted%20image%2020231017182323.png)
- This is a 5/2 valve
- This has 5 main ports and 2 states
- When the valve is operated at the 14 end port 1 is connected to port 4 (port 2 is connected to port 3)
- When reset to the normal state at the 12 end port 1 is connected to port 2 (also port 4 is connected to port 5)


**Example 3**
![Pasted image 20231017182405](Attachments/Pasted%20image%2020231017182405.png)
• This example is for a 5/2 valve 
• This has 5 main ports and 2 states 
• When the valve is operated at the 14 end port 1 is connected to port 4 (also port 2 is connected to port 3)
• When reset to the normal state at the 12 end port 1 is connected to port 2 (also port 4 is connected to port 5)

**Example 5/3 Valves**
![Pasted image 20231017182457](Attachments/Pasted%20image%2020231017182457.png)

## Symbol Operators
### Manual
![Pasted image 20231017182523](Attachments/Pasted%20image%2020231017182523.png)
### Mechanical
![Pasted image 20231017182552](Attachments/Pasted%20image%2020231017182552.png)

### Function Components
![Pasted image 20231017182633](Attachments/Pasted%20image%2020231017182633.png)

### Air Line Equipment
![Pasted image 20231017182652](Attachments/Pasted%20image%2020231017182652.png)

### Component Identification
The ISO suggested component numbering system is suited for large circuits and those drawn on several pages 
• For this presentation a simple code is used 
• For cylinders: A,B,C etc. 
• For associated feedback valves: alpha-numeric code ‘a0’ for proof of instroke, ‘a1’ for proof of outstroke 
• For cylinder B: b0 and b1

*Note: the a0 valve symbol is drawn in the operated position because the actuator A is unstroked*
![Pasted image 20231017192630](Attachments/Pasted%20image%2020231017192630.png)

### Example Circuit
![Pasted image 20231017192708](Attachments/Pasted%20image%2020231017192708.png)


## 2/2 Valve Control



# Additional Content
---
