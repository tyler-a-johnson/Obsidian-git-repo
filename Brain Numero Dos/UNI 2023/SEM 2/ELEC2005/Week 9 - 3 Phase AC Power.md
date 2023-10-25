---
date: 2023-10-03
tags:
  - "#ELEC/2005"
status: Incomplete
Relevant Docs:
  - "[[Attachments/ELEC2005 Lecture 9 - Three-Phase Systems_ANNOTATED.pdf]]"
Relevant Questions: []
Relevant Notes: []
Practical Docs: 
Relevant Links:
---
# Maths and Distilled Info
---
## Balanced 3 Phase Circuits
![[Attachments/Pasted image 20231005235423.png]]
$$\bar{E}_{an}=Ee^{j0}$$
$$\bar{E}_{bn}=Ee^{-j \frac{2}{3} \pi}$$
$$\bar{E}_{cn}= Ee^{j \frac{2}{3}\pi}$$
$$Z_{AN}=Z_{BN}=Z_{CN}=Z_{Y}$$
 **Balanced 3 phase circuit has**
	- 3 voltage sources with equal magnitude, but with an angle shift of $120 \degree$ 
	- Equal loads on each phase
	- Equal impedance on the lines connecting the generators to the loads

## Line to Neutral and Line to Line Voltages
![[Attachments/Pasted image 20231006000226.png]]

| Balanced line to neutral voltages       | Balanced line to line voltages                                                         |
| --------------------------------------- | -------------------------------------------------------------------------------------- |
| $\bar{E}_{an}=Ee^{j0}$                  | $\bar{V}_{ab} = \bar{E}_{an} - \bar{E}_{bn} = \sqrt{3}\bar{E}_{an}e^{j \frac{\pi}{6}}$ |
| $\bar{E}_{bn}=Ee^{-j \frac{2}{3} \pi}$  | $\bar{V}_{bc}=\bar{E}_{bn}-\bar{E}_{cn} = \sqrt{3}\bar{E}_{bn}e^{j \frac{\pi}{6}}$     |
| $\bar{E}_{cn} = Ee^{j \frac{2}{3} \pi}$ | $\bar{V}_{ca}= \bar{E}_{cn} - \bar{E}_{an} = \sqrt{3}\bar{E}_{cn}e^{j \frac{\pi}{6}}$                                                                                        |

![[Attachments/Pasted image 20231006001213.png]]

### Balanced Line to Neutral Voltages
![[Attachments/Pasted image 20231006001339.png]]
**Balanced Conditions:**
$$\bar{E}_{an}+\bar{E}_{bn}+\bar{E}_{cn}= 0$$

**KVL:**
$$\bar{V}_{ab}+\bar{V}_{bc}+ \bar{V}_{ca}= 0$$
Sum of line to line voltage is **always zero**.

### Balanced Line Currents
![[Attachments/Pasted image 20231006001657.png]]
![[Attachments/Pasted image 20231006001709.png]]
$$\bar{I}_{a} = \frac{\bar{E}_{an}}{Z_{Y}}, \bar{I}_{b}= \frac{\bar{E}_{bn}}{Z_{Y}},\bar{I}_{c}=\frac{\bar{E}_{cn}}{Z_{Y}}$$

**KCL** node N : $\bar{I}_{a}+\bar{I}_{b}+\bar{I}_{c}-\bar{I}_{N}=0$
**Balanced conditions**: $\bar{I}_{N}=0$


### Balanced $\Delta$ loads
![[Attachments/Pasted image 20231006002846.png]]
**Load** currents under balanced conditions:
$$\bar{I}_{AB}= \frac{\bar{V}_{AB}}{Z\Delta}, \bar{I}_{BC}= \frac{\bar{V}_{BC}}{Z\Delta},\bar{I}_{CA}= \frac{\bar{V}_{CA}}{Z \Delta}$$
**Line** current equations:
*KCL (A)*: $\bar{I}_{a}=\bar{I}_{AB}-\bar{I}_{CA}=\sqrt{3}\bar{I}_{AB}e^{-j \frac{\pi}{6}}$
*KCL (B)*: $\bar{I}_{b} = \bar{I}_{BC}-\bar{I}_{AB}=\sqrt{3}\bar{I}_{BC}e^{-j \frac{\pi}{6}}$
*KCL (C)*: $\bar{I}_{c}=\bar{I}_{CA}-\bar{I}_{BC}=\sqrt{3}\bar{I}_{CA}e^{-j \frac{\pi}{6}}$
![[Attachments/Pasted image 20231006003624.png]]
![[Attachments/Pasted image 20231006003821.png]]


