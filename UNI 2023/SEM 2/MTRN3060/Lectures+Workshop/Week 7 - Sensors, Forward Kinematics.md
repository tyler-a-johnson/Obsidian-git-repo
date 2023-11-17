---
date: 2023-09-07
tags:
  - MTRN/3060
status: Incomplete
Relevant Docs:
  - "[Week 7-slides 3060](Attachments/Week%207-slides%203060.pdf)"
Relevant Questions: 
Relevant Notes:
  - "[Sensors](../../../../UNI%202022/MTRN2060/Sensors.md)"
Practicals Docs:
  - "[prac7](Attachments/prac7.pdf)"
---
[Week 7-slides 3060](Attachments/Week%207-slides%203060.pdf)

# Distilled Info

## Sensors
- Temp sensors
- Proximity sensors
	- Can detect presence of an object without physical contact
		- Inductive
		- Capacitive
		- Magnetic
		- Ultrasonic
		- Photoelectric
- Level measurements
- Flow sensors

### Operating Principles and Parameters
- Material
- Shape
- Dimension
- Colour
- Speed
- Package

### Inductive
Can detect proximity of purely metallic object.
**Ferrous Metals:**
- Iron
- Steel

**Non-Ferrous Metals**
- Copper
- Aluminium
- Brass
![](Attachments/Pasted%20image%2020231117132503.png)
![](Attachments/Pasted%20image%2020231117132544.png)


### Capacitive Proximity Sensors
Detect the object through the change in sensor's capacitance
**Capacitive sensors use an electrostatic field**
![](Attachments/Pasted%20image%2020231117133015.png)
Can detect any object.

## Definition of Controller
Once a robot has a motion plan, its time to act. How do you ensure, that the robot's execution follows the desired plan? Controlling a large robotic system to do a task often involves solving many smaller control problems.

**Controller**
The combination of hardware and software that together program and control a robotic system. A programmable device that converts an error signal to current/voltage command.

**Feedforward (Open-Loop)**
Uses the model of the dynamics of the controlled system to make proactive decisions on the commands to send to robot actuators.

**Feedback (Closed-Loop)**
Uses the output of the dynamic system as an input to the control decision process. More robust differences between the real ad modelled system than open-loop control.

**Control**
The study of the process of regulating the output of an actuator or the behavior of a dynamical system.

*Hierarchy of the Control Loop*
![](Attachments/Pasted%20image%2020231117143143.png)
### Types of Controllers


## Feedforward VS Feedback
![](Attachments/Pasted%20image%2020231117143453.png)
**Feedforward:**
- Uses the model of the dynamics of the controlled system to make proactive decisions on the commands to send to the robot actuators
- Control focuses on fast decision rates possibly with simpler models
- Proactive

**Feedback:**
- Uses the output of the dynamic system as an input to the control decision process while overcoming the difference between the real and modeled systems
- The output signal is usually captured by a sensor that facilitates the process of regulating the output to a desired value.
- Reactive


# Conceptual Info
