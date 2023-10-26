 #MECH/2003 #UniNotes

**Slides:**
[Week 06 MECH203 Lecture Slides V23-1](Attachments/Week%2006%20MECH203%20Lecture%20Slides%20V23-1.pdf)

- Non machining removal techniques
- Types of different machining options
- Theory associated with producing chips in machining operations
- Determining the forces associated with machining
- Determining the power required for machining operations
- How temperature affects machining

# Non-Machining Material Removal
Material removal processors can be categorised into a number of families depending on the technique used.
There are three main families of material removal processes.

```ad-info
title: Conventional Machining
Pretty Standard Stuff

*Turning, drilling, milling*
![Pasted image 20230424114911](Attachments/Pasted%20image%2020230424114911.png)
```
```ad-danger
title: Abrasive Processes
When hard, abrasive particles are utilised to remove material. They are usually used as part of a finishing operation to improve the surface finish. 

*Grinding, sanding, filing, polishing, sandblasting, etc.*
![Pasted image 20230424115057](Attachments/Pasted%20image%2020230424115057.png)
```
```ad-bug
title: Non-traditional Processes
Any items that do not fall into either Conventional or Abrasive processes. They remove material by using either; alternative mechanical, electrochemical, thermal, or chemical processors. Think etching, forging, etc. Developed around the second world war, to shape materials that either.
1. Have special mechanical properties and are not suitable for traditional machining
2. The desired geometries are too complex for traditional machining
3. There is a requirement to avoid damage to the surface or the stress associated with traditional machining

*Laser/plasma cutting, etching, water jet cutting, electric discharge wiring, electron beam machining*
![Pasted image 20230424115751](Attachments/Pasted%20image%2020230424115751.png)
*Chemical processes include cleaning, masking, etching, demasking*
```

# Machining Operations

Reasons we still use machining:
1. *Variety of Work Materials:* Virtually all solid metals (except the funny ones) can be machined, as well as plastics and wood. Ceramics are typically too brittle and hard to be machined, although it isn't impossible, it is much better to shape ceramics using abrasive machining processes.
2. *Variety of part shapes and features:* Machining can be used to make regular geometries such as flat planes, round holes, and cylinders. Combine these using variations in shape, tool paths, and tool shapes, irregular geometries can be created.
3. *Dimensional Accuracy:* Some machining processes can produce dimensions with very tight tolerances. Within $\pm0.025mm$. Depending on the precision of the equipment you're using and whether you're eyeballing it.
4. *Good surface finishes:* Machining is capable of creating very smooth surfaces. Roughness values less than 0.4 microns can be achieved in conventional machining operations. Abrasive processes are required to improve this.

Why it still kinda sucks:
1. *Wasteful:* Inherently wasteful. Chips generated are waste material, although these can be recycled, they represent waste in terms of the unit operation. Also, unlikely that you'll find and recycle 100% of any waste.
2. *Time Consuming:* Generally takes longer than alternative processes such as casting or forging. Also, depending on your equipment, you'll have to operate it yourself (NON CNC).

# Chip Production Theory
![Pasted image 20230424121728](Attachments/Pasted%20image%2020230424121728.png)
![Pasted image 20230424121740](Attachments/Pasted%20image%2020230424121740.png)
Machining is a complex three-dimensional model that can be simplified to a two-dimensional representation. This technique is called the **orthogonal cutting model**, and is represented above. The cutting edge is **ALWAYS** **perpendicular** to the direction of the **cutting speed**.

## Features of a Cutting Tool
As the tool is forced into the material, the **chip** is formed by **shear deformation** along a plane called the **shear plane**, which is oriented at the angle φ with the surface of the work. **Only at the sharp cutting edge of the tool does the failure of the material occur**, resulting in the separation of the chip from the parent material. The bulk of the mechanical energy is spent along the shear plane, the material plastically (permanent deformation) deforms along this plane.

The tool in orthogonal cutting has two elements of geometry
1. **Rake Angle:** Determines the direction that the chip flows as it is formed from the work part. (Written as $\alpha$)
2. **Rake Face:** Deflects the chip, oriented at the **rake angle**
3. **Clearance angle:** Provides a small clearance between the tool **flank** and the newly generated work surface (Also called the **relief angle**)

