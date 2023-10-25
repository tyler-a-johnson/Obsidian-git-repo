 #MECH/2003 #UniNotes

**Slides:**
[[Attachments/Week 11 MECH203 Lecture Slides V23-0.pdf]]

# Internal Combustion Engines
Internal Combustion Engines convert chemical energy into mechanical energy. There are multiple types of internal combustion engines:
- Four stroke engines
- Two stroke engines
- Rotary  engines

All of these engines have one thing in common, they produce a mixture of fuel and air at a ratio that is volatile. This mixture is compressed, then ignited so that combustion occurs.
The resultant pressurised gas is used to drive a mechanism that transfers kinetic energy to the output shaft of the engine.

Suck $\rightarrow$ Squeeze $\rightarrow$ Bang $\rightarrow$ Blow

Each cylinder comprises of multiple moving components that allow the mixture to enter the cylinder, be compressed, ignite and then transfer the kinetic energy to the output shaft.
![[Attachments/Pasted image 20230606194728.png]]

## Four Stroke
They are called four stroke engines as the piston passes either up or down four times in a single combustion cycle, **note how critical the timing of opening and closing valves**.

## Two Stoke
Two stroke engines have similar components to a four stroke engine, but the cylinder only moves up and down once in each direction per cycle. (piston moves twice per cycle)
As a result, there is no need to have exhaust and intake valves as the air/fuel mixture enters as the exhaust leaves while the piston is in its lowest position.
![[Attachments/Pasted image 20230606195323.png||400]]

## Rotary Engines
These are very unique. They do not utilise pistons, instead they have an eccentrically mounted rotor that compresses the air fuel mixture and is also driven by the combusted and expanding gasses.
The technique utilised by a rotary engine dictates that even less moving components are required in comparison to four or two stroke engines and they ignite three times per revolution.
![[Attachments/Pasted image 20230606195728.png]]

# Motor Efficiency
Advantages and disadvantages exist for each type of engine that may make it suitable for different applications. In terms of cost, the engines with the least components would be cheapest making a 2 stroke engine the most cost effective.
![[Attachments/Pasted image 20230606200037.png]]

A 4 Stroke Engine would be considered the most efficient because its operation ensures all fuel in the cylinder is combusted and very little escapes.
![[Attachments/Pasted image 20230606200655.png]]
All combustion engines produce carbon dioxide. Two stroke engines produce additional pollutants as oil is added to the fuel to lubricate the crank which results in some oil being burnt in the process.
![[Attachments/Pasted image 20230606201038.png||500]]
The efficiency of an IC engine varies depending on the speed with which it is operated and can be anywhere between 25% and 30% efficient.

## Cooling
A **significant** portion of power produced by an engine is converted to heat and noise. For this reason some IC engines require radiators or cooling fins to help dissipate the unwanted heat.
![[Attachments/Pasted image 20230606201214.png||800]]

## Turbo (and heat2power?)
Some engines incorporate turbos in an attempt to recover some of the energy lost through the exhaust gasses. This is used to pressurise the air entering the chamber increasing the quantity of fuel and air that can be combusted.
![[Attachments/Pasted image 20230606201441.png]]
As a result, the energy density and the efficiency of the system can be increased given that some of the wasted heat energy is being re-utilised.
![[Attachments/Pasted image 20230606201543.png]]

## Engine Control Unit (ECU)
A critical factor for the efficient operation of an internal combustion motor is the timing of the ignition and control of the air fuel mixture entering the cylinder. This is usually managed using an Engine Control Unit (ECU)
![[Attachments/Pasted image 20230606201834.png]]
Most internal combustion engines operate with a fuel to air to ratio by mass of approximately 13%. This value is monitored in an engine with the quantity known as **the lambda value.**

An ECU will use maps that relate the optimum time to fire the ignition and the desired air fuel mixture depending on the speed of the engine and the throttle position.
![[Attachments/Pasted image 20230606202240.png]]
More advanced four stroke motors also have the ability to alter when the intake or exhaust valves are opened to further enhance efficiency and performance.
![[Attachments/Pasted image 20230606202515.png]]

The power and torque produced by a 4 stroke motor varies depending on the speed with which the motor is turning. The torque curve can be estimated as an inverse parabola.
![[Attachments/Pasted image 20230606202755.png]]
The small "optimum" band with which an IC engine operates within causes an additional complication that often needs to be addressed. 
To keep the engine at the peak of the power curve, a gearbox is required to ensure that an adequately large speed range can be achieved which further reduces the efficiency.
![[Attachments/Pasted image 20230606203139.png]]

