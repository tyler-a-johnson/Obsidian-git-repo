---
date: 2030-08-30
tags:
  - MTRN/3026
status: Complete
Relevant Docs:
  - "[[Attachments/chapt-IM.doc]]"
  - "[[Attachments/Week-45(Induction Machines-edited).pdf]]"
  - "[[Attachments/Starting_of_motors.pdf]]"
  - "[[Attachments/Performance_IM_tests.pdf]]"
Relevant Questions:
  - "[[Attachments/Tutorial-Week-6.pdf]]"
  - "[[Attachments/Tut-7.pdf]]"
Relevant Notes:
  - "[[Lorentz Force Equations]]"
  - "[[Faraday's Law]]"
  - "[[../../../Distilled Notes/Power Flow in Motors|Power Flow in Motors]]"
---

# Intro
Three phase induction motors are the **most common and frequently encountered machines in industry**.
- Simple, rugged, low price and easy maintenance.
- Wide range of power ratings: Fractional horsepower up to *10MW*
- Run essentially as *constant speed from no-load to full load*
- Its speed depends on the *frequency of the power source.*
	- This makes variable speed control **difficult.**
	- Required a **variable-frequency power-electronic drive for speed control.**



# Rotating Magnetic Field and Synchronous Speed
- Equidistant three phase windings (*i.e. mechanically displaced 120 degrees from each other, fed by balanced three phase source.*)
- A rotating **magnetic field of constant magnitude** is produced, **rotating at speed $n_{sync}$**
![[Attachments/Pasted image 20230901222628.png||400]]
$$n_{sync} = \frac{120 f_{e}}{P}\text{  RPM}$$
Where:
$f_{e}$ Is the supply frequency
$P$ is the number of poles
$n_{sync}$  is called the **synchronous speed**

Our three phase power is shown on the left, and orientations for a 4 pole motor is shown on the right.
$$B_{net}(t) = B_{a}(t) + B_{b}(t) + B_{c}(t)$$







# Slip and Slip Speed
Our IM will always run at a speed lower than the synchronous speed. The difference in motor speed and synchronous speed is called the **slip.**

$$n_{slip}=n_{sync}-n_{m}$$
**Where:**
$n_{slip}$  is the slip speed
$n_{sync}$  is the speed of the magnetic field
$n_{m}$  is the mechanical shaft speed of the motor.

$$S = \frac{n_{sync} - n_{m}}{n_{sync}}$$
**Where:**
$s$ is the slip
If the motor runs at synchronous speed.

$$N_{r}= (1-s)n_{sync}$$

**N_r = Motor Speed**



# Voltage Frequency in the Rotor VS the Stator
Voltage in the rotor is not the same as the frequency as the supply (**stator**) voltage. *This is because the rotor (secondary) is rotating*.
$$f_{r}= \frac{P*n_{slip}}{120}$$
**Where:**
$f_{r}$  Is the rotor frequency (Hz)
$P$ is the number of poles
$n$  is the slip speed (rpm)

We have it in terms of supply frequency:
$$f_{r}= sf_e$$
**Where:**
$f_{e}$ is the frequency of the supply voltage
**S = 1 when the rotor is blocked,** the frequency if induced voltage is the **same as supply**. If **S = 0 we are running at synchronous** speed and our **frequency is 0**.

We have other flavours too:
$$f_{r}= \frac{P(n_{sync}-n_{m})}{120}$$
$$= \frac{P*Sn_{sync}}{120}=Sf_{e}$$









# Output Torque
Mechanical load applied to the motor shaft will introduce **torque.**  *Torque is related to motor output power and speed.*
$$\tau_{load}= \frac{P_{out}}{\omega_m}$$

