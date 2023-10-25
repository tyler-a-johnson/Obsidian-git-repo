 #MECH/2003  #UniNotes

**Slides:**
[[Attachments/Week 07 MECH203 Lecture Slides V23-0.pdf]]

# Computer Numerically Controlled (CNC) Machines
CNC mills come in various levels of complexity based on the number of axis that the milling head or the material can be moved in automatically. A 3-axis CNC mill allows for motion in three directions, the x,y and z linear directions.
A 5-axis CNC mill allows for movement about five directions, the x, y and z linear motions and rotations about an additional two axis. This allows for almost unlimited axis to the component for more complex machining.

**Examples of CNC Machines:**
1. Lathes
2. Mills
3. Routers
4. Laser and Water jet cutters
5. CNC welders

All these machines share one thing in common. They are fundamentally made of three components:
1. **Part Program:** List of instructions specific to a part that the machine must execute in order to create the part. Each instruction is either a position or motion the machine must achieve. *Think STL*.
2. **Machine control unit:** A microcomputer that receives, stores and processes the list of instructions.
3. **Processing equipment:** The machine that actually undertakes the work. *Lathe, mill, router, printer head*

# Coordinate System and Motion Control
A standard coordinate system is used to control the position of an NC machine. Three linear axes (x, y, z) and three rotational axes (a, b, c) are used.

Coordinate change for rotational NC systems with one less linear direction required. The simplest NC machines use only two of these axes.
![[Attachments/Pasted image 20230424221749.png]]
The simplest NC machines use only two axes, these include plotters, CNC routers and component insertion machines. To control these machines, only a series of x and y coordinates are required. The addition of further axes allows for more complex work to be undertaken. Three axes systems require x, y and z coordinates to be specified.

## Five Axis Machines
Five axis machines allow the relative position of the work part and the processing tool to be altered. As depicted in this diagram, there are 5 separate motions that can be conducted either independently or in unison.
![[Attachments/Pasted image 20230424222320.png]]
This allows for access to be achieved using alternative configurations depending on the tool being used. In some cases, it can improve the accuracy with which a component is manufactured.
![[Attachments/Pasted image 20230424222514.png]]

## Types of Motion Control
1. **Point to Point Systems:** Also called positioning systems, they move the work head to a position with no regard for the path taken to achieve that location. Once at the location, an operation is completed such as drilling, welding, extruding etc.
2. **Continuous Path Systems:** Undertake simultaneous control of more than a single axis, and as a result have some more control over the path taken. This is critical for achieving angled lines and two or three-dimensional curves.

In order to be able to achieve a continuous path motion, some interpolation technique is required. Two alternative techniques are employed depending on the required path, which are:
1. **Linear Interpolation:** used for straight line paths. To determine the motion, a start and end point are required, as well as a feed rate.
2. **Circular Interpolation:** This is used when a curve needs to be followed. A start and end point is once again required, but the path between the two is described by a series or radii. The interpolator then generates a series of points which satisfy this path moving along a series of long straight segments that at no time deviate between the desired path and the actual path by more than a pre-determined tolerance.

One additional consideration for defining an NC path is how the position is specified. This may be either:
1. **Absolute Position:** The tool location is always defined relative to the origin of the axis system.
2. **Incremental Position:** The subsequent location is defined relative to the previous location.
![[Attachments/Pasted image 20230424224005.png]]

### Example 1
Using an absolute referencing system, determine the 3 coordinates systems that a 2 axes CNC machine would traverse if it employed linear interpolation to travel from point A(150,250) to point B(200, 300).
![[Attachments/Pasted image 20230424225737.png]]
$n= \text{No of points} + 1$

$$\Delta x = \frac{x_{b}-x_{a}}{n}$$
$$\Delta y = \frac{y_{b}-y_{a}}{n}$$
$$A(150, 250) + (\Delta x, \Delta y)$$
$$\text{Do that N times}$$

### Example 2
Using an incremental referencing system, determine the 4 coordinates points that a 2 axes CNC machine would traverse if it employed linear interpolation to travel from point A(100,200) to point B(500, 200).
![[Attachments/Pasted image 20230424231123.png]]
### Example 3
A CNC machine is required to traverse along a 90 degrees arc with radius 100mm. If at no point the tool is permitted to deviate from the required path by more than 0.1mm, how many interpolations would be required to achieve this?
![[Attachments/Pasted image 20230424231207.png]]

### A Better Solution to Example 3
![[Attachments/Pasted image 20230424233513.png]]


