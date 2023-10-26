---
date: 
tags:
  - MTRN/3026
status: Complete
Relevant Docs:
  - "[Powering-supplies](Attachments/Powering-supplies.pdf)"
  - "[Powering-supplies](Attachments/Powering-supplies.pptx)"
Relevant Questions: []
Relevant Notes: []
---

# Distilled Info
---

# Discharge of Battery
- $\text{Ampere}*\text{hour}(Ah)=3600$ Coulombs, a measure of electric charge
- $\text{Watt}*\text{hour} (Wh) =3600$ Joules, a measure of energy
- $Ah = (Wh)/emf$ 

## C Rating
To make this simple, the battery should provide *1C current for 1 hour*. In our example above, *that would be 2000mAh or 2A of current for 1 hour*. 
The *same applies for a 0.5C rating*. Again using the 2000mAh battery, *it would deliver 1000mAh or 1A of current for 2 hours*

**Continuous Discharge:**
$(Ah)*CRate$ = Continuous Discharge Amperage

**Runtime**
$\frac{60mins}{CRate}=Runtime$

For 10C, 1600mAh
$\frac{1600}{1000}*10 =16A$
$\frac{60}{10}= 6mins$
16A for 6 Mins

## Utilisation
Assuming we need 0.75 Amps and our utilization is 75%.
Our actual output current is 1A as (0.75I = 0.75A)

## Charging and Discharging
$$P=VI$$
$$Q=It$$

**Charging current should be 10% of the Ah rating of battery**
**We can round given losses**

**Approximately 40% losses occur in battery charging**


# DC Power Supply
![Pasted image 20230815212902](Attachments/Pasted%20image%2020230815212902.png)
## Line Filter
![Pasted image 20230815212950](Attachments/Pasted%20image%2020230815212950.png)
Eliminates noise on the AC line and prevents signals returning from the transformer
## Transformers and Rectifier Ripple
```ad-note
Capacitors of Infinite Capacitance will **ABSORB** all **DC** (Will appear as an open circuit) and will **PASS** all **AC** (Will appear as a short)

We add a high capacitance device across the rectifier terminals to filter the signal further.

```

![Pasted image 20230815213732](Attachments/Pasted%20image%2020230815213732.png)
![Pasted image 20230815214107](Attachments/Pasted%20image%2020230815214107.png)
### Practical Config of Three Basic DC to DC Converters
![Pasted image 20230924233501](Attachments/Pasted%20image%2020230924233501.png)

---
# Electrochemical Batteries
- REDOX Reaction
	- Oxidation, the loss of electrons, occurs at the anode.
	- Reduction, the gain of electrons, occurs at the cathode.
![Pasted image 20230815201851](Attachments/Pasted%20image%2020230815201851.png)
- **Primary Batteries** - Disposable (cannot be reused)
- **Secondary Batteries** - Rechargeable
- **EMF** - Electromotive force, voltage

*Definitions:*
- $\text{Ampere}*\text{hour}(Ah)=3600$ Coulombs, a measure of electric charge
- $\text{Watt}*\text{hour} (Wh) =3600$ Joules, a measure of energy
- $Ah = (Wh)/emf$ 

## Electrochemical Cell
$$Zn \rightarrow Zn^{2+}+2e^{-}$$
$$Cu^{2+}+2e^{-} \rightarrow Cu$$
**Zinc is much more easily oxidised than Copper**
- *Salt bridge only carries negative ions*
	- This is the *limiting factor for current flow*
	- Pick a *low-resistance bridge*
## Electrochemical Series
**Most wants to reduce (gain electrons)**
- Gold
- Mercury
- Silver
- Copper
- Lead
- Nickel
- Cadmium
- ---------------------
- Iron
- Zinc
- Aluminium
- Magnesium
- Sodium
- Potassium
- Lithium
**Most wants to oxidize (lose electrons)**
##  History of the Battery
- *Nickel-Cadmium Battery*
	- Waldmar Jugner 1899
- *The common Alkaline Battery*
	- Lewis Urry 1955
- *Nickel Metal Hybrid Battery*
	- NiMH Batteries for small application - became available 1989
- *Lithium and Lithium-Ion Batteries*
	- First lithium batteries sold 1970s
	- First lithium ion batteries sold in 1991
	- First lithium-ion polymer batteries released in 1996