We can convert $n_m$ to $\omega$. 
$$\omega_{m}= \frac{2 \pi n_m}{60}$$
## Horsepower
Horsepower is a shit unit that's only used for talking about motors.
$$1HP = 746 \text{ Watts}$$ 
## Maximum Torque
- Maximum torque occurs when the **output power transferred to $R_{2}/s$ is at max.**
- This occurs when $\frac{R_{2}}{s}$ equals the magnitude of the impedance:  $R_{TH} + j(X_{TH}+X_{2})$
$${s_{T_{max}}} = \frac{R_{2}}{\sqrt{R^{2}_{TH}+(X_{TH}+X_{2})^2}}$$

The corresponding max torque of an induction motor:
$$\tau_{max} = \frac{1}{2 \omega_{s}}(\frac{3V^{2}_{TH}}{R_{TH} + \sqrt{R^{2}_{TH} + (X_{TH}+X_{2})^{2}}})$$








# Equivalent Circuits
## Rotor
Rotor equivalent circuit is as follows:
![[Attachments/Pasted image 20230904004330.png]]
**Where:**
$E_{R}$ is the induced voltage in the rotor
$R_R$ is the rotor (winding) resistance

Using this we can calculate the rotor current as:
$$I_{R}=\frac{E_{R}}{R_{R}+jX_{R}}$$
$$= \frac{sE_{R0}}{(R_{R}+jsX_{R0})}$$

Dividing both the numerator and denominator by s we get:
$$I_{R} = \frac{E_{R0}}{(\frac{R_R}{s}+jX_{R0})}$$
**Where:**
$E_{R0}$ is the induced voltage and $X_{R0}$ is the rotor reactance at s=1.

## All in One
We can combine the stator and rotor circuit in one equivalent circuit.
![[Attachments/Pasted image 20230904010204.png]]
**With the following properties:**
$$X_{2}= a^{2}_{eff} X_{R0}$$
$$R_{2}= a^{2}_{eff}R_{R}$$
$$I_{2} = \frac{I_R}{a_{eff}}$$
$$E_{1}=a_{eff}E_{R0}$$
$$a_{eff} = \frac{N_S}{N_R}$$
**Where** $a_{eff}$ is the gain between the stator and rotor (Ns and Nr refer to stator and rotor windings)







# Power flow and Relations
Here's a flow chart of power losses on a motor
![[Attachments/Pasted image 20230904005142.png]]
**With the following relations:**
$$P_{in}= \sqrt{3} V_{L}I_{L} \cos \theta = 3 V_{ph}I_{ph} \cos \theta$$
$$P_{SCL}= 3I^{2}_{1}R_{1}$$
$$P_{AG} = P_{in} - (P_{SCL}+P_{core})$$
$$P_{RCL}= 3 I_{2}^{2}R_{2}$$
$$P_{conv} = P_{AG} - P_{RCL}$$
$$P_{out} = P_{conv} - (P_{f+w}+P_{stray})$$

We can also say:
$$\tau_{induced}= \frac{P_{conv}}{\omega_{m}}$$

## Power Ratios
![[Attachments/Pasted image 20230904010254.png]]
These three values actually are linked with a ratio, these ratios are equal: 
$$P_{AG}:P_{RCL}:P_{conv}$$
$$1:s:1-s$$




# Torque, Power, and Thevenin's Theorem
![[Attachments/Pasted image 20230922221451.png|500]]
We can turn the circuit to the left *a* and *b* into an equivalent voltage $V_{TH}$ with series impedance $R_{TH}+jX_{TH}$
![[Attachments/Pasted image 20230904014445.png||500]]
$$V_{TH}= V_{\phi} \frac{jX_{M}}{R_{1}+j(X_{1}+X_{M})}$$
$$|V_{TH}| = |V_{\phi}| \frac{X_M}{\sqrt{R_{1}^{2}+(X_{1}+X_{M})^2}}$$
$$R_{TH}+jX_{TH} = (R_{1}+jX_{1})//jX_{M}$$

Since $X_{M}>X_1$ and $X_{M}>R_{1}$
$$V_{TH} \approx V_{\phi} \frac{X_M}{X_{1}+X_{M}}$$

