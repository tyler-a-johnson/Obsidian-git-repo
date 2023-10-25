
[[Transformers (Not the funny robot)]] is an AC static device used to change low voltage/high voltage AC system into high voltage/low voltage AC system without changing the frequency at almost 100% efficiency.

1. Transfers electric power from one circuit to another without any electrical connection.
2. Does so without changing frequency.
3. It does this by generating flux inside of a core typically or some other medium.
4. Where the two electrics circuits are in mutual inductive influence from one another.

## Principle of Operation
It is based on principle of MUTUTAL INDUCTION. An EMF is induced in a coil when flux in the neighbouring coil changes.
![[Attachments/Pasted image 20230725221237.png]]
**Mathematical Induction:**
*[[Faraday's Law]]:*
$$\epsilon = \frac{d \phi}{dt}$$

*[[Lenz's Law]]* (for N turns)
$$\epsilon = - N\frac{d \phi}{dt}$$
$$\epsilon = -N \frac{\phi_{2}-\phi_{1}}{t}$$
Flux changes from phi 1 and phi 2. In time t.

*Working principle:*
1. When current in the primary coil changes being alternating in nature, a changing magnetic field is produced.
2. This changing magnetic field gets associated with the secondary through the soft iron core.
3. Hence magnetic flux linked with the secondary coil changes.
4. Which induces EMF in the secondary coil.

## EMF Equation of a Transformer
![[Attachments/Pasted image 20230726184500.png]]
let:
$N_1$  = Number of Primary turns
$N_2$ = Number of Secondary turns
$\Phi_m$  = Maximum flux in core (**Webers**)
$f$ = Frequency of AC input (Hz)

The above graph shows us that flux increases from its minimum to its maximum ($\Phi_m$) in a quarter of a cycle ($\frac{1}{4f}$ Seconds ).
$$\text{This means our Average rate of change (flux) }= \frac{\Phi_{m}}{\frac{1}{4f}}$$
$$= 4f\Phi_{m}\text{ Wb/s or Volts}$$
$$\text{Average e.m.f/turn} = 4f\Phi_{m} \text{Volt}$$

Since flux varies sinusoidally, then r.m.s value of *induced emf* can be calculated by multiplying the average value with form factor.
$$\text{Form Factor} = \frac{\text{r.m.s value}}{\text{average value}}=1.11$$
Now rms value of the induced emf in the entire primary winding is this:
$$E_{1}= 4.44 f N_{1}\Phi_{m}=4.44fN_{1}B_{m}A$$

## Core Types
![[Attachments/Pasted image 20230726190438.png]]
Windings are wrapped around the two sides of a laminated square core.
![[Attachments/Pasted image 20230726190542.png]]
```ad-note
High voltage conductors have a lower cross section than low voltage conductors as the low voltage conductors have a higher current. This means the cross section of the low voltage conductors needs to be larger to allow for greater current flow and to prevent overheating/melting.

```
![[Attachments/Pasted image 20230726191021.png]]
Cores are laminated to reduce Eddy Currents which contribute highly to losses.\
*Laminated slices can range from 3mm to less.*

### Shell Type Transformer/Sandwich Windings
![[Attachments/Pasted image 20230726193431.png]]
Windings are both wrapped around the centre limb of the core.
![[Attachments/Pasted image 20230726194830.png]]
- The HV and LV windings are split into a number of sections - HV lines between two LV windings
- In sandwich coils leakage can be controlled.

## Ideal Transformers
- **Zero Leakage flux:**
	- Flux produced by the primary AND secondary currents are confined within the core
- **The windings have no resistance:**
	- Induced voltages equal applied voltages
- **The core has infinite permeability:**
	- Reluctance of the core is zero
	- Negligible current is required to establish magnetic flux
- **Loss-Less magnetic core**
	- No Hysteresis or eddy currents.
![[Attachments/Pasted image 20230726200400.png]]
Where:
$V_1$= Supply Voltage
$V_2$ = Output Voltage
$I_{m}$ = Magnetising Current
$E_{1}$ = Self induced emf
$I_{1}$ = No Load Input Current
$I_{2}$ = Output current
$E_{2}$ = Mutually induced emf

![[Attachments/Pasted image 20230726202431.png]]
$$\frac{V_p}{V_{s}}= \frac{N_{p}}{N_{s}}=\frac{I_{s}}{I_{p}}$$
$$\text{Power}_\text{prim} = \text{Power}_\text{sec}$$
$$\frac{E_1}{N_{1}}= \frac{E_{2}}{N_{2}} = 4.44f\Phi_{m}$$


## Phasor Diagrams

### No Load
![[Attachments/Pasted image 20230727153526.png]]
(a) is a transformer with no load.
(b) Is a phasor diagram of a loadless transformer. Plotted on a $\phi$ axis.
Primary current $I_{0}$ is represented as a vector.
#todo 
### Transformer on Load - Assuming no voltage drop in the winding
![[Attachments/Pasted image 20230727154124.png]]
![[Attachments/Pasted image 20230727154137.png]]

The phasor diagram for of a transformer assumes:
1. No voltage drop in the winding
2. Equal primary and secondary turns

## Equivalent Circuit of a Transformer
![[Attachments/Pasted image 20230727154515.png]]
$$R_{0}= \frac{V_{1}}{I_{c}}$$
$$X_{0}= \frac{V_{1}}{I_{m}}$$
$$I_{m}= I_{0}\sin\phi_{0} = \text{Magnetizing Component}$$
$$I_{c}= I_{0}\cos\phi_{0}= \text{Active Component}$$

![[Attachments/Pasted image 20230727155256.png]]
We can group inductors and resistors on primary and secondary sides. We can represent these with complex numbers.
![[Attachments/Pasted image 20230727155405.png]]

- The effect of circuit parameters shouldn't be changed while transferring the parameters from one side to another side.
```ad-attention
It can be proved that a resistance of $R_{2}$ in sec. is equivalent to $\frac{R_{2}}{k^{2}}$ will be denoted as $R_{2}'$ (ie. Equivalent sec. resistance w.r.t primary) which would have caused the same loss as $R_{2}'$ in the secondary.

```


$$I_{1}^{2}R'_{2}= I_{2}^{2}R_{2}$$
$$R'_{2}=(\frac{I_{2}}{I_{1}})^{2}R_{2}$$

```ad-note
$$R'_{2}=a^{2}R_{2}$$
```

$$a = \frac{N_{1}}{N_{2}}= \text{Turns Ratio}$$

## Approximate Equivalent Circuit
Since the no load current is approx. 1% of the full load current, it can be neglected
![[Attachments/Pasted image 20230727192000.png]]

## Transformer Tests
The performance of a transformer can be calculated with an equivalent circuit.
The four main parameters are:
1. $R_{01}$ is the Primary Resistance
2. $X_{01}$ is the Primary equivalent leakage reactance
3. $B_{0}$ Magnetising susceptance (Or Reactance $X_{0}$)
4. $G_{0}$ is Core Loss Conductance (Or Resistance $R_{0}$)

The above constants can be easily determined by two tests.
- Open Circuit test (OC test / No load test)
- Short Circuit test (SC test / Impedance test)
These are both economical and convenient.

### Open Circuit Test
We **open circuit the secondary winding**, and connect the primary winding to **full rated voltage**
![[Attachments/Pasted image 20230727195125.png]]
Usually conducted on the HV side. We use it to find:
1. No load loss / Core loss
2. No load current $I_{0}$ which is helpful in finding $G_{0}$ (or $R_{0}$) and $B_{0}$ (or $X_{0}$)
$$Coreloss = W_{oc}= V_{0}I_{0}\cos\phi_{0}$$
$$\cos\phi_{0} = \frac{W_{oc}}{V_{0}I_{0}}$$

$$I_{c} \text{ or } I_{w}= I_{0}\cos \phi_{0}$$
$$I_{m}\text{ or }I_{\mu}= I_{0}\sin \phi_{0} = \sqrt{I^{2}_{0}-I^{2}_{w}}$$
$$I_{0}= V_{0}Y_{0} \therefore Y_{0}=\frac{I_{0}}{V_{0}}$$


$$R_{0}= \frac{V_{0}}{I_{w}}$$
$$X_{0}= \frac{V_{0}}{I\mu}$$
$$G_{0}= \frac{I_{w}}{V_{0}}$$
$$B_{0}= \frac{I\mu}{V_{0}}$$

$$W_{oc}= V^{2}_{0}G_{0}$$
$$\therefore \text{Exciting Conductance }G_{0}= \frac{W_{oc}}{V^{2}_{0}}$$
$$\text{Exciting susceptance } B_{0}= \sqrt{Y^{2}_{0}-G^{2}_{0}}$$

### Short-Circuit Test
**Secondary terminals are short circuited** and the *primary terminals are connected to a fairly low-voltage source.*
The input voltage is adjusted until the current in the short circuited windings **is equal to its rated value.** The *input voltage current and power is measured.*
![[Attachments/Pasted image 20230727203009.png]]
Usually conducted on LV side, we're looking for it.
- Full load copper loss - to pre determine the efficiency
- $Z_{01}\text{ or }Z_{02};X_{01}\text{ or }X_{02};R_{01}\text{ or }R_{02}$ to determine the voltage regulation
![[Attachments/Pasted image 20230727203411.png]]
full load cu loss = $W_{sc} = I^{2}_{sc}R_{01}$
$Z_{01}= \frac{V_{sc}}{I_{sc}}$
$\therefore X_{01}=\sqrt{Z_{01}^{2} - R^{2}_{01}}$

## Transformer Voltage Regulation and Efficiency
- The output voltage of any given transformer varies with the load, even if the input voltage is constant. 
- This is because real transformers have a series impedance in the circuit (above see $X_{01}$). 
- Full load Voltage Regulation is a quantity that compares the output voltage at no load with the output voltage at full load. Defined as:
$$\text{Regulation Up} = \frac{V_{S,nl}-V_{S,fl}}{V_{S,fl}}*\text{100}$$
$$\text{Regulation Up} = \frac{V_{S,nl}-V_{S,fl}}{V_{S,nl}}*\text{100}$$
```ad-important
$$\text{At no load: }k=\frac{V_{s}}{V_{p}}$$
```
$$\text{Regulation up (no load) }= \frac{(V_{p}/k)-V_{S,fl}}{V_{S,fl}}*100$$
$$\text{Regulation up (no load) }= \frac{(V_{p}/k)-V_{S,fl}}{V_{S,nl}}*100$$

**Ideal transformer our VR = 0%**


### Voltage Regulation of a Transformer
$$\text{Voltage regulation} = \frac{\text{no load voltage - full load voltage}}{\text{no load voltage}}$$
$$\text{Since } \frac{V_{s}}{V_{p}}= \frac{N_{s}}{N_{p}}$$
$$\text{Secondary voltage on no load } V_{2}= V_{1}(\frac{N_{2}}{N_{1}})$$
$V_{2}$ is a secondary terminal voltage on full load

$$\text{Voltage regulation} = \frac{V_{1}(\frac{N_{2}}{N_{1}})-V_{2}}{V_{1}(\frac{N_{2}}{N_{1}})}$$

**Voltage:**
In terms of *secondary* values:
$$\text{Regulation:} = \frac{V_{2,0} - V_{2}}{V_{2,0}}=\frac{I_{2}R_{02}\cos \phi_{2}\pm I_{2}X_{02}\sin \phi_{2}}{V_{2,0}}$$

In terms of *primary* values:
$$\text{Regulation:} = \frac{V_{1} - V'_{2}}{V_{1}}=\frac{I_{1}R_{01}\cos \phi_{1}\pm I_{1}X_{01}\sin \phi_{1}}{V_{1}}$$
Where + for lagging and - for leading


## Transformer Phasor Diagram
Ignoring the excitation of the branch (since current flowing through the branch to be small) more consideration is given to the series impedances ($R_{eq}+jX_{eq})$
**Voltage regulation depends on magnitude of series of impedances and the phase angle of the current flowing through the transformer.**

Phasor diagrams will determine the effects of these factors on the voltage regulation. A phasor diagram consist of current and voltage vectors.
Assume that the reference phasor is the secondary voltage, $V_{s}$ . Therefore the reference phasor will have an angle of 0.

*Based on the equivalent circuit, apply [[Kirchhoff's Laws]]*
$$\frac{V_{p}}{k}=V_{s}+R_{eq}I_{s}+jX_{eq}I_{s}$$

![[Attachments/Pasted image 20230727220552.png]]
For lagging loads, the vertical components of $R_{eq}$ and $X_{eq}$ will partially cancel each other out. Due to that, the angle of $\frac{V_{p}}{a}$ will be very small, hence we can assume that $\frac{V_{p}}{k}$ is horizontal.

## Transformer Efficiency
Efficiency is defined as:
$$\eta=\frac{P_{out}}{P_{in}}*100$$
$$\eta = \frac{P_{out}}{P_{out}+P_{loss}}*100$$

Types of losses:
- Copper $I^{2}R$ losses
- Hysteresis losses
- Eddy current losses
Therefore efficiency can can be calculated:
$$\eta = \frac{V_{s}I_{s}\cos \theta}{P_{Cu}+P_{Core}+V_{s}I_{s}\cos \theta} * 100$$

### Losses in a Transformer
Core and iron losses:
$$\text{Hysteresis Loss } W_{h}= \eta B^{1.6}_{max}fV \text{ Watts}$$
$$\text{Eddy Current Loss } W_{e}=\eta B^{2}_{max}f^{2}t^{2}\text{ Watts}$$

Copper loss:
$$\text{Total Cu Loss} = I_{1}^{2}R_{1}+I_{2}^{2}R_{2}= I_{1}^{2}R_{01}+I_{2}^{2}R_{02}$$

**Conditions for maximum efficiency:**
![[Attachments/Pasted image 20230727222932.png]]
![[Attachments/Pasted image 20230727222958.png]]

**All day efficiency:**
![[Attachments/Pasted image 20230727223035.png]]
