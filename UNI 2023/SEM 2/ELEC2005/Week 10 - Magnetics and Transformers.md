---
date: 2023-10-19
tags: 
status: Incomplete
Relevant Docs:
  - "[wk10 2023](Attachments/wk10%202023.pdf)"
Relevant Questions: 
Relevant Notes: 
Practical Docs: 
Relevant Links:
---
[Week10](Attachments/wk10%202023%201.pdf)
# Maths and Distilled Info
---



# Conceptual Info
---

## Basics

![Right Hand Rule](../../../Distilled%20Notes/Right%20Hand%20Rule.md)

![Amperes Law](../../../Distilled%20Notes/Amperes%20Law.md)

## Magnetic field intensity H, field density B, flux $\Phi$
![Pasted image 20231019221649](../../../Distilled%20Notes/Attachments/Pasted%20image%2020231019221649.png)
Flux density (magnetic induction) or B-Field

$$B = \mu H = \mu_{0}\mu_{r}H$$
**Where:**
$\mu$ = Magnetic Permeability (material)
$\mu_{0}$ = Air Permeability
$\mu_r$ = Relative Permeability
![Pasted image 20231019221927](../../../Distilled%20Notes/Attachments/Pasted%20image%2020231019221927.png)


Flux is the amount of B passing through and area $A_c$
$$\Phi=\int \int_{A_{c}} B*dA$$

![](../../../Distilled%20Notes/Faraday's%20Law.md#Coil%20Around%20a%20Core|Faraday's%20Law)

### Inductance Definition
$$v(t) = n \frac{\Delta \Phi}{\Delta t}= nA_{c} \frac{\Delta B}{\Delta t} = nA_{c} \mu \frac{\Delta H}{\Delta t}$$
$$= \frac{n^{2}A_{c}\mu}{l_{m}} \frac{\Delta i}{\Delta t} = L \frac{\Delta i}{\Delta t}$$
![Pasted image 20231019223844](Attachments/Pasted%20image%2020231019223844.png)
**Inductance L, depends on**
- Number of turns: $n$
- Geometry: $A_{c}l_{m}$
- Material: $\mu$
If the core is saturated $\frac{\Delta B}{\Delta t}=0$, Hence $v(t) = 0$ (inductance behaves like a short circuit)
![Pasted image 20231019224108](Attachments/Pasted%20image%2020231019224108.png)
![Pasted image 20231019224129](Attachments/Pasted%20image%2020231019224129.png)


We know that $v = L \frac{\Delta i}{\Delta t}$ where L is constant.

$$\int v \text{ } dt = \int L \frac{\Delta i}{\Delta t}dt \rightarrow \int v \text{ }dt = Li$$
$$v = n \frac{\Delta \Phi}{\Delta t} \rightarrow \int v \text{ }dt = n \Phi = \lambda$$

```ad-note
Inductance Definition:

$$\lambda = Li$$
```
![Pasted image 20231019224736](Attachments/Pasted%20image%2020231019224736.png)

### Magnetic Energy Stored

Magnetic energy is stored in an inductor in (Joules)
$$W = \frac{1}{2}Li^{2}$$

Is energy stored due to magnetic field inside a meterial ($\mu$ is a material-dependent constant)
$$W = \frac{1}{2} \frac{B^{2}}{\mu} Volume$$

Magnetic energt density, $J/m^3$
$$w = \frac{1}{2} \frac{B^{2}}{\mu}$$

### Units

| Quantity               | MKS                   |
| ---------------------- | --------------------- |
| Core Material Equation | $B = \mu_{0}\mu_{r}H$ |
| B                      | Tesla                 |
| H                      | Ampere/meter          |
| $\Phi$                 | Weber                 |



## Magnetic Circuits
![Pasted image 20231019225555](Attachments/Pasted%20image%2020231019225555.png)
(Magneto-motive Force) $\mathscr{F} = \mathscr{R} \Phi \leftrightarrow$ Electro-motive force $V = Ri$
*$\mathscr{R}$ is similar to Resistance R in electric circuits*