## $\Delta$ - Y Conversion for Balanced Loads
![[Attachments/Pasted image 20231006003953.png]]
Posing equality of **line** currents for the circuit on the left and on the right:
$$\bar{I}_{a}= \frac{\bar{E}_{an}}{Z_{Y}}=\frac{\bar{V}_{AB}}{\sqrt{3}Z_{Y}}e^{-j \frac{\pi}{6}}$$
$$\bar{I}_{a}= \sqrt{3}_{AB}e^{-j \frac{\pi}{6}}= \sqrt{3} \frac{\bar{V}_{AB}}{Z \Delta}e^{-j \frac{\pi}{6}}$$

$\bar{I}_{a}$ is the same in both circuits if: $Z_{Y}=\frac{Z \Delta}{3}$

## Power in Balanced $3 \phi$ circuits

### Instantaneous Power
Instantaneous power for phase a:
![[Attachments/Pasted image 20231006005034.png||600]]
$$v_{an}(t) = \sqrt{2}V_{LN}\cos(\omega t + \delta)$$
$$i_{a}(t) = \sqrt{2}I\cos(\omega t + \beta)$$
$$p_{a}(t) = v_{an}(t)i_{a}(t)$$
$$=V_{LN}I\cos(\delta-\beta)+V_{LN}I\cos(2 \omega t + \delta + \beta)$$

In the same way, power for **phase b and c can be calculated**

The instantaneous $3\phi$ power is:
$$p_{3 \phi}(t) = p_{a}(t) + p_{b}(t)+p_{c}(t) = 3V_{LN}I \cos(\delta-\beta)=\sqrt{3}V_{LL}I\cos(\delta-\beta)$$

$P_{3 \phi} = constant$

$3 \phi$ is instant. **POWER IS NOT A FUNCTION OF TIME**

### Complex Power

#### Complex power in balanced $3 \phi$ Connected Circuits
![[Attachments/Pasted image 20231006010325.png|600]]
**Complex Power for Phase A:**
$$\bar{V}_{an}=V_{LN}e^{j \delta},\bar{I}_{a}=Ie^{j \beta}$$
$$\bar{S}_{a}=\bar{V}_{an}\bar{I}_{a}*=V_{LN}e^{j \delta}Ie^{-j \beta}=V_{LN}Ie^{j(\delta-\beta)}$$
$$=V_{LN}I\cos(\delta-\beta) + j V_{LN}I\sin(\delta-\beta)$$

$$\bar{S}_{3\phi}=S_{a}+S_{b}+S_{c} = 3V_{LN}I\cos(\delta-\beta)+j3V_{LN}I\sin(\delta-\beta)$$

**Active Power:**
$$P_{3\phi}=Re[\bar{S}_{3\phi}]=3V_{LN}I\cos(\delta-\beta)=3V_{LL}I\cos(\delta-\beta)$$

**Reactive Power:**
$$Q_{3\phi}=Im[\bar{S}_{3\phi}]=3V_{LN}I\sin (\delta-\beta) = 3V_{LL}I\sin(\delta-\beta)$$

**Apparent Power:**
$$|\bar{S}_{3\phi}| = S_{3\phi}= \sqrt{P_{3\phi}^{2}+P_{3\phi}^{2}}=3V_{LN}I=\sqrt{3}V_{LL}I$$


#### Complex power in balanced $3 \phi$ $\Delta$ connected circuits
![[Attachments/Pasted image 20231006012210.png|600]]
$$\bar{V}_{ab}$$




# Conceptual Info
---
## Balanced 3 Phase Circuits
 - Transmit more power for same amount of wire (twice as much as 1 phase)
	 - Better infrastructure utilization
- Torque produced by $3 \phi$ machines is constant (because, *unlike 1phase systems instantaneous 3phase power is constant*)
- 3 phase machines use less material for same power rating
- 3 phase machines start more easily than 1phase machines

![[Attachments/Pasted image 20231005234924.png]]
- **Balanced 3 phase circuit has**
	- 3 voltage sources with equal magnitude, but with an angle shift of $120 \degree$ 
	- Equal loads on each phase
	- Equal impedance on the lines connecting the generators to the loads
- Bulk power systems are **almost exclusively 3 phase**
	- "High-voltage" systems, to transfer power long distances
- **1 phase** is used primarily in low voltage, low power settings, such as residential and some commercial settings.

## Equivalent line-to-neutral Y diagrams
With balanced three-phase circuits, only one phase needs to be analysed.
- $\Delta$ loads can be converted to Y loads
- All source and load neutrals connected with a zero ohm neutral wire without changing the solution
- One phase of the circuit can be solved
	- Voltage and current in remaining phases are equal in magnitude and $\pm 120 \degree$ out of phase with those of the phase solved.
![[Attachments/Pasted image 20231006004750.png]]




# Additional Content
---
