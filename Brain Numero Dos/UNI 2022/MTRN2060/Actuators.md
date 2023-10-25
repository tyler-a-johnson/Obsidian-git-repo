#MTRN/2060  #Circuits 
[[UNI 2022/MTRN2060/Attachments/Solenoid technical application sheet.pdf]]
[[UNI 2022/MTRN2060/Attachments/Stepper Motor Drivers.pdf]]
![[UNI 2022/MTRN2060/Attachments/MTRN2060 Actuators V2.pptx]]
# Common Actuators
•DC Motors (PM, separately wound, shunt and series)
•Hobby servos
•Solenoids
•Stepper Motors
•Induction motors
•Brushless DC Motors
•Hydraulics
•Pneumatics

# Types of DC Motors
![[UNI 2022/MTRN2060/Attachments/Pasted image 20221029214526.png]]
![[UNI 2022/MTRN2060/Attachments/Pasted image 20221029214533.png]]
![[UNI 2022/MTRN2060/Attachments/Pasted image 20221029214542.png]]

•Permanent Magnet Direct Current (PMDC) motors are most common

•Replace permanent magnet with another coil to get a separately wound DC motor

•Connect the two windings in parallel to get a DC shunt motor with a flatter torque speed curve

•Connect the two windings in series to get a DC series motor with a very steep torque speed curve.

## Example of DC Series Motor
•The starter motor for an internal combustion engine is a DC series motor. It delivers very high torque at low speed and requires very large current
![[UNI 2022/MTRN2060/Attachments/Pasted image 20221029215153.png]]
# Hobby Servos
Servo implies that the motor is intended for use with closed loop control

•Comprised of a small motor (1), gearbox (2), position sensor i.e. turnpot (3) , and motor control electronics (4)

•3 wire connection (GND, +5V, Signal)

•Signal is a special type of PWM, neutral position is a 1.5 ms pulse.

•Middle pin is 5V to prevent reverse connection and “smoke”

•~180 degree type

•Simple closed loop proportional feedback controls position.

•Output shaft connect to a potentiometer. Resistance compared to drive signal. Difference generates error -> drive signal.

•Continuous rotation

•Disconnect the feedback control (no pot) so a command to go to 30 degrees will just turn the motor, probably at full power. (cheap geared motor). Can easily modify a normal servo to do this.

•Full turn and multi turn Servos

•Have feedback control using a multi-turn pot or geared pot. PWM format limits total information out. So you sacrifice accuracy for range. (Sail Winch Servo)

•Servo Speed is a function of gearing. Faster response time means lower torque

# Solenoids and Relays
![[UNI 2022/MTRN2060/Attachments/Pasted image 20221030003634.png]]
•Solenoids and relays contain a sliding steel shuttle surrounded by a yoke and electromagnet.

•Consider the magnetic circuit of a solenoid, like that shown at right.

•Let’s take a simple analysis of the: ignore the fixed sliding gap lg and ignore fringing:

$$R=4x/(μ_o πd^2 )+R_{steel}$$

$$B=mmf/AR=4Ni/(πd^2 ) (1/(4x/(μ_o πd^2 )+R_{steel} ))=(4μ_o Ni)/(4x+ μ_o πd^2 R_{steel} )$$

•The amount of magnetic field in the circuit is (approximately) inversely proportional to the distance x.

•Where does the force come from since there is no BiL?

# Energy Stored in a Magnetic Field
To understand the force in a solenoid, or even the force between a magnet and the fridge, recall that magnetic fields store energy. The energy density (energy per unit volume) stored by a magnetic field is:

$$u=1/2  B^2/μ_o$$

If we assume the magnetic field in the gap is uniform, then the total energy stored by the magnetic field in the gap is the energy density times the volume of the gap:

$U=1/8  (B^2 πd^2)/μ_o  x= (πd^2 x)/8μ_o  ((μ_o Ni)/(4x+μ_o πd^2 R_{steel} ))^2=(πμ_o (dNi)^2)/32  x/(x^2+2Cx+C^2 )$

