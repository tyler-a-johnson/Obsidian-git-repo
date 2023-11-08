---
date: 2023-10-29
tags: 
status: Incomplete
Relevant Docs:
  - "[Week 12](Attachments/elec2005%20wk%2012.pdf)"
Relevant Questions: 
Relevant Notes: 
Practical Docs: 
Relevant Links:
---
[Week 12](Attachments/elec2005%20wk%2012.pdf)
# Maths and Distilled Info
---

## Electrochem energy: Key Attributes

- **Energy Density:** Energy stored per unit of mass volume, in $Wh/kg$ or $Wh/m^3$
- **Power Density:** Max rate of energy discharge per unit mass or volume in $W/kg$ or $W/m^3$
- **Capacity:** Amount of charge deliverable by a battery in a discharge cycle in $Ah$
- **Life:** number of discharge/recharge cycles at the rated capacity
- **Electrical Efficiency:** Ratio of the energy required to charge a battery compared to the available energy during discharge is the efficiency. (Approx 95% for Li-Ion, 75% for Lead Acid)
- **Safety:** Behaviour at high temp (fire risk)
- **Cost**

### Typical Values for Popular Battery Technologies
![](Attachments/Pasted%20image%2020231031142815.png)
- Charging rate of valve-regulated Lead-Acid (VRLA) batteries is constrained and is much smaller than discharging rate, resulting in longer charge time.
- Charging rate of Li-Ion batteries is not constrained, allowing fast charging.

## Energy Density and Power Density
**Lead Acid**
$Q = 80Ah$  $V = 12V$  $m = 31kg$  $v=10dm^{3}$   $R_{int}=37.5 m \Omega$
![](Attachments/Pasted%20image%2020231031143628.png)
$W = 12V 80Ah = 960Wh$

$\frac{W}{m} = \frac{960Wh}{31kg} = 31 \frac{Wh}{kg}$ **Specific Energy (energy density)**

$P_{max} = \frac{\left( \frac{V}{2} \right)^{2}}{R_{load}} \approx 1kW$ **theoretical max power when $R_{load} = R_{int}$**

$\frac{P_{max}}{m} = 32 \frac{W}{kg}$ **Specific power (power density)**

![](Attachments/Pasted%20image%2020231031144307.png)



# Conceptual Info
---
## Advantages and Disadvantages
**Advantages:**
- Storage allows using electricity at a different time that when it was generated
- Using your own (stored) energy when electricity from the grid is expensive
- Support grid stability (Frequency reg)
**Disadvantages:**
- Some energy is lost due to inefficiencies
- Additional investment costs
- Safety requirement (fire hazard)


## Electrochemical Cells
![](Attachments/Pasted%20image%2020231031144806.png)
### Terminology
-  **Electrochemistry** is a branch of chemistry dealing with the *conversion of chemical energy into electricity and vice versa* Energy conversion occurs through reduction-oxidation Redox reactions inside electrochemical cells
	- **Oxidation:** Loss of electrons (anode)
	- **Reduction:** Acquisition of electrons (cathode)
- Types of electrochemical cells:
	- *Galvanic:* Chemical energy --> Electricity (dry cells, Pb Acid, Ni-Cd)
	- *Electrolytic:* Electricity --> Chemical energy (Nelson's cell, Down's Cell)
- An electrochemical cell is typically formed by **two electronic conductors (electrodes)** and **one proton conductor (electrolyte)**

## Galvanic Cells

### Primary Cells
*Conversion of chemical energy into electricity is not reversible (non rechargeable cells/batteries)*

**Deniell's Cell Principle (1836)**
![](Attachments/Pasted%20image%2020231031140847.png)



### Secondary Cells
*Conversion of chemical energy into electricity is reversible (rechargeable cells/batteries)*

- Electrochemical **reactions are reversible**: chemical energy <--> electricity
- After cell is discharged, an **external electrical force is applied to reverse the flow of electrons** and re-establish the charged condition
- One discharge and charge operation is called a **cycle**
- A secondary cell can endure **hundreds or thousands** of charge/discharge cycles before losing original properties.

*For more info on reversible lead acid batteries:*
De Rosa, A. V., Fundamentals of Renewable Energy Processes, 3rd edn, Elsevier, 2013, pp. 833-834
#todo 


## Typical battery cell voltages and discharge curves

![](Attachments/Pasted%20image%2020231031144419.png)
- Cell voltage depends on chemistry
- Cell voltage is not constant
	- Cell voltage depends on capacity discharged (state of charge) SoC

### State of Charge (SoC)
![](Attachments/Pasted%20image%2020231031144718.png)


## Equivalent Circuit
![](Attachments/Pasted%20image%2020231031144834.png)
- Battery equivalent circuit: **Ideal voltage source in series with a small resistance**
- Current changes direction depending on charging or discharging

