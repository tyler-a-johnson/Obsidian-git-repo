 #MECH/2003 #UniNotes

**Slides:**
[Week 10 MECH2003 Lecture Slides V23-1](Attachments/Week%2010%20MECH2003%20Lecture%20Slides%20V23-1.pdf)

# Bearing and Bushings
All the mechanisms shown thus far have one thing in common, they have shafts that are rotating at a variety of angular velocities with various torques. 

But somehow, rotating shafts need to be held in position without restricting their rotation. This is what bearings and bushings are required for.

Bushings attempt to minimise the friction through careful material selection. Ball bearings minimise the friction by incorporating elements that roll instead of slide. As a result ball bearings are much more efficient.
![Pasted image 20230605234603](Attachments/Pasted%20image%2020230605234603.png)

## Bushings
Bushings are used when cost must be minimised or the shaft rotation speed and loads perpendicular to the shaft are small. They are made of materials that are softer than the shaft so that they wear sacrificially.
![Pasted image 20230605234752](Attachments/Pasted%20image%2020230605234752.png)

## Bearings
For high speed applications where loads are being carried by a shaft are also high, bearings are more suitable. Many different types exist, but they all contain similar components.
![Pasted image 20230605234924](Attachments/Pasted%20image%2020230605234924.png)

many different bearings exist with the type required being dependent on the direction of the load being transferred.
![Pasted image 20230605235019](Attachments/Pasted%20image%2020230605235019.png)

Deep groove ball bearings are designed to accommodate loads that are normal to the axis of rotation. Therefore the steel balls/rollers are supported in this direction.
![Pasted image 20230605235150](Attachments/Pasted%20image%2020230605235150.png)

For high loads in the direction normal to the shaft, thrust bearings are most suitable. The raceways and rings are reoriented to provide support to the steel balls/rollers in this direction.
![Pasted image 20230605235310](Attachments/Pasted%20image%2020230605235310.png)

When a combination of loads both parallel and normal to the shaft are required to be accommodated, tapered or angled bearings are more appropriate with a variety of angles available.
![Pasted image 20230605235425](Attachments/Pasted%20image%2020230605235425.png)
```ad-note
There are many more types of bearings than just these. It is our role as engineers is to ensure that your choose the most suitable for your application, always check the loads and speeds provided by the manufacturer
```


# Torque and Power
We can calculate the torque and angular velocity we should expect as the output for a rotating system when we have a variation of connections like gears and belts between shafts.
$$\text{Power} = \text{Torque} * \text{Angular Velocity}$$
$$P=T\omega$$

## Gears
For gears, the angular velocity ratio is equal to the inverse of the number of teeth between each gear. **The direction of rotation is reversed between each gear.**
$$\frac{\text{Number of teeth on gear 1}}{\text{Number of teeth on gear 2}}=-\frac{\omega_2}{\omega_1}$$
![Pasted image 20230606000840](Attachments/Pasted%20image%2020230606000840.png)
## Chain Drives
For chain drives, the angular velocity ratio is also equal to the inverse of the number of teeth between each gear. **The direction of rotation remains the same.**
$$\frac{\text{Number of teeth on gear 1}}{\text{Number of teeth on gear 2}}=\frac{\omega_2}{\omega_1}$$
![Pasted image 20230606001012](Attachments/Pasted%20image%2020230606001012.png)

## Timing Belts
For toothed belt drives, the angular velocity ratio is determined in the same way. **The direction of rotation is not changed UNLESS the belt is crossed.**
$$\frac{\text{Number of teeth on gear 1}}{\text{Number of teeth on gear 2}}=\frac{\omega_2}{\omega_1}$$
![Pasted image 20230606001209](Attachments/Pasted%20image%2020230606001209.png)
## V Belts
These systems have no teeth, the angular velocity ratio is equal to the inverse of the two pulley diameters.
$$\frac{\text{Pitch Diameter of Pulley 1}}{\text{Pitch Diameter of Pulley 2}}=\frac{\omega_2}{\omega_1}$$
![Pasted image 20230606001419](Attachments/Pasted%20image%2020230606001419.png)
Once the angular velocity has been determined, it is possible to calculate the torque that each shaft experiences **assuming no transmission losses, the power that both shafts have is equal**
$$T_{1}\omega_{1}=T_{2}\omega_{2}$$

