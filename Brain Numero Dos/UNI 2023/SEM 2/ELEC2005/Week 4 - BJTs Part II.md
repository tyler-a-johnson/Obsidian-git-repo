---
date: 2023-09-30
tags:
  - "#ELEC/2005"
status: Complete
Relevant Docs:
  - "[[Attachments/ELEC2005 Week 4 Lecture BJTs-part-2_2023_UPDATED.pdf]]"
Relevant Questions: []
Relevant Notes:
  - "[[../../../Distilled Notes/BJTs (Bipolar Junction Transistor)s|BJTs (Bipolar Junction Transistor)s]]"
  - "[[Week 3 - BJT (Bipolar Junction Transistors)]]"
Practical Docs: 
Relevant Links:
---
# Maths and Distilled Info
---





# Conceptual Info
---

## Temperature and Thermal Voltage
![[Attachments/Pasted image 20230930200007.png]]
```ad-note
At a **constant current** the voltage decreases by approximately **2mV** for every 1 Degree C increase in temperature. (Same as PN Diode)

```

Adding a positive **voltage source** at the **B-E junction** will cause collector current to increasing until burnout.

**Add a resistor at the emitter** to **stop the current increase** (or use constant current source)

## BJT as a Switch
![[Attachments/Pasted image 20230930201500.png]]
If we increase the input voltage from low to high, output voltage will switch from high to low.
$$i_{C}= I_{S} e^{v_{BE}/V_T}$$
$$v_{O}=v_{CE}=V_{CC}-R_{C}i_{C}$$

## DC Biasing
We can use $V_{BE}$ to **Bias the transistor into active mode**
![[Attachments/Pasted image 20231002171854.png]]
$$I_{C}=I_{S}e^{V_{BE}/V_T}$$
$$V_{CE}=V_{CC}-R_{C}I_{S}e^{V_{BE}/V_T}$$

![[Attachments/Pasted image 20231002172050.png]]

**Small Signal Voltage Gain:**
![[Attachments/Pasted image 20231002172150.png]]
$$A_{v}= - R_{C} \frac{I_{C}}{V_{T}}$$
- Gain is negative **inverting amp**
- Gain **depends on bias point (Q point)**
- *Only valid for small signal* 

$$v_{CE} = V_{CC}-R_{C}i_{C}=V_{CC}-R_{C}(I_{C}+  \frac{I_{C}}{V_{T}}v_{be})=V_{CE}-R_{C} \frac{I_{C}}{V_{T}}v_{be}$$


**Output current and output voltage**
![[Attachments/Pasted image 20231002173109.png]]


**Output current and output voltage after capacitors**
*if $v_{be} << V_{T}$* 

$$i_{c}=g_{m}v_{be}$$
$$v_{ce}= -R_{C} \frac{I_C}{V_T}v_{be}$$


### Setting the Bias Point
*Input circuit*
$$V_{BB}+v_{in}(t)=R_{B}i_{B}(t)+v_{BE}(t)$$
$$i_{B}(t) = \frac{V_{BB}+v_{in}(t)-v_{BE}(t)}{R_{B}}$$
We bias the circuit assuming 0 small signal voltage
![[Attachments/Pasted image 20231002173621.png]]
![[Attachments/Pasted image 20231002173851.png]]

#### Example
![[Attachments/Pasted image 20231002173921.png]]





## Transconductance
![[Attachments/Pasted image 20231002172744.png]]
**Total = DC + Signal**
$$i_{C}= I_{C}+i_{C}$$
![[Attachments/Pasted image 20231002172829.png]]
$$i_{C}= \frac{I_{C}}{V_{T}}v_{be}$$
Where $i_{C}$ is our signal

$$i_{C}= g_{m}v_{be}$$
$$g_{m}= \frac{I_{C}}{V_{T}}$$


## Small Signal AC
![[Attachments/Pasted image 20231002175400.png]]
![[Attachments/Pasted image 20231002175413.png]]
$$i_{c}= g_{m}v_{be}$$
$$i_{b}= \frac{i_{c}}{\beta}=\frac{g_m}{\beta}v_{be}$$
$$r_{\pi} = \frac{v_{be}}{i_b}$$
$$r_{\pi}=\frac{\beta}{g_m}$$
$$r_{\pi}=\frac{V_T}{I_B}$$



![[Attachments/Pasted image 20231002175746.png]]
$$i_{c}= \frac{I_{C}}{V_{T}}v_{be}$$
$$i_{e}= \frac{i_{c}}{\alpha}=\frac{I_{C}}{\alpha V_{T}}v_{be}=\frac{I_E}{V_T}v_{be}$$
$$r_{e}= \frac{v_{be}}{i_e}$$
$$r_{e} = \frac{V_{T}}{I_{E}}=\frac{\alpha V_{T}}{I_{C}}=\frac{\alpha}{g_{m}} \approx \frac{1}{\alpha}$$


### Small Signal Models

**Hybrid Pi**
![[Attachments/Pasted image 20231002175703.png]]


**T Model**
![[Attachments/Pasted image 20231002180202.png]]


# Additional Content
---

## BJT Summary
![[Attachments/Pasted image 20230930193332.png]]
![[Attachments/Pasted image 20230930193530.png]]
*Operating Mode Depends on DC Biasing or Large Signal Voltages and Currents*
- **ACTIVE MODE:** Used for AC Amplification
- **CUTOFF and SATURATION MODE:** Used for switching
BJT is not symmetrical - inverse region is not normally used

In Active Region:
- BE = **Forward Biased**
- BC = **Reverse Biased**

Using [[../../../Distilled Notes/Kirchhoff's Laws|Kirchhoff's Laws]] 
![[Attachments/Pasted image 20230930194909.png]]
![[Attachments/Pasted image 20230930194923.png]]
$$i_{E}=i_{C}+i_{B}$$

**We define:**
$$i_{C}=\beta i_{B}$$
*Base current is much smaller than collector current*
$\beta$ Typical value = 100

$$i_{C}=\alpha i_E$$
$$\alpha = \frac{\beta}{\beta + 1}$$
*Collector current is similar to Emitter current*
$\alpha$ = 0.9 - 0.99

$$i_{E}= (\frac{I_{S}}{\alpha})(e^{v_{BE}/V_{T}}-1)\approx(\frac{I_S}{\alpha})e^{v_{BE}/V_T}$$
$$i_{B}\approx (\frac{I_{S}}{\beta})e^{v_{BE}/V_T}$$
$$i_{C}\approx I_{S}e^{v_{BE}/V_T}$$

```ad-note
Base-emitter voltage controls the collector current
```


**Emitter current is the total current**
$$i_{E}=i_{B}+i_{C}= \frac{i_{C}}{\alpha}$$

![[Attachments/Pasted image 20230930195057.png]]

**For PNP BJT use the same equations with reversed voltage polarities**

![[Attachments/Pasted image 20230930195220.png]]
