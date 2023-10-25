---
date: 2023-09-20
tags:
  - "#ELEC/2005"
status: Complete
Relevant Docs:
  - "[[Attachments/ELEC2005 Week 7 Lecture Power Semiconductors_2023_UPDATED.pdf]]"
Relevant Questions: []
Relevant Notes: []
Practical Docs: 
Relevant Links:
---

# Conceptual
---

## Intro
- Designed to be able to handle large currents/voltages for power - designed for rapid switching between on and off
- vast range of devices exist, their operation and power/speed handling capabilities vary
- Ideal:
	- No switching delay, no voltage drop across the switch
	- No voltage or current limit

![[Attachments/Pasted image 20231002232218.png]]

## Power Diodes
Power diodes differ from signal diodes in their construction, instead of a simple PN junction, there are extra layers with different doping
![[Attachments/Pasted image 20231002232501.png]]

### Parameters
- Diodes have several key parameters, some of which are constant and some which vary with condition
- **Voltage Rating** - Max instantaneous voltage the device can block in the off state
- **Current Rating** - Max instantaneous average or RMS current that it can conduct in the ON state
- **Switching Speed** - Transition speed from on to off
- **On State Voltage** - Voltage dropped across the device when it is conducting

### Switching State
- Their on and off states controlled by the power circuit
- Diode turn-off is not instant, a sudden change in polarity will not immediately stop current
- There is an **additional charge** $Q_\pi$ that needs to be supplied to complete turn-off. The diode conducts a **negative current for duration** $t_\pi$ .
- Known as **Reverse Recovery**
- Power diodes are classified based on their reverse recovery characteristics. General/Fast-Recovery/Shottky
![[Attachments/Pasted image 20231002234146.png]]

### Diode Types

- **General Purpose Diode**
	- Relatively high $t_\pi$ (~25 microseconds)
	- Good for low frequency applications up to ~1kHz
	- Typical current ratings 1-1000A, voltage ratings 50V-5kV
- **Fast Recovery Diodes**
	- Relatively low $t_\pi$ (<5 microseconds)
	- Good for power conversion systems
	- Typical current ratings 1-1000A, voltage ratings 50V - 3kV
- **Schottky Diodes**
	- These have a metal/semiconductor junction rather than PN
	- Very fast switching (low $t_\pi$ in the nanoseconds)
	- Typical current ratings 1-300A voltage ratings ~100V





### Applications
- Freewheeling diodes/clamp diodes/snubber diodes
- AC/DC conversion/rectification - Changing between alternating and direct current
- Battery Charging




## BJTs for Power Applications
- BJTs can be used for amplifiers and switches
- For **power switching** applications the **cut-off and saturation regions** are used
- Similar to power diodes **high power rated BJTs have an additional n-region**
![[Attachments/Pasted image 20231002234623.png]]
- Generally superseded by other tech. Cheaper than MOSFETs
- Used in output stages of audio amps, touch sensitive switches, computer controlled relays, low power AC/DC supplies

### Circuit Configs
- Usually used in the common emitter configuration
- To handle higher switching currents a darlington pair/triple darlington config can be used.
![[Attachments/Pasted image 20231002234843.png]]
- This config can be generally treated just like a single transistor but with
$$\beta_{Darlington} = \beta_{1}*\beta_{2} +\beta_{1}+\beta_{2}$$

Voltage drop also increases
$$V_{BE} = V_{BE1}+V_{BE2}$$



## Power MOSFETs
- Power MOSFETs are the most common power semiconductor
- Power MOSFETs are designed to handle higher power levels
- High switching speed 
- Good low voltage efficiency
- Often low gain
- Commonly used for "low voltage" switching (<200V)
### Structure
![[Attachments/Pasted image 20231002235746.png]]

- Made using silicon and fabricated as a vertical diffused MOS structure
- Source is above the drain, current flow is primarily vertical
- Vertical structure means that the *voltage rating depends on the doping and thickness of the N+ Layers* whilst the **current depends on the channel width.**
- This design allows for **higher currents** and *power ratings* than the traditional lateral MOSFET.


- Typically up to 200V
- Current to ~100A
- Frequencies in excess of 100kHz
- Used for high power switching
- Applications include
	- Power supplies DC-DC converters, low voltage motor controllers, vehicle electronics

## IGBT (Insulated Gate Bipolar Transistor)
- Combine the ease of control of a MOSFET even at higher voltages (>200V)
- Circuit symbol is similar to BJT but with an extra line
![[Attachments/Pasted image 20231003000530.png]]

### Parameters
- Voltage ratings up to ~5kV and current ratings up to ~2000A
- Most commercial designs do not block reverse polarity voltages
- Typically used for converters over a wide power range (1kW up to >1MW)
- Used in motor drive circuits, UPS, induction cooktops
![[Attachments/Pasted image 20231003000726.png]]

## Thyristors
- Four layer semiconductor devices with alternating doping region e.g. PNPN
- Essentially a semi-controllable diode
- Three electrodes, anode cathode and gate.
- Various types of thyristors are available. Most common is the **Silicon Controlled Rectifier** (SCR)
- Work as a **bistable switch**, **conducting when there is a current trigger at the gate**, *they keep conducting until a reverse bias is applied.*
- *Only a short pulse is needed to turn diode on*
![[Attachments/Pasted image 20231003001222.png]]
- SCR is the most common type of Thyristor
- Like a modified diode, SCRs are unidirectional they only conduct current in one direction

**Modes of Operations**
- *Forward Blocking Mode* - Anode has +ve voltage and cathode has -ve, gate held at a zero potential, only a small leakage current flows from A to C.
- *Forward Conduction Mode* - As above but potential between anode and cathode is now increased beyond breakdown, **OR** a positive pulse is sent to the gate  that is now in the ON state.
- *Reverse Blocking Mode* - Anode has **-ve voltage and cathode has +ve behaves** like t**wo diodes in series**, only a small leakage current flows.
SCRs are typically used in medium-high voltage control (power regulator light dimmer)

### Gate Turn Off Thyristors (GTO)
- Provides additional control
- GTO the gate can be used to turn off the device (unlike with a regular SCR)
- Requires a negative signal at the gate to turn-off
- Has the drawback of long switch off times, use for low switching speed (up to 1kHz) - can use a [[Snubber Circuit]] to reduce turn off time.
- Applications include high speed motor drives and high power inverters
![[Attachments/Pasted image 20231003002231.png]]


### MOS Controlled Thyristors (MCT)
- Essentially consisting of a thyristor with two MOSFETs built into the gate
- These MOSFETs are used to turn the gate on and off
- A negative pulse (relative to anode) turns the device on
![[Attachments/Pasted image 20231003002546.png]]
![[Attachments/Pasted image 20231003002604.png]]
MCTs offer
- Low forward conduction loss
- Fast switching
- High input impedance at gate


## Summary
- Wide range of devices exist
- Consider Voltage Rating, Current Rating, Frequency, Efficiency, Cost
![[Attachments/Pasted image 20231003002831.png]]


## Relative Graph
![[Attachments/Pasted image 20231003002913.png]]


# Maths
---







