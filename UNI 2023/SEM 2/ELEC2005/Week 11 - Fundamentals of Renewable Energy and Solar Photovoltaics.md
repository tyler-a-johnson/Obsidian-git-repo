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



# Conceptual Info
---

## Renewable Energy
- Electric and electronic systems are fundamentals in renewable energy.
- We can use naturally occurring and renewable forms of energy such as wind, solar, geothermal, and many others to generate power.
![](Attachments/Pasted%20image%2020231026184521.png)

### Energy markets and supply in Australia
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

# Additional Content
---
