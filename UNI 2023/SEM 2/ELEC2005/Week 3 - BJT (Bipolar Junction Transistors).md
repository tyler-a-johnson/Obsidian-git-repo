#ELEC/2005 

**Slides:**
[ELEC2005 Week 3 Lecture BJTs-part-1_2023_UPDATED](Attachments/ELEC2005%20Week%203%20Lecture%20BJTs-part-1_2023_UPDATED.pdf)

# The Bipolar Junction Transistor
This is our classic NPN (Negative, Positive, Negative) type transistor, allows us to electronically control the flow of current.
![Pasted image 20230812095849](Attachments/Pasted%20image%2020230812095849.png)
Consists of two types of semiconductors N-type and P-type. 
- N-type semiconductors are doped with impurities such as phosphorus, arsenic, or antimony. These have more valence electrons than Silicon (Group IV). This extra electron becomes free to move around and creates a negative bias.
- P-type semiconductors work similarly except they are doped with Boron or Indium. These metals take up extra electrons making "holes" which generates a negative bias

## The Pipe Analogy
- Electric potential (Voltage) is equivalent to $\Delta P$.
- A BJT is a controlled valve, with the flow of water at the base pipe acting as the control.
![Pasted image 20230812103400](Attachments/Pasted%20image%2020230812103400.png)
Fucking weird to think about.

# Diagrams and Circuit Symbols
BJT Transistors are more or less two diodes back to back. Depending on the type of BJT.
![Pasted image 20230812104002](Attachments/Pasted%20image%2020230812104002.png)
The Arrow shows the current of the controlling pn-Junction
- Arrow from Emitter = PNP
- Arrow TO Emitter = NPN

# Modes of Operation
![Pasted image 20230812104512](Attachments/Pasted%20image%2020230812104512.png)
*Operating mode depends on DC biasing or large signal voltages and currents:*
- **Active** mode - Used for AC amplification
- **Cutoff** and *saturation* modes - used for switching
- BJT is not symmetrical - inverse region is not normally used.

## Active Region
In the Active region: 
- BE = Forward Biased
- BC = Reverse Biased
![Pasted image 20230812122553](Attachments/Pasted%20image%2020230812122553.png)
Using Kirchhoff:
$$i_{E}= i_{C}+i_{B}$$

We can define:
$$i_{C}=\beta i_{B}$$
$$i_{C}=\alpha i_{E}$$

Which Implies:
$$\beta i_{B} = \alpha i_{E}$$

$$\alpha = \frac{\beta}{\beta+1}$$
Where:
$\beta$ = Factor of proportionality
$\alpha = \frac{i_{C}}{i_{E}}=$ Emitter injection efficiency

Typical values of these include:
$$\beta = 100$$
$$\alpha = 0.9 \leftrightarrow 0.99$$

*Some derivation I guess:*
$$i_{E}= (\frac{I_{s}}{\alpha})(e^{\frac{v_{BE}}{V_{T}}}-1)\approx (\frac{I_{s}}{\alpha})e^{\frac{v_{BE}}{V_{T}}}$$
$$i_{B}\approx (\frac{I_{s}}{\beta})e^{v_{BE}/V_{T}}$$
$$i_{C}\approx I_{s}e^{v_{BE}/V_T}$$
```ad-attention
title: NOTE
Base-emitter voltage controls the collector current
```

![Pasted image 20230812123453](Attachments/Pasted%20image%2020230812123453.png)
*Emitter current is equal to the total current:*
$$i_{E}=i_{B} + i_{C}=\frac{i_{C}}{\alpha}$$

Using [Kirchhoff's Laws](../../../Distilled%20Notes/Kirchhoff's%20Laws.md) and our diode equation:
$$i_{C} = I_{s}e^{v_{BE}/V_T}$$
Where:
$I_{s} =$ Constant (Saturation Current)
$V_{T}=$ Constant (Thermal Voltage)

We can determine:
$$i_{B}= \frac{i_{C}}{\beta}=\frac{I_{s}}{\beta}e^{v_{BE}/V_T}$$
*Base current is much smaller that collector current*

Emitter current is the total current:
$$i_{E}=i_{B}+i_{C}= \frac{i_C}{\alpha}$$

## Equivalent Circuit
Large signal equivalent-circuit model of the *NPN BJT* operating in the **forward active mode**.
![Pasted image 20230812123917](Attachments/Pasted%20image%2020230812123917.png)

Collector current is controlled by the base-emitter voltage:
$$i_{C}=I_{s}e^{v_{BE}/V_{T}}$$

Base current is much smaller than the collector current:
$$i_{B}= \frac{i_C}{\beta}$$

Emitter current is total current:
$$i_{E} = i_{B}+i_{C}= \frac{i_C}{\alpha}$$

## Saturation Region
*NPN BJT in saturation region*
![Pasted image 20230812124431](Attachments/Pasted%20image%2020230812124431.png)