## Chip Ratio
During cutting, the cutting edge is positioned a certain distance below the original work surface (**Depth**). This corresponds to the thickness of the chip prior to formation ($t_{o}$). 
As the chip forms along the shear plane, its thickness increases to $t_{c}$. The **Chip Thickness Ratio** is the relationship between these two (chip ratio).
$$r= \frac{t_{o}}{t_{c}}$$
**Chip thickness ALWAYS increases after cutting**, ($t_{c}>t_{o}$) the ratio will always be less than 1.0. The orthogonal cut has a width $w$, even though this dimension does not contribute much to orthogonal analysis. (Determined by the width of the bit)

## Tool and Chip Geometry
The geometry of the orthogonal cutting model allows us to establish an important relationship between the chip thickness ratio, the rake angle, and the shear plane angle. 
(**Where $l_{s}$ = length of the shear plane**)
$$r= \frac{l_{s}\sin \phi}{l_{s}\cos (\phi - \alpha)}=\frac{\sin \phi}{\cos (\phi - \alpha)}$$
This can be rearranged for $\phi$:
$$\tan \phi = \frac{r \cos \alpha}{1-r \sin \alpha}$$

The shear strain that occurs along the shear plane can be estimated. The left figure demonstrates shear deformation approximate by a series of parallel plates sliding against one another to form a chip. Realistically the shear is felt continuously, although who cares.
![Pasted image 20230424124138](Attachments/Pasted%20image%2020230424124138.png)

Referring to the small portion at the base of each plate (Left diagram) and analysing the shear strain triangle below, it's possible to determine an expression for shear strain:
![Pasted image 20230424124346](Attachments/Pasted%20image%2020230424124346.png)
$$\gamma = \tan (\phi - \alpha) + \cot \phi$$


## Example Question
*In a machining operation that approximates orthogonal cutting, the cutting tool has a rake angle = 10. The chip thickness before the cut 𝑡𝑜 = 0.50 mm and the chip thickness after the cut 𝑡𝑐= 1.125 mm. Calculate the shear plane angle and the shear strain in the operation.*

**Answer:**
Shear Plane Angle
$$\tan \phi = \frac{r \cos \alpha}{1-r\sin\alpha} \text{ and } r=\frac{t_{o}}{t_{c}}$$
$$\tan \phi = \frac{\frac{0.5}{1.125} \cos 10}{1-\frac{0.5}{1.125}\sin10}=25.4\degree$$
$$\phi = 25.4\degree$$

## Speeds and Feeds
A machining operation is any operation that requires the relative motion between the material and a sharp cutting tool. The relative motion is referred to as the cutting speed (rotation), the secondary motion is called the feed (tool movement speed)
![Pasted image 20230424125109](Attachments/Pasted%20image%2020230424125109.png)
In milling, the rotating tool is fed slowly across the workpiece, the direction of the feed motion is perpendicular to the tool's axis of rotation (speed)

## Cutting Edges
Cutting tools can have a single cutting edge (left) which are most commonly used in turning operations. Or multiple cutting edges (right), which are used when the relative motion is achieved through spinning the tool like in drilling/milling.
![Pasted image 20230424132530](Attachments/Pasted%20image%2020230424132530.png)
Regardless of the number of cutting edges, relative motion is required. The primary motion is accomplished at a certain cutting speed $v$. The depth of each cut is denoted by $d$.

## Material Removal Rate
The material removal rate $R_{MR}$ for a single cutting edge tool can be calculated as follows:
$$R_{MD}=vfd$$
**NOTE:** SI units are not used for this equation, the units are as follows:
$R_{MR}$ = Material Removal Rate ($mm^{3}/s$)
$v$ = Cutting Speed ($mm/s$)
$f$ = Feed ($mm$)
$d$ = Depth ($mm$)