# NC Positioning System
We need to determine a method that will allow these values to be converted into physical movement.
If we consider a single linear axis only to begin with, the most common arrangement to achieve motion includes a motor that drives a lead screw attached to a worktable. As the lead screw is rotated, the worktable is translated.
![[Attachments/Pasted image 20230424234631.png]]
While the image depicts only a single axis, a two axis system is created by mounting the shown arrangement on a second similar system positioned normal to the first. 
The **tool** is dependent on the required processing equipment, it may be a spindle to undertake milling, a welding probe or a laser cutter. In this particular example, a mill is shown.
The **worktable** is where the workpart is fixed while the manufacturing operation is undertaken. The worktable may move in order to translate the workpart otherwise the tool can be moved instead.

Motion is a controlled using one of two positioning systems, **open loop or closed loop**. The fundamental difference between the two is whether **feedback** is used to determine the position.
![[Attachments/Pasted image 20230424235559.png]]
The leadscrew for an **open loop positioning systems** is driven by a stepper motor. For every pulse that is sent to the motor, the motor turns a fraction of a rotation called a **stepping angle**. To complete one revolution, usually **48 steps** are required.

## Stepper Motors
![[Attachments/Pasted image 20230424235853.png]]
The step angle that is achieved by each pulse can be determined by using the following equation:
$$\alpha = \frac{360}{n_{s}}$$
Where:
$\alpha$ = Step angle achieved (degrees)
$N_{s}$ = Number of steps per revolution (must be an integer)

For an open loop system, the number of pulses inputted into the stepper motor controls the position of the worktable. The more pulses provided, the greater the translation that will be achieved in a specific direction.

Rotation achieved by any number of pulses can be determined by
$$A_{m}-an_{p}$$
Where:
$A_{m}$ = Angle of motor shaft rotation (degrees)
$\alpha$ = Step angle achieved (degrees)
$n_{p}$ = number of pulses sent to the motor (must be an integer)

Speed that the shaft rotation will achieve can be determined by the following equation:
$$N_{m}=\frac{60af_{p}}{360}$$
Where:
$N_{m}$ = Speed of motor shaft rotation (rev/min)
$\alpha$ = step angle achieved (degrees)
$f_{p}$ = frequency of pulses sent to the stepper motor (Hz)

Gearboxes can be mounted to further increase the resolution that can be achieved by a stepper motor. This will also reduce the speed with which the worktable can move with and increase the tourqe on the leadscrew.
![[Attachments/Pasted image 20230425001033.png]]
The effect that the gear reduction has on the rotation and speed of the leadscrew relative to the stepper motor output can be determined:
$$N_{m}=r_{g}N_{ls}$$
$$A_{m}=r_{g}A_{ls}$$
Where:
$A_{ls}$ = Angle of rotation of the leadscrew (degrees)
$N_{ls}$ = Speed of rotation of the leadscrew (RPM)
$r_{g}$ = Reduction achieved by the gearbox

Translation is achieved by rotating the leadscrew can be determined using the following equation:
$$x = \frac{pA_{ls}}{360}$$
Where:
$A_{ls}$ = Angle of rotation of the leadscrew (degrees)
$p$ = Pitch of the leadscrew (mm per revolution)

The number of rotations required to achieve a given translation can be determined using the following equations:
$$n_{p}=\frac{360r_{g}x}{p\alpha}=\frac{r_{g}n_{s}A_{ls}}{360}$$
Where:
$A_{ls}$ = Angle of rotations of the leadscrew (degrees)
$p$ = pitch of the leadscrew (mm per revolution)

Speed of Translation given the rotational speed of the leadscrew:
$$v_{t}= f_{r}=N_{ls}p$$
Where:
$A_{ls}$ = Angle of rotations of the leadscrew (degrees)
$v_t$ = Table speed (mm/min)
$f_{r}$ = feed rate (mm/min)
$p$ = pitch of the leadscrew (mm per revolution)
$N_{ls}$ = Rotational speed of the leadscrew (rev/min) 

Rotational speed of the leadscrew depends on the frequency of pulses driving the stepper motor:
$$N_{ls}= \frac{60f_{p}}{n_{g}r_{g}}$$
Where:
$N_{ls}$ = Rotational speed of the leadscrew (rev/min)
$f_{p}$ = Pulse train frequency (Hz)
$n_{g}$ = Steps per revolution
$r_{g}$ = Gear reduction between the motor and the leadscrew