## Examples
![Pasted image 20230606001658](Attachments/Pasted%20image%2020230606001658.png)
![Pasted image 20230606001752](Attachments/Pasted%20image%2020230606001752.png)
## Summary of Practical Uses
Each one of these methods of transferring torque have their uses.
### Required Torque
![Pasted image 20230606002018](Attachments/Pasted%20image%2020230606002018.png)

### Shaft Positions
![Pasted image 20230606002153](Attachments/Pasted%20image%2020230606002153.png)

### Efficiency
![Pasted image 20230606002216](Attachments/Pasted%20image%2020230606002216.png)

### Cost Effectiveness
![Pasted image 20230606002253](Attachments/Pasted%20image%2020230606002253.png)

### Angular Velocity Ratio
![Pasted image 20230606002329](Attachments/Pasted%20image%2020230606002329.png)

### Noise Level
![Pasted image 20230606002405](Attachments/Pasted%20image%2020230606002405.png)

### Accuracy of Relative Position
![Pasted image 20230606002509](Attachments/Pasted%20image%2020230606002509.png)

# Losses in the System
Even bearings that drastically reduce the friction in comparison to a bushing still have some measurable inefficiencies related to their operating load and speed, which can be estimated:
$$M = 0.5\mu Pd$$
Where:
M = Frictional Moment (Nm)
$\mu$ = Constant coefficient of friction
P = Equivalent dynamic bearing load (N)
d = Bearing bore diameter (m)
**Extra Resource:**
http://www.skf.com/group/products/bearings-units-housings/ball-bearings/principles/friction/estimating-frictional-moment/index.html

## Examples
![Pasted image 20230606002954](Attachments/Pasted%20image%2020230606002954.png)
![Pasted image 20230606003102](Attachments/Pasted%20image%2020230606003102.png)
![Pasted image 20230606003122](Attachments/Pasted%20image%2020230606003122.png)

# Transferring Torque Between Components
We can prevent the torque we wish to transfer from simply spinning the shaft within the pulley/gear a number of ways.
![Pasted image 20230606003309](Attachments/Pasted%20image%2020230606003309.png)
![Pasted image 20230606003327](Attachments/Pasted%20image%2020230606003327.png)

## Interference Fit
Relies on a shaft which is oversized relative to the hole in the pulley/gear. To assemble an interference fit it is necessary to heat the pulley and cool the shaft. Once all components return to the same temperature they will apply pressure to each other.

## Flat and Grub Screw
By machining a flat portion into the shaft, it is possible to fix a pulley/gear to the shaft using a grub screw. To do this a threaded hole is required in the pulley/gear where the grub screw is inserted.
![|500](Attachments/Pasted%20image%2020230606184938.png)

## Keyway
A keyway requires a slot to be machined into the shaft and the pulley which a "key" can be inserted into preventing free rotation.
![|500](Attachments/Pasted%20image%2020230606185104.png)

## Splines
A series of grooves or teeth that are machined into both the shaft and the pulley/gear, acting like many keyways.
![|500](Attachments/Pasted%20image%2020230606185205.png)

## Cost Effectiveness
![Pasted image 20230606185242](Attachments/Pasted%20image%2020230606185242.png)

# Tolerances
In reference to interference fits, how much interference is required. Surprisingly little, it is specified by the tolerance provided for that particular section of the shaft.
![Pasted image 20230606185813](Attachments/Pasted%20image%2020230606185813.png)

A shaft refers to a component that fits into another member and does not only refer to circular sections.
![|500](Attachments/Pasted%20image%2020230606185858.png)
The hole is the location that the shaft fits into, this may not be a hole. This can refer to a gap between two other components or a slot.
![|500](Attachments/Pasted%20image%2020230606190003.png)

## Types of Fits
- **Interference fits** - The two components are fixed together due to the shaft being larger than the hole and can only be assembled after heating and cooling.
- **Transition fits** - The two components can be assembled with some effort and the two mating components are very similar sizes.
- **Clearance fits** - the two components easily fit together as the hole is larger than the shaft.
![Pasted image 20230606190309](Attachments/Pasted%20image%2020230606190309.png)

Tolerance for each fit include a **basic (nominal) size** as well as the **Limits of size**

# Tolerance Tables
## Hole Basis System
![Pasted image 20230606190732](Attachments/Pasted%20image%2020230606190732.png)

## Shaft Basis System
![Pasted image 20230606190752](Attachments/Pasted%20image%2020230606190752.png)