## Types of Cuts
1. **Roughing Cuts:** Used to remove large amounts of material, used to get close to the final dimensions quickly. Usually larger depth, speed, or feed. Typically done on a different tool/bit designed specifically for roughing.
2. **Finishing Cuts:** Used to precisely achieve the desired dimensions and are done during the final stage (Never before roughing). Usually slower, and done with a more precise tool. As getting as precise measurements is much harder with a larger bit.

## Types of Chips
![Pasted image 20230424133720](Attachments/Pasted%20image%2020230424133720.png)
*Ignore the fucking red circle.*
The piece of material removed from the machined component is the chip. There are four different types.
1. **Discontinuous Chip:** When relatively brittle materials are machined at low cutting speeds, chips often form into separate segments. This tends to impart an irregular surface to the new surface. Typically seen on brittle materials such as cast irons.
*High tool-chip friction and large feed and depth of cut. Sometimes unavoidable, not that bad.*
2. **Continuous Chip:** Ductile work materials cut at high speeds and relatively small feeds and depths. Long continuous chips are formed, typically form into long ribbons. Leaves a good surface finish. These can cause chip disposal issues as they can get tangled about the tool, turning tools are often equipped with chip breakers to combat this.
*Sharp cutting edge, low tool-chip friction, relatively tough material, appropriate feed and speed. Pretty ideal.*
3. **Continuous Chip with Built-Up edge:** Friction between tool and chip tends to cause portions of the work material to adhere to the rake face of the tool near the cutting edge. This formation is called build-up edge (BUE). Much of the detached BUE is carried away with the chip, sometimes taking portions of the tool rake face with it, reducing the tool's life.
*Ductile materials at low-to-medium speeds. This isn't ideal. If this is the case adjust settings.*
4. **Serrated Chips**: These chips are semi-continuous, as they don't come off the work piece smoothly. Cyclical chip formation creates alternating low and high shear strain zones, causing the saw-tooth like appearance in the diagram.
*Associated with difficult to machine alloys such as titanium and nickel-based superalloys. Even austenitic stainless steels when machined at high cutting speeds.*

# Forces in Metal Cutting
Forces applied against the chip by the tool can be separated into two component forces. Friction force and the Normal force. **Friction force (F)** is the frictional force resisting the flow of the chip along the rake face. The **Normal force (N)** is the force perpendicular to the friction force, and is equal to the normal reaction between the chip and the tool. We can use these to find the coefficient of friction between tool and chop.
$$\mu = \frac{F}{N}$$
![Pasted image 20230424135452](Attachments/Pasted%20image%2020230424135452.png)
The **Resultant Force (R)** is the vector combination of these two forces. This is oriented at angle $\beta$, called the **friction angle**. You can use the same rules around friction to find $\beta$.
$$\mu = \tan \beta$$

There are corresponding forces applied by the work piece back on the tool. **Shear force** 
($F_{s}$) and **normal force to shear** ($F_{n}$). $F_{s}$ is the force that causes shear deformation to occur in the shear plane, $F_{n}$ is perpendicular to the shear force. 

Based on the shear force, we can define the shear stress that acts along the shear plane between the work and chip.
$$\tau  = \frac{F_{s}}{A_{s}}$$
Where:
$\tau$ = Sheer Stress ($N/m$)
$F_{s}$ = Shear Force ($N$)
$A_{s}$ = Area ($m^2$)

$\tau$ represents in this equation represents the level of stress required to perform the machining operation. Therefore, this stress value should be equal to the shear strength of the work material ($\tau = S$) under the conditions at which cutting occurs.

**We can pretty easily calculate $A_{s}$** : $A_{s}=\frac{t_{o}w}{\sin \phi}$

None of the four force components, $F, N, F_{s} \text{ or } F_{n}$ can be directly measured in a machining operation, because the directions in which they are applied vary with different tool geometries and cutting conditions. However, it is possible for the cutting tool to be instrumented using a force measuring device called a **dynamometer**, so that two additional force components acting against the tool can be directly measured: cutting force and thrust force.

## Thrust Force and Cutting Force
![Pasted image 20230424141145](Attachments/Pasted%20image%2020230424141145.png)
The cutting force $F_{c}$ is in the direction of cutting, the same direction as cutting speed $v$. Thrust force $F_{t}$ is perpendicular to the cutting force. Cutting forces are pictured above along with the resultant force $R$. The respective directions of these forces are known, so the force transducers in the dynamometer can be aligned accordingly (depending on tool shape and cut angle).