## Battery Characteristics
- **Size**
	- Physical: Button, AAA, AA, C, D...
	- Energy Density (W per kg OR cm^3
- **Longevity**
	- Capacity (Ah, for drain of C/10 at 20$\degree C$ )
	- Number of recharge cycles
- **Discharge characteristics (voltage drop over time)**
- **Cost**
- **Behavioural factors**
	- Temperature range (storage and operation)
	- Self discharge
	- Memory effect
- **Environmental Factors**
	- Leakage, gassing, toxicity
	- Shock resistance
	- Waste and recycling
*Here are some standards and their associated specs:*

|               | AAA   | AA    | 9V    | C      | D     |
| ------------- | ----- | ----- | ----- | ------ | ----- |
| Capacity (Ah) | 1.250 | 2.890 | 0.625 | 8.350  | 20.50 |
| Voltage       | 1.5   | 1.5   | 9     | 1.5    | 1.5   |
| Energy (Wh)   | 1.875 | 4.275 | 5.625 | 12.525 | 30.75      |

## Short Descriptions
```ad-example
title: Nickel Cadmium (NiCd)
- Well understood
- Relatively **low energy density**
- **long life, high discharge** rate
- economical price
- Main applications: *Two way radios, biomedical equipment, professional cameras. and power tools.*
- **Toxic metals, environmentally unfriendly**
```
```ad-bug
title: Nickel-Metal Hydride
- Higher energy density compared to NiCd
- Reduced cycle life
- **No toxic metals**
- Applications: *Phones and laptops*
```
```ad-important
title: Lead Acid
- Most economical for **large power applications**
- Heavy
- Applications: *Hospital equipment, wheelchair, emergency lighting, and UPS systems*
```
```ad-warning
title: Lithium Ion (Li-ion)
- Fastest growing/developing currently
- **High energy density and lightweight**
- Fragile, needs protection circuit to ensure safety
- Applications: *notebook computers, phones, handheld devices*
```
```ad-danger
title: Lithium Ion Polymer (Li-ion polymer)
- Attributes of Li-ion in ultra slim geometry
- Simplified packaging
- Can be dangerous when pierced
- Applications: *Phones, tablets*
```

## Discharge of a battery

### C Rating Background
C rate is derived from [Coulomb's Law](Coulomb's%20Law) developed by the French physicist *Charles Augustin de Coulomb*.

*For example, If a battery is labelled 2000mAh then its 1C rating is 2000mAh.*

To make this simple, the battery should provide *1C current for 1 hour*. In our example above, *that would be 2000mAh or 2A of current for 1 hour*. 

The *same applies for a 0.5C rating*. Again using the 2000mAh battery, *it would deliver 1000mAh or 1A of current for 2 hours*

### Battery C rating Examples:
The formulas for the examples are simple. 1600mAh battery with a rating of 10C.

**Continuous Discharge:**
$(mAh / 1000) * \text{C-Rate}$ = Continuous Discharge Amperage
$(\frac{1600}{1000})*10=16A$ 

**Run Time for Safe Continuous Discharge**
$\frac{60\text{mins}}{\text{C-Rate}}=$ Run Time
$\frac{60\text{mins}}{10C}$ = Discharge at 16A for 6 Mins (60/10 = 6)
![Pasted image 20230815210551](Attachments/Pasted%20image%2020230815210551.png)
Storage also has an effect, as the batteries sit unconnected after manufacturing. The battery's *internal resistance* as demonstrated by our equivalent circuit for a battery will slowly drain the cell.
![Pasted image 20230815210716](Attachments/Pasted%20image%2020230815210716.png)

## Calculation of Battery Capacity
*Assuming the current required = 0.75A*
Assume utilization efficiency is 75%

| Desired time(Hrs) | Required Ah |
| ------------------ | ----------- |
| 1                  | 1.0         |
| 2                  | 2.0         |
| 4                  | 4.0         |
| 8                  | 8.0         |
| 12                 | 12.0        |
| 24                 | 24.0        |
| 48                 | 48.0        |
| 72                 |    72.0         |

With these assumptions our 0.75A current becomes 1A (Only 75% utilization means our total current must be 1A in order to actually supply our required 0.75A)

## Battery Charging and Discharging
*Example: Calculate time for which I can watch a 100W TV on a 150Ah Battery*
$P = VI$
$P = 100W$
Assuming 12V battery
$$100 = 12I$$
$$I = 8.33A$$
Charge stored (Q) is 150Ah
$$Q = It = 150$$
$$t = \frac{150}{8.33}= 18hrs$$
**Considering utilization is always less than 100% the actual time of the usage will be less than 18hrs**


*Second Example (No setup?)*
Battery cap = 1440mAh = 1.44Ah

**charging current should be 10% of the Ah rating of battery**
$$1.44*0.1 = 0.144A=0.15A$$
Due to some losses we may take 0.14 - 0.16

$$t=\frac{Q}{I}=\frac{1.44Ah}{0.15A} = 9.6h$$

It has been noted that **40% losses** occur in case of battery charging.
$$1.44Ah *1.4=2.016Ah$$
$$\frac{2.016}{0.15} = 13.44hrs$$

# DC Power Supply
- All mechatronics systems need a power source
- For electronic circuits made up of transistors and/or ICs this power source must be a DC voltage of a specified value.
- A battery is a common DC source, for some small mechatronics and portable devices
- Most non-portable equipment uses power supplies that operate from the AC power line but produce one or more DC outputs.
## AC to DC Power Supply for Various Applications
![Pasted image 20230815212514](Attachments/Pasted%20image%2020230815212514.png)
- The input is the 230V 50Hz AC supply
- the PS converts the AC to DC using a full rectifier and provides one or more DC output voltages.
- Some modern electronic circuit need two or more different voltages:
	- 48V, 24V, 15V, 12V, 9V, 5V, 3.3V, 2.5V, 1.8V, 1.5V
- PC PSUs can have 12, 5, 3.3, and sometimes 1.2V

**What a more realistic PSU looks like:**
![Pasted image 20230815212902](Attachments/Pasted%20image%2020230815212902.png)
### Line Filter
- AC line is passed through a low pass filter
![Pasted image 20230815212950](Attachments/Pasted%20image%2020230815212950.png)
- Eliminates noise on the AC line from bothering the power supply circuits and prevents unwanted signals from the power supply from being transferred back into the AC line where they might interfere with other shit.

### Transformer
*God I am an artistic genius*
![Pasted image 20230815213328](Attachments/Pasted%20image%2020230815213328.png)
[Transformers (Not the funny robot)](../../../Distilled%20Notes/Transformers%20(Not%20the%20funny%20robot).md) [Week 1 - Introduction, Mechatronic Fundamental and Transformers](Week%201%20-%20Introduction,%20Mechatronic%20Fundamental%20and%20Transformers.md)
- *Transformer* is commonly used to step the **input AC voltage level down or up**. Most electronic circuits operate from voltages lower than the AC line voltage to the transformer normally steps the voltage down by its turns ratio to a desired level.
- A transformer with turn ratio 20 to 1 would convert 230V 50Hz to 11.5V 50Hz
### Rectifier
![Pasted image 20230815213544](Attachments/Pasted%20image%2020230815213544.png)
- *Converts AC sine wave into a pulsating DC wave*
- Needs our boy the [Diodes](../../../Distilled%20Notes/Diodes.md).
- Rectifier types and operation depend on design and config.

### Filter
- Rectifier outputs DC but it is pulsating rather than a constant steady value like a battery.
- A filter *removes the pulsations and create near constant output*
- Most common filter **is just a fuck off large capacitor**
![Pasted image 20230815213732](Attachments/Pasted%20image%2020230815213732.png)
*We need a filter to help reduce ripple.*

#### Ripple
![Pasted image 20230815214107](Attachments/Pasted%20image%2020230815214107.png)
$V = V_{p(in)}e^{-t/RC}$ Capacitor Discharge (Output)
*For small ripple:*
$$V \approx V_{p(in)}[1- \frac{t}{RC}]$$
So peak to peak ripple is:
$$V_{r(pp)}=\frac{V_{p(in)}T}{RC}$$
The RMS ripple voltage:
$$V_{r(rms)}= \frac{V_{p(in)}}{240 \sqrt{3}RC}$$

$$V_{DC} = V_{p(in)} - \frac{V_r(pp)}{2}$$
$$V_{DC}= V_{p(in)} - \frac{V_{p(in)}T}{2RC}$$
$$V_{DC}= V_{p(in)}[1- \frac{1}{240 RC}]$$

- Capacitor smooths the pulses from the rectifier into *more constant* DC.
- A small variation does occur in the DC output as the *capacitor discharges* a small amount between pulses ($V_{ripple}$).
- The ripple can be *reduced by making capacitor larger*
- The ripple appears to be a sawtoothed shaped AC variation riding a DC output
- A small ripple can be tolerated in some circuits, **but the lower overall the better**
#Why can we not just make the capacitor huge and call it a day.

### Regulator
![Pasted image 20230815215125](Attachments/Pasted%20image%2020230815215125.png)
- *Helps maintain a fixed output voltage*
- Changes in the load or AC line voltage will cause output voltage to vary
- Most electronic circuits cannot withstand the variations - need fixed voltage
- Regulator *fixes the voltage to the desired level then maintains that value despite any output or input variations.*

Most regulators are ICs (integrated circuits). These are feedback control circuits that actually monitor the output voltage and detect variations.
*If out output varies for whatever reason the regulator circuit automatically adjusts the output back to the set value.*
- **Regulators hold the output at specific values**
- Since the ripple represents changes in the output, the regulator also adjusts for these.

***This results in a near constant DC output of a set voltage***

#### Linear Power Supply
![Pasted image 20230815221615](Attachments/Pasted%20image%2020230815221615.png)
#What #Why 
#todo Seek clarification or find out myself
- Series transistor as an adjustable resistor
- Low efficiency
- Heavy and bulky

### DC-DC Converter
- Most modern PSU also contain one or more DC to DC converters.
- Modern electronics often demand different voltages
- *DC-DC converted changes one DC voltage to another, high or lower DC voltage*
- Often used with a PSU to prevent the need for multiple AC to DC supplies.

**Issues of Rectified Power**
AC rectifiers suffer from these drawbacks:
1. Take up a significant amount of space (PC power supply)
2. Add losses to our system and need to be precisely engineered to be efficient as possible
3. Can be expensive for efficient rectifiers, and even still expensive to run cheap and inefficient ones.

#### Switched Mode Power Supply
![Pasted image 20230815222056](Attachments/Pasted%20image%2020230815222056.png)
- Transistor as a switch
- High efficiency
- High-Frequency Transformer

#### Block Diagram of DC-DC Converters
![Pasted image 20230815222559](Attachments/Pasted%20image%2020230815222559.png)
This diagram is useless?? - DC-DC converter as part of an AC power supply to provide regulated power to a load (UPS arrangement?)

#### Stepping Down a DC Voltage
![Pasted image 20230815222755](Attachments/Pasted%20image%2020230815222755.png)
Switching the DC voltage in a PWM style reduces the average voltage supplied.

#### Pulse-Width Modulation in DC-DC Converters
![Pasted image 20230815222913](Attachments/Pasted%20image%2020230815222913.png)
Same concept, as with the theoretical switched DC. Using an amp and sawtooth signal to generate PWM.

#### Step-Down DC to DC Converter (BUCK)
![Pasted image 20230815223305](Attachments/Pasted%20image%2020230815223305.png)
Scales voltage based on the frequency? Already has a square wave at input. #todo look up how this works

**BUCK Converter: Waveforms**
![Pasted image 20230815223613](Attachments/Pasted%20image%2020230815223613.png)
Switched $V_{d}$ with input impedance assuming $i_{L}$ flows continuously. The frequency can be used to control the output $V_{o}$ .

#### Step-Up DC to DC Converter (Boost)
![Pasted image 20230815224232](Attachments/Pasted%20image%2020230815224232.png)
*The output voltage must be greater than the input voltage*

**Waveforms:**
![Pasted image 20230815224320](Attachments/Pasted%20image%2020230815224320.png)
Continuous current conduction mode.

#### Step-up/down (Buck-Boost) DC to DC converter.
![Pasted image 20230815224509](Attachments/Pasted%20image%2020230815224509.png)
Output voltage can be greater or lower than input

**Waveforms:**
![Pasted image 20230815224540](Attachments/Pasted%20image%2020230815224540.png)
Continuous conduction mode

#### Power Circuit Config of DC-DC Converters
![Pasted image 20230815224656](Attachments/Pasted%20image%2020230815224656.png)

| Characteristics | Buck           | Boost     | Buck-Boost        | Cuk        |
| --------------- | -------------- | --------- | ----------------- | ---------- |
| Voltage gain    | Step down      | Step up   | Either up or down | -           |
| Funny name      | Could be funny | Not funny | Has potential     | Very funny |
|      How is it controlled?           |                |           |                   |            |
![Pasted image 20230815224939](Attachments/Pasted%20image%2020230815224939.png)

**Implementing Electrical Isolation in the Feedback Loop (two methods)**
![Pasted image 20230815225021](Attachments/Pasted%20image%2020230815225021.png)