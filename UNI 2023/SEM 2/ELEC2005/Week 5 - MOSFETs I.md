---
date: 2023-09-06
tags:
  - ELEC/2005
status: Complete
Relevant Docs:
  - "[ELEC2005 Week 5 Lecture MOSFETs Part 1_2023_UPDATED](Attachments/ELEC2005%20Week%205%20Lecture%20MOSFETs%20Part%201_2023_UPDATED.pdf)"
Relevant Questions: 
Relevant Notes:
---

[ELEC2005 Week 5 Lecture MOSFETs Part 1_2023_UPDATED](Attachments/ELEC2005%20Week%205%20Lecture%20MOSFETs%20Part%201_2023_UPDATED.pdf)

# Conceptual Info
---

## Intro
- **Metal Oxide Semiconductor Field Effect Transistor**
	- **Metal** - Used for the contacts
	- **Oxide** - Unlike BJTs, in a MOSFET the gate is separated from the rest of the device with a thin insulating layer
	- **Semiconductor** - Commonly fabricated on silicon (Although SiGe can be used)
	- **Field Effect** - Applying a voltage between the gate and body terminals creates an electric field which penetrates the oxide and creates an inversion layer at the semiconductor interface.
- Well established and widely used
- Smaller than BJTs
- Ease of manufacture
- low power requirements
- Allows placement of about **2 billion transistors on an IC**
- Preferable to BJT technology for many applications (Digital)

## Structure

![Pasted image 20231002210216](Attachments/Pasted%20image%2020231002210216.png)

![Pasted image 20231002210236](Attachments/Pasted%20image%2020231002210236.png)
- **MOSFETs** consist of two PN Junctions
	- Essentially two back to back diodes as shown
- Diodes between drain and source prevent current when voltage $V_{DS}$ is applied
	- Yields very high resistance ($10^{12}$ ohms)

### Creating a Channel
![Pasted image 20231002210658](Attachments/Pasted%20image%2020231002210658.png)

*What happens if (1) Source and drain are grounded and (2) positive voltage is applied to the gate*
1. $V_{GS}$ is applied to the gate terminal, causing positive charge build-up along the metal electrode
2. This charge buildup causes free holes to be repelled from region of p-type substrate under gate
3. This migration results in the uncovering of negative bound charges, originally neutralized by the free holes
4. The positive gate voltage also attracts electrons from the $n^+$ source and drain regions into the channel.
![Pasted image 20231002211439](Attachments/Pasted%20image%2020231002211439.png)
5. Once a sufficient number of electrons accumulate, an n-region is created between S and D. This allows current through the semiconductor




## Device Operation

![Pasted image 20231002212203](Attachments/Pasted%20image%2020231002212203.png)

- Channel is induced when **gate source voltage exceeds the threshold voltage** (Given, around 1V)
- Additional voltage beyond the threshold point is the **overdrive**
$$v_{GS} > V_{t}\text{ (Threshold Voltage)}$$
$$v_{OV}=v_{GS}-V_{t}$$

- Drain current has a square-law dependence on the overdrive voltage:
$$i_{D}= \frac{1}{2} k_{n}(v_{GS}-V_{t})^{2}$$
Our threshold voltage remains constant for a given MOSFET

$k_{n}$ is a constant for a given MOSFET
$k_{n}=\mu_{n}C_{ox} \frac{W}{L}$



## P-Channel MOSFET
- P-Channel MOSFETs have a similar but opposite structure to n-channel
- They are complimentary devices
- PMOS originally dominated the MOS field but as manufacturing became cheaper and easier for NMOS, NMOS took over.

**Why is NMOS advantageous**
- Electron mobility $\mu_{n}$ is 2-4 times greater than hole mobility $\mu_{p}$.

```ad-note
Complimentary MOS (**CMOS**) Is the tech of both NMOS and PMOS on the same chip

```


## nMOSFETs
### nMOSFET Circuit Symbols

![Pasted image 20231002212944](Attachments/Pasted%20image%2020231002212944.png)
- Numerous circuit symbols used
- There are four terminals: Drain (D), Gate (G), Body (B), and Source (S)

### Regions of Operation
![Pasted image 20231002213343](Attachments/Pasted%20image%2020231002213343.png)
![Pasted image 20231002213643](Attachments/Pasted%20image%2020231002213643.png)
![Pasted image 20231002213719](Attachments/Pasted%20image%2020231002213719.png)
![Pasted image 20231002213736](Attachments/Pasted%20image%2020231002213736.png)

![Pasted image 20231002213954](Attachments/Pasted%20image%2020231002213954.png)
**Triode Mode when**
$$V_{DS}<V_{OV}$$

**Saturation mode when**
$$V_{DS}\geq V_{OV}$$

**MOSFETS** amplify in Saturation Mode

**BJT** Amplify in Active Mode


### MOSFET Example
![Pasted image 20231002214207](Attachments/Pasted%20image%2020231002214207.png)
![Pasted image 20231002214257](Attachments/Pasted%20image%2020231002214257.png)
![Pasted image 20231002214314](Attachments/Pasted%20image%2020231002214314.png)
![Pasted image 20231002214338](Attachments/Pasted%20image%2020231002214338.png)
![Pasted image 20231002214354](Attachments/Pasted%20image%2020231002214354.png)

## pMOSFETs

### Circuit Symbols
![Pasted image 20231002214522](Attachments/Pasted%20image%2020231002214522.png)
![Pasted image 20231002214612](Attachments/Pasted%20image%2020231002214612.png)

### Operating Mode Voltages
![Pasted image 20231002214659](Attachments/Pasted%20image%2020231002214659.png)

## Operating Mode Summary
This is on the formula sheet
![Pasted image 20231002214737](Attachments/Pasted%20image%2020231002214737.png)



# Maths
----