Since $X_{M} > X_{1}$ and $X_{M}+X_{1} > R_{1}$
$$R_{TH} \approx R_{1}(\frac{X_M}{X_{1}+X_{M}})^{2}$$
$$X_{TH} \approx X_{1}$$

Then this shit:
$$I_{2}= \frac{V_{TH}}{Z_{T}}= \frac{V_{TH}}{\sqrt{(R_{TH} + \frac{R_{2}}{s})^{2}+(X_{TH}+X_{2})^2}}$$
We calculate power converted to mechanical
$$P_{conv}=3I^{2}_{2} \frac{R_{2}(1-s)}{s}$$

**We get this abomination of an equation:**
$$\tau_{ind} = \frac{1}{\omega_{s}} \frac{3V^{2}_{TH}(\frac{R_{2}}{s})}{(R_{TH} + \frac{R_{2}}{s})^{2}+(X_{TH}+X_{2})^{2}}$$







# Determination of Motor Parameters
We can use the same tests as we use for transformers to determine motor parameters.
- **DC TEST**: Determine the stator resistance $R_1$
- **NO-LOAD TEST**: Determine the rotational losses and magnetization current
- **LOCKED ROTOR TEST**: Determine the rotor and stator impedances (similar to short circuit test)
## DC Test
- Used to determine $R_{1}$
- Connect a variable DC voltage between two stator terminals
![[Attachments/Pasted image 20230904204421.png]]
Since $R_{DC} = \frac{V_{DC}}{I_{DC}}$
If the stator is **Y-Connected**, the per phase stator resistance is:
$$R_{1}= \frac{R_{DC}}{2}$$

If the stator is **delta-connected** the per phase stator resistance is:
$$R_{1}= \frac{3}{2}R_{DC}$$

To include the effects of the [[../../../Distilled Notes/Skin Effect|Skin Effect]] the AC resistance is taken as higher than the DC resistance. ($R_{AC} = 1.1$ to $1.15$ times $R_{DC}$)

## No-Load Test
![[Attachments/Pasted image 20230904210940.png||500]]
1. Motor is allowed to spin freely
2. Only load on the motor is friction and windage loss. All $P_{conv}$ is consumed by mechanical losses.
3. Very small slip
![[Attachments/Pasted image 20230904211143.png]]
$S \approx 0$ Since slip is very small
Let $X_{nl}=X_{1}+X_{m}$

**No-load resistance:**
$$R_{nl} = \frac{P_{nl}}{3I_{1}^{2}}$$$$V_{1}=\frac{V_{L}}{\sqrt{3}}$$

**No-load impedance:**
$$Z_{nl}= \frac{V_{1}}{I_{1}}$$

**No-load reactance:**
$$x_{nl} = \sqrt{Z_{nl}^{2} - R_{nl}^{2}}$$

**Magnetizing Reactance:**
$$x_{m} = x_{nl} - x_{1}$$

$$P_{nl} = P_{rot} + SCL$$
**Where** $P_{rot}$ are rotational losses, and SCL is **Stator Copper Losses** ($3I_{1}^{2}R_{1}$)



## Blocked-Rotor Test
Rotor is locked in place and a **low frequency voltage** is applied to the motor and the resulting voltage, current and power.
![[Attachments/Pasted image 20230904212234.png]]
- AC voltage applied to the stator is adjusted so the **current flow is approximately full load value**

**Locked rotor power factor:**
$$PF = \cos \theta = \frac{P_{in}}{\sqrt{3}V_{l}I_{l}}$$

**Magnitude of total impedance:**
$$|Z_{LR}| = \frac{V_{\phi}}{I} = R_{LR}+jX'_{LR}$$
$$|Z_{LR}| \cos \theta + j |Z_{LR}| \sin\theta$$