## Closed Loop Systems
A **closed loop** requires feedback is used to determine the position.
![[Attachments/Pasted image 20230425192003.png]]
When considering a closed loop system, a common sensor used to determine the number of rotations achieved is a rotary encoder. This measures the number of pulses detected by a photocell through the slots in an encoder disc.
![[Attachments/Pasted image 20230425192210.png]]

Given that a number of pulses are now measured for each rotation, the equations required to determine the position of the worktable are very similar to the ones used for an open loop system.
$$\alpha = \frac{360}{n_{s}}$$
$$n_{p}=\frac{A_{ls}}{\alpha}= \frac{A_{ls}n_{s}}{360}$$
$$x=\frac{pn_{p}}{n_{s}}=\frac{pA_{ls}}{360}$$
$$v_{t}=f_{r}=\frac{60pf_{p}}{n_{s}}$$
Where:
$N_{ls}$ = Rotational speed of the leadscrew (rev/min)
$f_{p}$ = Pulse train frequency (Hz)
$n_{s}$ = Steps per revolution
$r_{g}$ = Gear reduction between the motor and the leadscrew
$A_{ls}$ = Angle of rotations of the leadscrew (degrees)
$v_t$ = Table speed (mm/min)
$f_{r}$ = feed rate (mm/min)
$p$ = pitch of the leadscrew (mm per revolution)
$\alpha$ = Step angle achieved (degrees)
$n_{p}$ = Number of pulses sent to the motor (must be an integer)

### Example 5
*A stepping motor has 48 step angles. Its output shaft is coupled to a lead screw with a 4:1 gear reduction. The lead screw which drives the worktable has a pitch = 5mm. The table must move a distance of 75mm from its current position at a travel speed of 400mm/min. Determine:* 
**a) How many pulses are required to move the table the specified distance.**
![[Attachments/Pasted image 20230425193033.png]]
**b) The motor speed**
![[Attachments/Pasted image 20230425193045.png]]
**c) Pulse frequency required to achieve the desired table speed.**
![[Attachments/Pasted image 20230425193058.png]]
### Example 6
*An NC worktable is driven by a closed-loop positioning system consisting of a servomotor, leadscrew and optical encoder. The leadscrew has a pitch of 3mm and is coupled to the motor with a gear ratio of 5:1. The optical encoder generates 100 pulses per revolution of the leadscrew. The table has been programed to move a distance of 95mm at a feed rate = 300mm/min. Determine:*
**a) How many pulses are received by the control system to verify that the table has moved exactly 95mm**
![[Attachments/Pasted image 20230425193201.png]]
**b) The pulse rate**
![[Attachments/Pasted image 20230425193222.png]]
**c) Motor speed that corresponds to the required feed rate.** 
Calculated in previous step:
![[Attachments/Pasted image 20230425193255.png]]

# Part Programming
Part programming refers to the programming that would be prepared for a specific part. Part programming requires the programmer to define points, lines, and surfaces of the workpart in the axis system to control the tool relative to the defined part features. Including:
```ad-info
title: Manual Part Programming
Used for jobs such as drilling operations. it requires basic numerical data and special alphanumeric codes to define the steps in the process.

**N010 x70.0 y85 f175 s500**

Each aspect of the code is called a "word". The **N word** specifies a sequence number. x, y, f, s, are x and y coordinates, feed, and speed values respectively.
```
```ad-bug
title: Computer Assisted Part Programming
Requires the programmer to first enter a series of geometric features that define the part. This is undertaken using APT motion statements which take the following form:

**P1 = POINT/25.0, 150.0** 

**L1 = LINE/P1, P2**

These descriptions are then used to generate the path that is required. Terms exist for lines, circles, and planes. They can also be used to control feed rates, spindle speed, tool sizes, and tolerances.
```
```ad-note
title: CAD/CAM Assisted Part Programming
Utilises software that allows for the most complex of operations to be controlled easily and with the aid of visual feedback. 3D models can be generated by the user, and instructions generated automatically. Simulations of the operations generated allow for more errors to be picked up on before commiting.
```
```ad-example
title: Manual Data Input
Data is directly entered into the machine being controlled.
```

## Non Machining Operations
CNC machine operations can either be machining operations or **non-machining operations**. Machining is performing work on the workpiece. However non-machining operations include things such as:
1. Tape laying machines - Used in composite manufacturing
2. Coordinate measureing tools - Accurate measurements (BLtouch, feeler gauge)
3. Drawing plotters - draws funny images and can i guess make marks on workpieces for folds n shit