## Example
![[Attachments/Pasted image 20230606203206.png]]
![[Attachments/Pasted image 20230606203242.png]]
![[Attachments/Pasted image 20230606203524.png]]
![[Attachments/Pasted image 20230606203536.png]]
![[Attachments/Pasted image 20230606203550.png]]

# Electric Motors
Electric motors offer an alternative method of producing kinetic energy. There are two main categories.
- Alternating Current (AC) Motors
- Direct Current (DC) Motors

## DC Motors
![[Attachments/Pasted image 20230606204029.png]]
For a motor that is supplied with direct current, we use a commutator ring making contact with brushes that switch the current through the loop every $180\degree$. You fucken know how these work.
![[Attachments/Pasted image 20230606204322.png]]
Add more coils to get consistent torque on the output shaft.
Carbon or brass brushes are frequently used to provide the rotor with current.

### Torque
The torque available from a DC motor is linearly proportional to its operating speed, with decreasing torque as the speed increases. **Peak torque is produced at 0rpm, and is available more or less instantly.**
![[Attachments/Pasted image 20230606204909.png||500]]
The torque curve can be raised or lowered by alternating the voltage of the electrical supply while maintaining the current.
![[Attachments/Pasted image 20230606205014.png||500]]
The efficiency is also dependent on the operating speed. Note, this graph indicates a peak of 75% but greater efficiencies are possible.
![[Attachments/Pasted image 20230606205244.png||500]]
### Types
There are a large variety of DC motors that exist. They include:
- **Permanent Magnet DC Motor** - (Inexpensive up to 300W) Requires large DC currents which may be difficult to get from common power supplies. Inexpensive and simple to control speed using a chopped DC supply from a battery.
- **DC Stepper Motors** - Common up to 200W. Give simple and reliable open loop position control. Have high inertia and can be underdamped. Require sophisticated drive electronics.
- **DC Servo Motors** - With appropriate control system can give good position and speed control. More expensive.
All the above options can be considered to be low to medium power options.

### Brushless DC Motors
Brushless DC motors utilise electronics to switch the direction of the current as opposed to a commutator. The electronics that achieves this is referred to as the **Drive**.

## AC Motors
AC Motors are the best option for high powered drives (>300W) and are inexpensive when required to operate a single speed. Their large power output is possible as they use induction coils in both the stator and rotor (armature) increasing the magnetic field strength.
![[Attachments/Pasted image 20230606212425.png||600]]
Coupled with a modern variable frequency drive, they have excellent speed and torque control. This is because the power being sent to the AC power is stepped (processed/discretised).
![[Attachments/Pasted image 20230606212615.png||600]]
By doing this, the pulse duration can be spread out to provide an effectively lower or higher current supply while the switching can be adjusted to control the frequency.
![[Attachments/Pasted image 20230606212820.png]]
### Torque
Torque characteristics differ to that of a DC motor, but both are capable of producing torque at no rotation.
![[Attachments/Pasted image 20230606212938.png]]
This results in excellent acceleration.

### Examples
![[Attachments/Pasted image 20230606213055.png]]
![[Attachments/Pasted image 20230606213104.png]]

# Motor Selection
Both IC engines and Electric Motors provide different torque at different speeds. They also take different fuels. This makes their power delivery very different and suited to different niches.

## IC Engines
The initial peak torque produced by a DC motor would make it ideal for controlling with high precision.

The power delivery and operating speed range required could also affect the system. If an IC motor is chosen a gearbox may have to be included.

The duration with which an IC engine will be required to operate for will determine the amount of fuel needed. This adds to the weight and overall size of the system.

## AC or DC Motors
If an AC or DC motor is utilised in a device that is intended to be mobile, a battery will likely need to be included. Depending on the longevity required, this will have an impact on both weight and size.

Batteries would not be required though if the device was stationary and a power source was available. The Duty Cycle will also impact the duration the motor can be operated for.
![[Attachments/Pasted image 20230606214510.png]]
If batteries or a fuel tank were being used to store energy, considerations must be made for safety. Fuel is flammable, and can easily make a bomb. Batteries can be dangerous if damaged or operated outside of rated conditions (charged while used, input voltage too high)