$$\mathscr{F} = H\mathscr{l}$$
$$H = \frac{B}{\mu}$$
$$B = \frac{\Phi}{A_c}$$
$$\mathscr{F} = \mathscr{R} \Phi = \frac{\mathscr{l}}{\mu A_{c}}\Phi$$

[Kirchhoff's Laws](../../../Distilled%20Notes/Kirchhoff's%20Laws.md)
Current law for a magnetic circuit, for one node: $\sum\limits_{Node} \Phi_{k}= 0$
![Pasted image 20231020001904](Attachments/Pasted%20image%2020231020001904.png)

Kirchoff's Voltage Law for Magnetic Circuit:
![500](Attachments/Pasted%20image%2020231020002247.png)
$H_{m}\mathscr{l}_{m}+ H_{g}\mathscr{l}_g = ni$

$\mathscr{F}_{m}+\mathscr{F}_{g}= ni$

$(\mathscr{R}_{m}+\mathscr{R}_{g})\Phi = ni$

$$\sum\limits_{loop}\mathscr{R}\Phi=\sum\limits_{loop}ni$$

![Pasted image 20231020002442](Attachments/Pasted%20image%2020231020002442.png)

$$\mathscr{R}_{c}= \frac{\mathscr{l}_{m}}{\mu A_{c}}$$
$$\mathscr{R}_{g}= \frac{\mathscr{l}_{g}}{\mu_{0}A_{c}}$$

$$\sum\limits_{loop}\mathscr{R} \Phi = \sum\limits_{loop}ni$$


### Inductance and Core Reluctance
![Pasted image 20231020002722](Attachments/Pasted%20image%2020231020002722.png)
The inductance can be determined using magnetic circuit relations:

$$(\mathscr{R}_{c}+\mathscr{R}_{g})\Phi=n*i(t)$$

$v(t)= n \frac{\Delta \Phi(t)}{\Delta t}$     $v(t) = L \frac{\Delta i(t)}{\Delta t}$    

$v(t) = \left(\frac{n^{2}}{\mathscr{R}_{c}+\mathscr{R}_{g}}\right) \frac{\Delta i(t)}{\Delta t}$


### Analogies

| Magnetic                                                         | Electrical (DC)                                                        |
| ---------------------------------------------------------------- | ---------------------------------------------------------------------- |
| $\frac{Ni}{\phi}=\mathscr{R} = \frac{l}{\mu A}$                  | Ohms Law: $\frac{v}{i}=R = \frac{l}{A/p}$                              |
| $\phi \sum\limits_{k}\mathscr{R}_{k}= \sum\limits_{m}N_{m}i_{m}$ | Kirchhoff's Voltage Law: $i \sum\limits_{k}R_{k}=\sum\limits_{m}v_{m}$ |
| $\sum\limits \phi_{k}= 0$                                        | Kirchoff's Current Law: $\sum\limits_{k}i_{k}=0$                       |

*See Power Electronics: Converters Applications and Design 3rd Edition Chapter 3. Mohan, Undeland, Robbins(2002)*


## Transformer Modelling
![Pasted image 20231020004042](Attachments/Pasted%20image%2020231020004042.png)
the **dot convention** (•) on transformer windings
1. current entering the • produces flux in the direction shown (right hand thumb rule)
2. Current **entering** / *leaving* the • in one winding induces **+ve**/*-ve* voltage at the • of the other winding.

### Ideal Transformer $\mathscr{R} =0$
![](Attachments/Pasted%20image%2020231026170955.png)
$0 = n_{1} i_{1} + n_{2} i_{2}$


**Faraday's Law:**$$
 \delta(t) = \begin{cases} 
      v_{1}=n_{1} \frac{\Delta\Phi}{\Delta t} \\
      v_{2}=n_{2} \frac{\Delta \Phi}{\Delta t}\\
   \end{cases} 
$$
$$\frac{\Delta \Phi}{\Delta t}=\frac{v_{1}}{v_{2}}$$


# Additional Content
---