$$R_{LR} = R_{1}+R_{2}$$
$$X'_{LR}=X'_{1}+X'_{2}$$
**Where** $X'_{1}$ and $X'_{2}$ are the stator and rotor reactance (respectively) at **test frequency**

$$R_{2} = R_{LR} - R_{1}$$
$$X_{LR} = \frac{f_{rated}}{f_{test}}X'_{LR}=X_{1}+X_{2}$$

|              | $X_1$ and $X_2$ as function of $X_{LR}$ |
| ------------ | --------------------------------------- | ----------- |
| Rotor Design | $X_1$  | $X_2$       |
| Wound rotor  | 0.5 $X_{LR}$  | 0.5$X_{LR}$ |
| Design A     | 0.5$X_{LR}$  | 0.5$X_{LR}$ |
| Design B     | 0.4$X_{LR}$   | 0.6$X_{LR}$ |
| Design C     | 0.3$X_{LR}$  | 0.7$X_{LR}$ |
| Design D     | 0.5$X_{LR}$   | 0.5$X_{LR}$ |




# -
--- 
# Induction Motor Construction
![[Attachments/article-Types-and-Constructi-0QP.jpg||500]]
Induction motors have **two main parts:**
- *Stator*
	- A steel frame that supports a hollow cylindrical core
	- Core constructed from **stacked laminations to reduce eddy current loss**. With evenly spaced slots providing space for the stator winding.
- *Rotor*
	- Composed of punched **laminations**, stacked to create a series of rotor slots.
	- There are **two types of rotor windings:**

*Wound Rotor*: Conventional **three phase winding** made of insulated wire.
![[Attachments/maxresdefault 1.jpg||500]]
*Squirrel Cage*: Aluminium bars shorted together at the end by two aluminium rings. Forming a **squirrel-cage** shaped circuit.
![[Attachments/squirrel-cage-induction-motor-rotor.jpg]]

These rotor configurations lend themselves to two basic designs:
- *Squirrel Cage:* Conducting bars are laid into the slots in the stator and shorted with the end ring.
- *Wound Rotor:* A complete set of three-phase windings just like the stator, connected to **3 slip rings** on the rotor shaft. In this way the circuit is accessible.

# Principles of Operation
- Rotating magnetic field cuts the rotor windings and produces an induced voltage in the rotor windings.
- Due to the fact that the rotor windings are short circuited, **both in squirrel cage and wound rotor configurations**. an induced current flows in the rotor windings.
- The rotor current produces **another magnetic field**
- A torque is produced as a result of the **interaction of those two magnetic fields**.

$$\tau_{ind}=kB_{R} * B_{S}$$
**Where:**
$\tau_{ind}$  is the induced torque 
$B_{R}$ and $B_{S}$ are the magnetic flux densities of the **rotor** and the **stator** respectively.
$k$ is a **constant that depends on the motor**

## Speed
*Can we run the motor at the synchronous speed?*
- If the rotor runs at synchronous speed, the rotor will be rotating at the same speed as the magnetic field.
- **From the magnetic field's frame of reference, the rotor is stationary.** so long as they are at the same speed.
- Since they are both stationary relative to eachother, the magnetic field will not cut the rotor. This means that **no current or magnetic flux is induced in the rotor.**
- If because of this, the rotor will **fall under the synchronous speed.**
- Once it falls, current is induced again, and torque is generated.

## Induction Motors and Transformers
Both Induction Motors and [[../../../Distilled Notes/Transformers (Not the funny robot)|Transformers (Not the funny robot)]] work on the principle of induced voltage.

**Transformer:** Voltage applied to the **primary** windings produce an induced voltage in the *secondary*.
**Induction Motors:** Voltage applied to the **stator** windings produce an induced voltage in the *rotor* windings.

The difference is that our rotor is able to move. Due to the rotation of the rotor, its induced voltage **is not the same as the frequency of the stator*.

