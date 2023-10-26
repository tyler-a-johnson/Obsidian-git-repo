 #Circuits #ELEC/2070 #Communication #UniNotes 
 
**Slides:**
[ELEC2070 Week 2 2023 Power Transfer and Energy Storage Elements](Attachments/ELEC2070%20Week%202%202023%20Power%20Transfer%20and%20Energy%20Storage%20Elements.pdf)

# Instantaneous Power
![Pasted image 20230305214159](Attachments/Pasted%20image%2020230305214159.png)
$$p(t) = v(t) * i(t)$$ Power is measured in Watts (W)

![Pasted image 20230305214247](Attachments/Pasted%20image%2020230305214247.png)

## Power has direction
Current has direction relative to voltage
![Pasted image 20230305214447](Attachments/Pasted%20image%2020230305214447.png)

In this example power is transferred from left to right (assuming voltage and current are positive in the direction shown).

Circuit A is supplying it and Circuit B is receiving it.

**Instantaneous power is also conserved**. Total power (in a closed circuit) is zero

$$p(t) > 0$$
Power Received

$$p(t) < 0$$
Power Supplied

Circuit A and Circuit B are arbitrary.

They can also be the two parts of the same circuit.

**We can calculate power transferred from any part to any other part if we know the voltage and the current at the intersection between the 2 circuits.**

# Employing our other equivalent circuits
![Pasted image 20230305215221](Attachments/Pasted%20image%2020230305215221.png)

To find the power received by R we need to know its voltage and current but not the other voltages and currents in the circuit.

We can use an equivalent circuit for the rest of the circuit as long as we don't change the voltage across R and the current through R.

If there are current or voltage sources in the rest of the circuit, we can use Thevenin or Norton equivalent circuits.

## Example
**Question: Find power transferred to R (=16 ohms)**
![Pasted image 20230305225524](Attachments/Pasted%20image%2020230305225524.png)
Connect the equivalent circuit to R

Use voltage divider rule: $v = \frac{R}{R+R_{t}}= 32V$
Next use Ohm's Law to find Current: $i = \frac{v_{oc}}{R+R_{t}}= 2A$

Therefore the transferred power is: $p = 64W$

# Maximum Power Transfer
![400](Attachments/Pasted%20image%2020230307120815.png)
![400](Attachments/Pasted%20image%2020230306000948.png)

**We want to find the value of $R_l$ that results in the maximum power delivered to it.

Now, the power dissipated by $R_l$ is $p=i^{2}R_{l}$
But the current is $i=\frac{v_s}{(R_t+R_l)}$
Therefore power in $R_l$ is $p = (\frac{v_s}{R_{t}+R_{l}})^{2}*R_l$ 

Assuming $v_s$ and $R_t$ are constant:
Then the change in power (in $R_l$) with the change in $R_l$ or 

$$\frac{\Delta p}{\Delta R_{l}}= {v_{s}}^{2} \frac{(R_{t}+R_{L})^{2}-2(R_{t}+R_L)R_{L}}{(R_{t}+R_{L})^{4}}$$

Now the maximum power is when $\frac{\Delta p}{\Delta R_{L}}=0$ Or 
$$(R_{t}+ R_{L})^{2} -2(R_{t}+ R_{L})R_{L} = 0$$$$R_{L}=R_{t}$$A component connected to a circuit will receive the maximum power from Circuit A when its resistance is equal to the Thevenin Resistance of Circuit A.

## Maximum Power Transfer
![Pasted image 20230313152411](Attachments/Pasted%20image%2020230313152411.png)
Since the power is given by : $p =(\frac{v_{s}}{R_{t}+R_{L}})^{2}R_{L}$
Substituting $R_{L}=R_{t}$ we get the maximum power $p_{max} = \frac{v_{s}^{2}}{4R_t}$

Using $R_{L}= R_{t}$ and $R_{t}= \frac{v_{oc}}{i_{sc}}$

You can calculate the following (and more)
![Pasted image 20230313152358](Attachments/Pasted%20image%2020230313152358.png)

You can also use this to find the max possible power a circuit can supply. *Maximum available power*

## Example Problems
![Pasted image 20230313152514](Attachments/Pasted%20image%2020230313152514.png)
![Pasted image 20230313152526](Attachments/Pasted%20image%2020230313152526.png)
![Pasted image 20230313152542](Attachments/Pasted%20image%2020230313152542.png)

# Energy Storage Elements
- *Capacitors* and *Inductors* store energy (as opposed to resistors which dissipate energy) - they are PASSIVE elements.
- While they are classed as linear elements, the current-voltage relationships are functions of time
- Their general behavior in a circuit is represented by differential equations (as opposed to Ohms law for resistors)
- A set of series/parallel capacitors (or inductors) can be reduced to an equivalent capacitor (or inductor). The formulas are listed below.
- In a DC Circuit (or in any circuit when currents and voltages do not change with time), **capacitors act lice open circuits** and **Inductors act like short circuits
- Signals can be integrated or differentiated using circuits that contain capacitors or inductors
- 
## Capacitors
![Pasted image 20230313153122](Attachments/Pasted%20image%2020230313153122.png)
> Capacitors ONLY let current pass if there is a change in voltage

A capacitor is a two terminal element which can be modelled as two parallel conducting plates separated by a non-conducting **dielectric** material. Electric charge is stored on the plates and in the electric field.

The Capacitance (C) is directly proportional to the area (A) and spacing (d) of the plates.
$$C = \frac{k \varepsilon_{0}A}{d}$$
Capacitance is measured in Farads (F)
$k$ = Relative permittivity (dielectric constant - changes based on material)
$\varepsilon_0$ = Permittivity of free space ($\varepsilon = 8.854 pF/m$)
$d$ = Distance between plates

## Energy is Stored in the Electric Field between the Plates
![Pasted image 20230313153718](Attachments/Pasted%20image%2020230313153718.png)

**Reference Link: www.physics.sjsu.edu/becker/physics51/capacitors.htm**

$$E = \frac{V}{D}$$
$$C=\frac{Q}{V}$$

## Important Equations


## Displacement Current