We can derive equations for the four unknown forces in terms of the two forces that can be measured.
$$F = F_{c}\sin \alpha + F_{t} \cos \alpha$$
$$N = F_{c}\cos \alpha - F_{t}\sin\alpha$$
$$F_{s}= F_{c}\cos\phi-F_{t}\sin\phi$$
$$F_{n}= F_{c}\sin\phi + F_{t}\cos\phi$$

Given we are estimating a real world system, these equations will only give an estimate. For the most part, that's all we need.

## The Importance of Phi
**Eugene Merchant** determined that the angle $\phi$ is the angle where the shear stress is equal to the shear strength of the material. He demonstrated that the chip formation will occur in a way that minimises the energy used to create it.

At any other angle, the shear stress of the material will exceed the shear stress being applied. **Merchant** derived a mathematical expressing relating shear stress to the shear stress angle using this information:
$$\tau = \frac{F_{c}\cos\phi-F_{t}\sin\phi}{t_{o}w/\sin\phi}$$
He also found the relationship between shear stress angle, the tool rake, and friction angle:
$$\phi = 45 + \frac{\alpha}{2}+\frac{\beta}{2}$$
Again, these are approximations as they do not accommodate for temperature and other influences on material properties.

# Power Required for Machining Operations
The product of cutting force and speed gives the power ($W$) required to perform a machining operation:
$$P_{c}= F_{c}v$$
Where:
$P_{c}$ = Cutting Power ($W$)
$F_{c}$ = Cutting Force ($N$)
$v$ = Cutting Speed ($m/s$)
This is the power required **at the tool** to complete the machining operation, and does not take into account the losses associated with delivering that power. Most of these losses are a result of gearboxes and friction. **Most machine tools are approximately 90% efficient.**

It's often useful to calculate power into power per unit volume rate of metal cut. This allows comparison of the power required for different materials regardless of removal rate.
$$P_{u}=\frac{P_c}{R_{MR}}$$
Where:
$P_{u}$ = Power per unit volume rate ($W/mm^{3}/s$)
$P_{c}$ = Cutting power ($W$)
$R_{MR}$ = Cutting Force ($N$)

Below is a reference table for different metals values for $P_{u}$ assuming tool is sharp and chip thickness is 0.25 mm:
![Pasted image 20230424143554](Attachments/Pasted%20image%2020230424143554.png)
```ad-important
If the tool is worn, the values here should be multiplied by a factor between 1 and 1.25, with a larger value being used when the tool wear is greater. (If your tool is worn above 1.25 its probably useless anyway)
```

A correction factor can also be applied to values in the previous table for the power per unit volume of each material, this is used to alter the chip thickness after selecting the appropriate value from the graph below.
![Pasted image 20230424144019](Attachments/Pasted%20image%2020230424144019.png)
Less power is used to remove more material per cut. This is because this energy instead heats up the bit and workpiece.

# Cutting Temps
Of the total energy consumed in machining, approximately ~98% is converted into heat (power at the bit). This heat can cause temperatures to be very high at the tool-chip interface. Temps over $600\degree$ is not uncommon. The remaining energy is retained as elastic energy in the chip.

High Temperatures:
1. Reduce tool life
2. Produce hot chips which are a safety hazard to the machine operator
3. Can cause inaccuracies in work part dimensions due to thermal expansion of work material

One method for determining temp increase associated with machining was derived by Cook using experimental data:
$$\Delta T = \frac{0.4U}{\rho C}(\frac{vt_o}{K})^{0.333}$$
Where:
$\Delta T$ = Mean temperature rise at the tool-chip interface ($C\degree$)
$U$ = Specific energy in the operation ($N*m/mm^3$)
$v$ = Cutting speed ($m/s$)
$t_o$ = Chip thickness before cut ($m$)
$\rho C$ = Volumetric specific heat of the work material ($J/mm^{3}*C$)
$K$ = Thermal diffusivity of the work material ($m^{2}/s$)