## Torque-Speed Characteristics
![[Attachments/Pasted image 20230904013502.png]]
1. The curve is **nearly linear** between **no-load** and **full load**. In this range the **rotor resistance is much greater than reactance** so the rotor current and torque increase linearly with slip.
2. Pull-out torque is the **maximum** amount of torque. And is **2 to 3 times the rated full load torque.**
3. The **torque of the motor** for a given slip **varies as a square of the applied voltage**

> [!important]
> The slip at max torque is directly proportional to the rotor resistance $R_{2}$
> 
**The maximum torque is independent of $R_{2}$**

Rotor resistant can be increased by inserting external resistance in the rotor of a **wound-rotor** induction motor.
```ad-bug
The **value of the maximum torque remains unaffected**

But **the speed at which it occurs can be controlled**
```

Speed that max torque occurs is dependent on **rotor resistance**
![[Attachments/Pasted image 20230904200941.png]]



# Equivalent Circuits
The complication with making an equivalent circuit for an IM is that *changes in frequency change the reactance of the circuit*

We can derive an expression for input voltage $E_{r}$.
$$E_{R}= s E_{R0}$$
**Where:**
$E_{R0}$ is the largest value of the rotors induced voltage (where s = 1)

Since:
$X_{(\text{Reactance})} = \omega_r L_r = 2\pi f_r L_r$
**Frequency of induced voltage (rotor) changes, reactance of the rotor changes.**

## Rotor
Rotor equivalent circuit is as follows:
![[Attachments/Pasted image 20230904004330.png]]
**Where:**
$E_{R}$ is the induced voltage in the rotor
$R_R$ is the rotor (winding) resistance

Using this we can calculate the rotor current as:
$$I_{R}=\frac{E_{R}}{R_{R}+jX_{R}}$$
$$= \frac{sE_{R0}}{(R_{R}+jsX_{R0})}$$

Dividing both the numerator and denominator by s we get:
$$I_{R} = \frac{E_{R0}}{(\frac{R_R}{s}+jX_{R0})}$$
**Where:**
$E_{R0}$ is the induced voltage and $X_{R0}$ is the rotor reactance at s=1.

## All in One
We can combine the stator and rotor circuit in one equivalent circuit.
![[Attachments/Pasted image 20230904004437.png]]
**With the following properties:**
$$X_{2}= a^{2}_{eff} X_{R0}$$
$$R_{2}= a^{2}_{eff}R_{R}$$
$$I_{2} = \frac{I_R}{a_{eff}}$$
$$E_{1}=a_{eff}E_{R0}$$
$$a_{eff} = \frac{N_S}{N_R}$$
**Where** $a_{eff}$ is the gain between the stator and rotor (Ns and Nr refer to stator and rotor windings)

# Power Losses and Power Flow
Here's a flow chart of power losses on a motor
![[Attachments/Pasted image 20230904005142.png]]
**With the following relations:**
$$P_{in}= \sqrt{3} V_{L}I_{L} \cos \theta = 3 V_{ph}I_{ph} \cos \theta$$
$$P_{SCL}= 3I^{2}_{1}R_{1}$$
$$P_{AG} = P_{in} - (P_{SCL}+P_{core})$$
$$P_{RCL}= 3 I_{2}^{2}R_{2}$$
$$P_{conv} = P_{AG} - P_{RCL}$$
$$P_{out} = P_{conv} - (P_{f+w}+P_{stray})$$

We can also say:
$$\tau_{induced}= \frac{P_{conv}}{\omega_{m}}$$


# Bonus Round: Load Coupling
![[Attachments/Pasted image 20230904214044.png]]
Pretty self explanitory, we have:
**Drive Shaft**
**Jaw Coupling**
**Driven Pulley**
**Belt Conveyor**




# -
---
# Examples
## Example 1: Sync speed, Rotor Speed, and Slip
A 208-V, 10hp, four pole, 60 Hz, Y-connected induction motor has a full-load slip of 5 percent.
1. What is the synchronous speed of this motor? 
2. What is the rotor speed of this motor at rated load? 
3. What is the rotor frequency of this motor at rated load? 
4. What is the shaft torque of this motor at rated load?
![[Attachments/Pasted image 20230904000412.png]]