## Energy Stored in a Battery
$$E = \int^{Q}_{0} V  \, dQ $$
OR
$$E = \int^{t_{2}}_{t_{1}} VI \, dt $$

Battery specs usually use Ah or Wh
12V lead acid battery may be specified as a 165Ah battery. What is the energy deliverable by the battery?

### Ragone Plot for different battery tech
![](Attachments/Pasted%20image%2020231031145427.png)


## Battery Specs
- Electric charge Q delivered by the battery when fully charged
	- $Q = It$ (ie) constant current delivered for a certain time
- It is a measure of the energy delivered by the battery
![](Attachments/Pasted%20image%2020231031145957.png)
A 200Ah battery
- Delivers 10A for 20h
- Delivers 50A for 4h
According to this chart

Battery capacity is determined discharging the battery at a constant current, for a fixed time, until allowed minimum voltage is reached

### Discharge Rate
- Rate at which charge is taken out of the battery
- Example: discharge rate for 200Ah battery
	- 1h is 1C = 200Ah (1C --> 1 * 200A = 200A in 1 hr)
	- 10h is 0.1C = 20A (0.1C --> 0.1 * 200A = 20A in 10hrs)
	- 0.5h is 2C = 400A (2C --> 2 * 200A = 400A in 0.5h)
![](Attachments/Pasted%20image%2020231031151346.png)
- Min voltage depends on discharge rate
- Higher discharge rates imply lower min voltage
- Higher discharge rates imply lower discharge times

### Depth of Discharge (DoD)
How much of the battery is discharged with each cycle
- Deeper the discharge every cycle, the shorter the number of cycles it can do (the shorter its lifetime)
- battery design takes this into account
	- batteries for stand-alone power systems are designed for deep discharging and need to endure high number of cycles

### Effect of temperature on the availability capacity
![](Attachments/Pasted%20image%2020231031151850.png)
- lower temp decreases available capacity, but higher temps mean fire risk or failure

### Typical charging profile
Constant current - constant voltage charging profile (CC-CV)
![](Attachments/Pasted%20image%2020231031152100.png)



# Additional Content
---

## South Australia Hornsdale Power Reserve
![](Attachments/Pasted%20image%2020231031135653.png)
Rated at 100 MW/129MWh, it was the largest Li-Ion battery in the world at time of installation. When at peak output, can provide enough electricity to power the equivalent of 45,000 homes.

## Storage of Compound intermittency of renewable sources
*PV Energy*
Solar power generation and load demand for a South Australian home.
![](Attachments/Pasted%20image%2020231031134807.png)
Notice the peak load and peak generation do not line up.

*Wind energy*
![](Attachments/Pasted%20image%2020231031134914.png)
Another case of peak demand not meeting peak production

## Energy Storage Locations
![](Attachments/Pasted%20image%2020231031134959.png)

**Pumped hydro:** Large amounts of water are pumped to a large reservoir in a high location during low power demand periods using renewable or non renewable sources (depending on renewable effectiveness). When power demand peaks the water is released through a turbine into a lower reservoir, generating energy. 
Essentially the water acts as a large battery that is recharged in downtime.

### Battery energy storage by application
![](Attachments/Pasted%20image%2020231031135558.png)



## Comparison Between Electrochem Storage Tech
![](Attachments/Pasted%20image%2020231031142305.png)


## Simulink Battery Models
![](Attachments/Pasted%20image%2020231031152220.png)
- Battery model used in Simulink (Simscape Electrical)
- Model embeds all the characteristics explained in this lecture

### EVs and efficiency
- Traction battery pack 
	- stores electricity for use by the electric traction motor 

- Power electronic controller 
	- manages the energy flows to/from motor and batteries 
	- allows to control speed and torque of the electric motor 
	- increases reliability and battery lifetime

- DC/DC converter 
	- converts higher-voltage DC power from the traction battery pack to the lower-voltage DC power needed to run vehicle accessories and recharge the auxiliary battery

- Charge port 
	- the charge port allows the vehicle to connect to an external power supply in order to charge the traction battery pack

![](Attachments/Pasted%20image%2020231031152602.png)

For EV are powered using electricity, much more efficient than internal combustion. However for EVs to be truly positive for the environment they need to be powered using renewable resources such as wind and solar.


## Readings
Masters (2004), Renewable and Efficient Electric Power Systems
Chapter 9 (extract): Photovoltaic Systems
9.5.3 Batteries 
-  9.5.4 Basics of Lead-Acid Batteries 
-  9.5.5 Battery Storage Capacity 
-  9.5.6 Coulomb Efficiency Instead of Energy Efficiency
-  9.5.7 Battery Sizing

FESTO Didactic, Student Manual 579343: Lead-acid batteries