$$i_{C}= I_{s}e^{\frac{v_{BE}}{V_{T}}}-I_{sc}e^{\frac{v_{BC}}{V_{T}}}$$
$$i_{B}= \frac{I_{s}}{\beta}  e^{\frac{v_{BE}}{V_{T}}}+I_{sc}e^{\frac{v_{BC}}{V_{T}}}$$

These two equations give us:
$$\beta_{\text{forced}}=\frac{i_C}{i_{B}}(\text{at saturation}) \leq \beta$$

### Example
![Pasted image 20230812124833](Attachments/Pasted%20image%2020230812124833.png)

# Load Line Analysis
![Pasted image 20230812125401](Attachments/Pasted%20image%2020230812125401.png)
![Pasted image 20230812125555](Attachments/Pasted%20image%2020230812125555.png)

**If the base current is too high we reach saturation:**
![Pasted image 20230812125625](Attachments/Pasted%20image%2020230812125625.png)

**If the base current is too low we reach cut-off (think activation voltage of diodes)**
![Pasted image 20230812125758](Attachments/Pasted%20image%2020230812125758.png)

# Large Signals Current Summary
$$V_{CE}>0, V_{A}= \infty$$
$$V_{T}= \frac{kT}{q} \approxeq 25mV \text{ At room temperature}$$

| $V_{BE}$ | $V_{BC}$ | $V_CE(>0)$ | Mode                          | $I_{C}(V_{BE},V_{CE})$                                                                         |
| -------- | -------- | ---------- | ----------------------------- | ---------------------------------------------------------------------------------------------- |
| <0.5     | <0.4     | >0         | Cutoff                        | $I_{C}\approxeq 0$                                                                             |
| ~0.7     | >0.4     | <0.3       | Saturation                    | $V_{CE}\approxeq 0.2$ or $I_{C}= I_{S}e^{\frac{V_{BE}}{V_{T}}}-I_{SC}e^{\frac{V_{BE}}{V_{T}}}$ |
| ~0.7     | ~0.4     | ~0.3       | Edge of saturation and active | $I_{C}= I_{S}e^{\frac{V_{CE}}{V_{T}}}$                                                         |
| ~0.7     | <0.4     | >0.3       | Active                        |                     $I_{C}= I_{S}e^{\frac{V_{CE}}{V_{T}}}$                                                                           |

For *PNP BJT* use the same current equations but with reversed voltage polarities.

# Summary of Simple BJT Models
![Pasted image 20230812130709](Attachments/Pasted%20image%2020230812130709.png)

**Equivalent Circuits:**
![Pasted image 20230812141006](Attachments/Pasted%20image%2020230812141006.png)
*NPN on the left PNP on the right*
```ad-note
These models are **APPROXIMATE ONLY**

```

## Constant Voltage Drop Approximation
In the active region we can use a constant voltage (base side) and constant current (collector side) approximation.
![Pasted image 20230812142738](Attachments/Pasted%20image%2020230812142738.png)
$$v_{BE}=v_{B}-v_{E}=0.7V$$
$$v_{CE}=v_{C}-v_{E}>0.2V$$
$$i_{B}= \frac{i_C}{\beta}$$
$$i_{c}= I_{s}e^{v_{BE}/V_{T}}$$
$$i_{E}=i_{B}+i_{C}= \frac{i_{C}}{\alpha}$$

### Example
![Pasted image 20230812143143](Attachments/Pasted%20image%2020230812143143.png)

This is an example of cut-off
Operating in this region:
![Pasted image 20230812143229](Attachments/Pasted%20image%2020230812143229.png)

### Example 2
![Pasted image 20230812143604](Attachments/Pasted%20image%2020230812143604.png)

Same as the previous circuit but $V_{B}$ is higher. Our $V_B$ is high enough to allow voltage from collector to emitter.
*We are using this BJT in active mode.*

![Pasted image 20230812143825](Attachments/Pasted%20image%2020230812143825.png)
![Pasted image 20230812143950](Attachments/Pasted%20image%2020230812143950.png)
Remember, the model is approximate so our solution can only be approximate.

### Example 3
![Pasted image 20230812144016](Attachments/Pasted%20image%2020230812144016.png)
![Pasted image 20230812144359](Attachments/Pasted%20image%2020230812144359.png)
Our $\beta_\text{Forced} = 1.5$
This is an example of saturation.
![Pasted image 20230812144559](Attachments/Pasted%20image%2020230812144559.png)
Our $i_{B}$ value is such that the BJT is in saturation mode.

### Example 4: For PNP BJT
![Pasted image 20230812145319](Attachments/Pasted%20image%2020230812145319.png)
Here we are in active mode, as our base is grounded (PNP works the opposite way to NPN)
![Pasted image 20230812145353](Attachments/Pasted%20image%2020230812145353.png)

### Example 5: For PNP BJT
![Pasted image 20230812145503](Attachments/Pasted%20image%2020230812145503.png)
Here we are in active mode
![Pasted image 20230812145642](Attachments/Pasted%20image%2020230812145642.png)

### Example 6: For NPN
![Pasted image 20230812145713](Attachments/Pasted%20image%2020230812145713.png)
#What #Why 