## Example 2: Power and Efficiency
A 480-V, 60 Hz, 50-hp, three phase induction motor is drawing 60A at 0.85 PF lagging. The stator copper losses are 2 kW, and the rotor copper losses are 700 W. The friction and windage losses are 600 W, the core losses are 1800 W, and the stray losses are negligible. Find the following quantities:
1. The air-gap power PAG. 
2. The power converted Pconv. 
3. The output power Pout. 
4. The efficiency of the motor.
![[Attachments/Pasted image 20230904010521.png]]
![[Attachments/Pasted image 20230904010530.png]]

## Example 3: Speed, Current, Power, and Torque using Equivalent Circuit
A 460-V, 25-hp, 60 Hz, four-pole, Y-connected induction motor has the following impedances in ohms per phase referred to the stator circuit:
- R1= 0.641Ohms 
- R2= 0.332 Ohms 
- X1= 1.106 Ohms 
- X2= 0.464 Ohms 
- XM= 26.3 Ohms
The total rotational losses are 1100 W and are assumed to be constant. The core loss is lumped in with the rotational losses. For a rotor slip of 2.2 percent at the rated voltage and rated frequency, find the motor’s:
1. Speed 
2. Stator current 
3. Power factor
4. Pconv and Pout 
5. t ind and t load 
6. Efficiency
![[Attachments/Pasted image 20230904010846.png]]
![[Attachments/Pasted image 20230904010856.png]]
![[Attachments/Pasted image 20230904010906.png]]

## Example 4: Slip, Torque, operating speed, and power
A two-pole, 50-Hz induction motor supplies 15kW to a load at a speed of 2950 rpm. 
1. What is the motor’s slip? 
2. What is the induced torque in the motor in N.m under these conditions? 
3. What will be the operating speed of the motor if its torque is doubled? 
4. How much power will be supplied by the motor when the torque is doubled?
![[Attachments/Pasted image 20230904201354.png]]
![[Attachments/Pasted image 20230904201407.png]]

## Example 5: Max torque, starting torque, rotor resistance and Torque Speed Plot
A 460-V, 25-hp, 60-Hz, four-pole, Y-connected wound-rotor induction motor has the following impedances in ohms per phase referred to the stator circuit 
R1= 0.641 Ohms
R2= 0.332 Ohms
X1= 1.106 Ohms
X2= 0.464 Ohms
XM= 26.3 Ohms
1. What is the maximum torque of this motor? At what speed and slip does it occur? 
2. What is the starting torque of this motor? 
3. If the rotor resistance is doubled, what is the speed at which the maximum torque now occur? What is the new starting torque of the motor? 
4. Calculate and plot the T-s c/c for both cases.
![[Attachments/Pasted image 20230904201626.png]]
![[Attachments/Pasted image 20230904201635.png]]
![[Attachments/Pasted image 20230904201649.png]]
![[Attachments/Pasted image 20230904201705.png]]
![[Attachments/Pasted image 20230904201714.png]]
![[Attachments/Pasted image 20230904201725.png]]



## Example 6: Motor Tests, Equivalent Circuits, Pull-out Torque
The following test data were taken on a 7.5-hp, four-pole, 208-V, 60-Hz, design A, Y-connected IM having a rated current of 28 A.
**DC Test:**
VDC = 13.6 V 
IDC = 28.0 A 
**No-load Test:** 
Vl = 208 V 
f = 60 Hz 
I = 8.17 A 
Pin = 420 W 
**Locked-rotor Test:**
Vl = 25 V 
f = 15 Hz 
I = 27.9 
A Pin = 920 W
(a) Sketch the per-phase equivalent circuit of this motor. 
(b) Find the slip at pull-out torque, and find the value of the pull-out torque.

#todo This example