Where $C=(μ_o πd^2 R_{steel})/4$

For small values of x, the equation simplifies to: $U=(π〖μ_o (dNi)〗^2)/32  x/C^2$

You can see that the potential energy stored in the magnetic field increases with x (gap between plunger and yoke). If the potential energy (U) of an object changes with position, then there is a force on that object. Think of a spring, or a rollercoaster.

This force is equal to the negative gradient of potential energy :

$$F=-dU/dx$$

This is a fundamental principle in physics

# Force In a Solenoid
![[UNI 2022/MTRN2060/Attachments/Pasted image 20221030003641.png]]
•The force acts to close the gap

•The force gets much stronger as the gap gets smaller

•These features are the same for any magnetic attraction.

•This is called a variable reluctance force and is present any time that movement changes the reluctance of a magnetic circuit.

•Stepper motors, solenoids and Brushless DC motors are variable reluctance machines and do not rely on the BiL force.

[http://www.youtube.com/watch?v=hsoggQOoG4s](http://www.youtube.com/watch?v=hsoggQOoG4s)
#Video 

![[UNI 2022/MTRN2060/Attachments/Pasted image 20221030003743.png]]
![[UNI 2022/MTRN2060/Attachments/Pasted image 20221030003749.png]]
•Solenoids are very common because of cost (1/4 to 1/10 the of DC motors).

•Solenoids can be push or pull type, but in either type there is always an iron rod being pulled into a coil.

•Example Force vs Stroke profile shown to the right. The shape of the curve is affected by the steel yoke and back-stop design.

•Most solenoids cannot be energized at full voltage for long due to high currents and overheating

•Solenoids are the basis of electrically switched liquid and air valves

•Solenoids are the basis of electrical relays

•Solenoids are modelled as an inductor in series with a resistor

# Stepper Motors
![[UNI 2022/MTRN2060/Attachments/Pasted image 20221030003822.png]]

![[UNI 2022/MTRN2060/Attachments/Pasted image 20221030003827.png]]

Two or three sets of magnetic coils align a rotor containing a permanent magnet in a particular position

•The average speed is set by the frequency of changes

•Can rotate in both directions and move in precise angular increments

•Can sustain a holding torque at zero speed

•Controlled by digital circuits and benefit from a special driver

•Open loop control, no encoder, no feedback (simple)

•Stepper motors do not spin smoothly.

•The vast majority of steppers are so-called Hybrid Stepper Motors

## Hybrid Stepper Motors
[http://www.youtube.com/watch?v=bngx2dKl5jU](http://www.youtube.com/watch?v=bngx2dKl5jU)
#Video 

![[UNI 2022/MTRN2060/Attachments/Pasted image 20221030003926.png]]

# Introduction and Performance Characteristics
Sometimes called Reluctance motors because torque is produce by minimizing reluctance in a magnetic circuit, much like a solenoid (not BiL torque)

Shaft rotates in discrete steps

Popular because

•easy control with a microcontroller

•good open loop position control (where most motors have inherent speed control)

Torque and power density are similar to conventional motors, but maximum speeds are lower.

One full step angle is typically 1.8o  or 360/200

Range in size from 50 grams to about 2 kg
![[UNI 2022/MTRN2060/Attachments/Pasted image 20221030004007.png]]
![[UNI 2022/MTRN2060/Attachments/Pasted image 20221030004012.png]]

## 200  Step/rev Hybrid Motor
![[UNI 2022/MTRN2060/Attachments/Pasted image 20221030004138.png]]
•8 poles each with a coil, each with 5 teeth, running the length of the motor. Some motors have 6 teeth per pole (as per video).

•Rotor has two steel end caps, each with 50 teeth. The caps are offset so that only 1 set of teeth line up a time, minimizing detent.

•Every time a set of teeth (pole 1&5 for example) are aligned there is a stable equilibrium and we feel a detent.

•Each end cap has detents before moving one full tooth position. The two end caps give 8 stable positions in advancing 1 tooth. 50 teeth on the rotor x 8 positions gives 200 steps per rev.

•8 coils are connected to form two-phase windings (A&B, odds and evens). Switching the current from +A to -B will increment one step (1/8th of one tooth position) forward. +A to +B will increment backward. (4 wires)

•The need to energize the coils + and – means we need a bipolar supply, hence the term bipolar stepper motor.

•An alternate set of windings can achieve the same thing without a bipolar supply. 4-phase, not two, and 6 or 8 wires are now needed.

# Stepping
•We have seen single stepping: +A,-B,-A,+B,+A, where only one phase is energized at a time.

•By energizing +A and –B at the same time, the rotor’s stable position is half a step forward. This increases the holding torque, provides more position resolution and produces smoother shaft rotation. Both phase currents must be exactly equal to accurately half-step.

•By delivering unequal phase currents we can mini-step, delivery ¼ stepping, 1/8 stepping, 1/16th stepping an so on.

•Specialized stepper motor drivers measure and control current to do this micro-stepping.

# 3 Types of Drivers
•Constant voltage drives: Due to circuit inductance and long time constant, they cannot deliver the necessary current to achieve good torque at high speed.

•Current forced drives incorporate a resistor. The resistor allows for a higher drive voltage to be used. This reduces the time taken to reach maximum torque. The resistor prevents the steady state current from being too high.

•Constant Current or Chopper Drives monitor current and throttle a high supply voltage to get the current to the required level and keep it there. MOST POPULAR - LOW COST 
Example: [http://www.schmalzhaus.com/EasyDriver/](http://www.schmalzhaus.com/EasyDriver/)
![[UNI 2022/MTRN2060/Attachments/Pasted image 20221030004307.png]]
![[UNI 2022/MTRN2060/Attachments/Pasted image 20221030004311.png]]
![[UNI 2022/MTRN2060/Attachments/Pasted image 20221030004316.png]]

# Torque VS Speed
![[UNI 2022/MTRN2060/Attachments/Pasted image 20221030004424.png]]
•Constant current or chopper drives have much better torque at high speed, and are more efficient than just adding a current limiting resistor.

# Induction Motors
•Induction motors are the workhorses of the electrical world.  At least half of all electricity that is generated goes to these machines.

•They are supplied with single-phase (2 wire) or 3-phase ( 3 wire) AC electricity

•Their speed is always close to, but never more than the frequency of electricity supplied.

•Like a PMDC motor, if you increase the load, they slow down

•Most commonly medium (2 kg) to large (>20 kg)

•You will study these in more detail in MTRN3026

# Brushless DC Motors
•A DC source is electronically pulsed to drive various windings in time.

•Speed is determined by frequency and pulse timing

•Speed controller is essential and typically uses some sort of feedback to decide when to fire particular phases to ensure appropriate timing.

•May use variable voltage and variable frequency

•More efficient than PMDC because electronic commutation can be made very efficient and no brush firction.

•Can have much higher power density than PMDC.

•Produce no sparks and much less Electromagnetic Interference (EMI)

•Can cool the coils with a heat sink, meaning no air cooling (Fan) and internal dust collection.

•Longer life

•Higher cost because of control electronics.

Nice example of an unusual home-made BLDC motor
[http://www.youtube.com/watch?v=Kudzft19coo](http://www.youtube.com/watch?v=Kudzft19coo)

# Hydraulics
•Fluid (usually oil) is pumped to and from linear actuating cylinders or gear motors. Supports very high pressure.

•Valves control where fluid goes and there fore which things move

•Commonly used on large machinery to generate large forces

# Pneumatics
Clean, dry and lubricated air under pressure (~10 atm) is used to move machine elements.

Electrically controlled valves are most common today.

Most actuators are linear cylinders, but rotation and pinch/grip actuators are also common

Commonly used on small-medium factory settings

Two major companies in this sector are Festo and SMC