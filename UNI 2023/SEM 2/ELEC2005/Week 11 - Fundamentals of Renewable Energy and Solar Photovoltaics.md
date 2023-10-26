---
date: 2023-10-26
tags:
  - "#ELEC/2005"
status: Incomplete
Relevant Docs:
  - "[](Attachments/wk11%202023.pdf)"
Relevant Questions: 
Relevant Notes: 
Practical Docs: 
Relevant Links:
---
[Slides](Attachments/wk11%202023.pdf)
# Maths and Distilled Info
---

## Solar Cell Fundamentals
Photovoltaic cells energy conversion:[How do solar panels work? - Richard Komp - YouTube](https://youtu.be/xKxrkht7CpY)

### Load Convention
**Without Light**
$$i = I_{0}(e^{x}-1)$$
note that $x \propto v$
![](Attachments/Pasted%20image%2020231026190935.png)
![](Attachments/Pasted%20image%2020231026190950.png)

**When light is shone on the "diode"**
$$i = I_{0}(e^{x}-1) - \text{const}$$

$\text{const} = I_{sc}$
![](Attachments/Pasted%20image%2020231026191127.png)
![](Attachments/Pasted%20image%2020231026191321.png)

### Generator Convention

$$i = -I_{0}(e^{x}-1) +I_{sc}$$
![](Attachments/Pasted%20image%2020231026191715.png)

$$i = I_{sc}-I_{0}(e^{x}-1)$$
![](Attachments/Pasted%20image%2020231026192156.png)


## Solar Cell Equations: Simple Current Generator with Anti-Parallel Diode Model
![](Attachments/Pasted%20image%2020231026192503.png)
$$I = I_{sc}-I_{d}$$
$$I = I_{sc} - I_{0} (e^{\frac{qV}{kT}}-1)$$

$q = 1.602 * 10 ^{-19}C$ : Electron Charge
$k= 1.38*10^{-23}$ J/K: Boltzmann Constant
$V_{T} = \frac{kT}{q}$ V: Thermal Voltage
$T$: Temperature in **K**


at  25C
$T = 273.15 +25 = 298.15K$
$I = I_{sc} - I_{0}(e^{38.9V}-1)$


For $I = 0, V=V_{oc}$
$$V_{oc} = \frac{kT}{q}\ln\left( \frac{I_{sc}}{I_{0}}+1 \right)$$

![](Attachments/Pasted%20image%2020231026194215.png)

At 25C for $I=0$
$0=I_{sc}-I_{0}(e^{38.9V_{oc}}-1)$
$V_{oc} = 0.0257 \ln\left( \frac{I_{sc}}{I_{0}}+1 \right)$

- Isc varies proportionally with irradiation
- Voc varies logarithmically with irradiation (does not change much)

## Impact of Solar Irradiance and Temperature
*Note: the area under the i-v curve is the power generated*
![](Attachments/Pasted%20image%2020231026194635.png)

## I-V Characteristics of Series/Parallel connected cells
![](Attachments/Pasted%20image%2020231026195149.png)
![](Attachments/Pasted%20image%2020231026195224.png)

```ad-note

- **Voltages add in series**
- **Current adds in parallel**
```


![](Attachments/Pasted%20image%2020231026195236.png)






![](Attachments/Pasted%20image%2020231026195251.png)
At open-circuit (a) and short-circuit (b) the PV module delivers no power.


![](Attachments/Pasted%20image%2020231026195446.png)
The PV module delivers the maximum power only at one operating point (MPP)
$V = V_{R}, I=I_{R}$

### Fill Factor
![](Attachments/Pasted%20image%2020231026195932.png)
- FF (Fill Factor) is the ratio between the maximum are fitting under the i-v curve and the $V_{oc}I_{sc}$ area.
- $FF = 70 - 75$% for cristalline Silicon (cSi) 
- $FF = 50-60$% for amorphous and multicristalline silicon PV Modules

## PV Module Data
- Rated power is the power at the MPP (Maximum power point/Operating point)
- Commercial PV modules have efficiencies $\eta \approx 20$% (2023)
- Area A (m^2) $\rightarrow$ number of hours $n_{h}$ at 1kW/$m^2$ $\rightarrow P_{Sun} = A*n_{h}$ kW
- $P_{pv} = P_{sun} * \frac{\eta}{100} [kW] \rightarrow$ number of PV modules = $\frac{P_{pv}}{P_{\text{module}}}$

Typical curves found in a PV module datasheet (120W Kyocera KC120-1)
![](Attachments/Pasted%20image%2020231026202834.png)
- Curves at difference irradiance and cell temp
- Cell temp not to be confused with ambient
- NOCT (Datasheet) cell tem at $T_{amb} = 20$C and $S = 0.8$ kW/m^2
$$T_{\text{cell}}[C]=T_{amb}+\left( NOCT-\frac{20C}{0.8} \right)S $$
S in kW/m^2

## Equivalent Circuit
Consider the ideal single diode model for each cell, and two cells connected in series, where one is partially shaded. According to the diagram using ideal PV cell equivalent.
![](Attachments/Pasted%20image%2020231026203622.png)
- The shaded cell produces no current
- The shaded cell is a revere biased diode, blocking the flow of current to the load
- The load current is null, I = 0

**A more detailed model is needed to explain what happens in practice, because in reality I>0**

![](Attachments/Pasted%20image%2020231026203802.png)
- Higher voltage V, the higher the current through $R_{p}$ (less current goes to the load)
- This "current drop" (decrease in load current) as the load voltage rises is represented by a horizontal slope in the i-v curve
- For a large cell, typical $V_{oc} = 0.6V, I_{sc}=7A, R_{p}=9 \Omega$



### Inclusion of series resistance $R_{s}$ assuming $R_{p} = \infty$
![](Attachments/Pasted%20image%2020231026204159.png)
$$I = I_{sc} - I_{d} = I_{sc} - I_{0} (e^{\frac{qV_{d}}{kT}}-1)$$
$$=I_{sc} - I_{0} (e^{\frac{q(V+R_{s}I)}{kT}}-1)$$
- The higher the load current I, the higher the voltage drop $\Delta V$ on $R_{s}$
- This voltage drop as the current rises is represented by a vertical slope in the i-v curve
- for a large cell, typical $V_{oc} = 0.6V, I_{sc} = 7A, R_{s} = 1*10^{-3}\Omega$
- Inclusion of $R_{s}$ causes an "algebraic loop" **where the PV cell output, I, depends on itself**. $I = f(V,I)$

### Inclusion of $R_{s}$ and $R_{p}$: PV Module i-v curve
![](Attachments/Pasted%20image%2020231026205101.png)
$$=I_{sc} - I_{0} \left( e^{\frac{q(V+R_{s}I)}{kT}}-1 \right)-\frac{V_{d}}{R_{p}}$$
Where the $I_{0}$ portion is $I_{d}$, and the fraction at the end is $I_{p}$

$V = V_{d}-R_{s}I$

$V_{\text{module}}=n(V_{d}-R_{s}I)$
$$=I_{sc} - I_{0} \left( e^{\frac{q(V+R_{s}I)}{kT}}-1 \right)-\frac{V+R_{s}I}{R_{p}}$$

![](Attachments/Pasted%20image%2020231026205351.png)

![](Attachments/Pasted%20image%2020231026205739.png)

- Note the different curve when $R_s$ and $R_{p}$ are considered
- It is desired to have high $R_p$ and low $R_{s}$ for better performance

### Impact of Shading (using non-ideal PV cell circuit)
![](Attachments/Pasted%20image%2020231026210422.png)
**Full sun**
- All cells produce I
- PV module voltage V

**One cell is shaded**
- Fully shaded cell produces no current $I_{sc} = 0$
- Shaded cell diode is reverse biased
- PV module voltage $V_{SH}<V$

$V-V_{SH} = \Delta V : PV$ Module voltage reduction due to shading on one cell

![](Attachments/Pasted%20image%2020231026210833.png)

#### Bypass diodes
*Shading effect mitigation:* 
![](Attachments/Pasted%20image%2020231026210923.png)
**Without Bypass Diode:**
- Current flows through $R_{p}+R_{s}$
- Shaded cell causes large voltage reduction
- Shaded cell voltage $(R_{s}+R_{p})I$ is large

**WITH Bypass Diode:**
- Current flow is diverted through BP -diode
- Shaded cell causes small voltage reduction
- Shaded cell voltage is small (typically 0.5 - 1V)

![](Attachments/Pasted%20image%2020231026211256.png)
- impractical to use one bypass diode per cell in a PV module
- Modules with 72 cells may use 3 diodes (1 per 24)

#### Blocking Diodes
Placed at the end of each PV string to avoid negative current in strings with shaded modules.
![](Attachments/Pasted%20image%2020231026211503.png)
- In practice, PV strings have bypass diodes and blocking diodes
A partially shaded PV string's i-v and p-v characteristics
![](Attachments/Pasted%20image%2020231026211850.png)
- multiple power peaks in the curve
- Special control is needed to extract maximum PV power #thesis

## Peak Power Operation and Efficiency
![](Attachments/Pasted%20image%2020231026212620.png)
- We want to operate the array at the max power point (MPP)
- The maximum power is extracted by the PV module as long as it operates at $V_{mpp}$

![](Attachments/Pasted%20image%2020231026212745.png)
$$\eta = \frac{V_{mpp}*I_{mpp}[W]}{1000\left[ \frac{W}{m^{2}} \right] * \text{Area}[m^{2}]}$$ Typical < 20% for commercial models

Area is on the datasheet

### What if the load does not allow max efficiency?
*DC-DC converter with MPPT control ensures PV module works at MPP*
![](Attachments/Pasted%20image%2020231026213046.png)
- Battery voltage $V_{B} = PV$ voltage
- Low power delivered to battery $P_{B}<P_{mpp}$
- Battery Voltage $V_{B} \neq PV$ voltage
- Max power to battery $P_{B} = P_{mpp}$





# Conceptual Info
---


## Cells, Module, Arrays
![](Attachments/Pasted%20image%2020231026194749.png)
**Typical indicative values:**
- Cell: 0.6V 5A
- Module: 30V 5A
- Array: 400V 10A
![](Attachments/Pasted%20image%2020231026194941.png)

## Typical PV Module Specifications
![](Attachments/Pasted%20image%2020231026200718.png)
**Specs at Standard Test Conditions (STC):**
- Cell temp 25C
- Solar irradiation 1000 W/$m^2$
- Air mass 1.5 (relates to sunlight inclination)

- Rated power is the power at the MPP (Maximum power point/Operating point)
- Commercial PV modules have efficiencies $\eta \approx 20$% (2023)
- Area A (m^2) $\rightarrow$ number of hours $n_{h}$ at 1kW/$m^2$ $\rightarrow P_{Sun} = A*n_{h}$ kW
- $P_{pv} = P_{sun} * \frac{\eta}{100} [kW] \rightarrow$ number of PV modules = $\frac{P_{pv}}{P_{\text{module}}}$


## Cell efficiency over the years
**PV cell efficiency progress in time**
![](Attachments/Pasted%20image%2020231026213341.png)


## Typical PV power conversion system structure
![](Attachments/Pasted%20image%2020231026213526.png)
- DC-DC converter: extracts maximum power from PV array and boosts PV string voltage to match inverter input voltage 
- DC-AC converter: converts dc voltage/current into ac form (compatible with the grid) 
- bidirectional converter/battery: supply load when there is no sun, and absorb power when PV power exceeds the load demand 


# Additional Content
---

## Energy markets and supply in Australia
![](Attachments/Pasted%20image%2020231026184627.png)
- Adjacent coloured areas are interconnected
- Tasmania is connected to Victoria via an Undersea DC Cable
- Biggest electricity market are NEM (QLD, NSW, VIC, SA, TAS) and SWIS (WA)

**NEM (Eastern Australia) Energy Generation**
![](Attachments/Pasted%20image%2020231026190337.png)
![](Attachments/Pasted%20image%2020231026185552.png)

- Renewables (Wind, Solar, Hydro) Contributed to more than 35% of all electricity generated in Australia (NEM System, Oct 2022-23)
- Proportion electricity generated from renewables is set to increase steeply
- Australian Energy Market Operator declared to be working on a grid capable to handle 100% renewable energy penetration by 2025
- Solar (Photovoltaic) energy is going to be one of the major sources of electricity in Australia


## Readings
From Masters (2004), Renewable and Ecient Electric Power Systems Chapter 8: Photovoltaic Materials and Electrical Characteristics (link) 
8.1: Introduction 
8.2: Basic Semiconductor Physics
	8.2.5: The p-n Junction Diode 
8.3: A Generic Photovoltaic Cell 
	8.3.1: The Simplest Equivalent Circuit for a Photovoltaic Cell 
	8.3.2: A More Accurate Equivalent Circuit for a PV Cell 
8.4: From Cells to Modules to Arrays 
	8.4.1: From Cells to a Module 
	8.4.2: From Modules to Arrays 
8.5: The PV I–V Curve Under Standard Test Conditions (STC) 
8.6: Impacts of Temperature and Insolation on I–V Curves 
8.7: Shading Impacts on I – V Curves 
	8.7.1: Physics of Shading 
	8.7.2: Bypass Diodes for Shade Mitigation 
	8.7.3: Blocking Diodes