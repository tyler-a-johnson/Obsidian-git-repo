---
date: 2024-04-26
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Lecture Slides:**
[Digital Control Systems pt1](Attachments/Workshop%20Week%207%20–%20Digital%20Control%20Systems%20-%20Part%201_annotated.pdf)
[Digital Control Systems pt2](Attachments/Workshop%20Week%207%20–%20Digital%20Control%20Systems%20-%20Part%202_v1_annotated.pdf)

# Intro
- This will only cover frequency domain analysis and design.
- Specifically, this will cover analysis and design of stability, steady state error, and transient response for discrete time systems.
- Modern microcontrollers make this much easier
- Microcontrollers can perform two main functions:
	- **Supervisory** external to the feedback loop eg scheduling tasks, monitoring parameters and variables, safety features etc
	- **Control** internal to the feedback loop
- **Hardware compensators** built with analogue circuits (passive or active), are now **replaced with software**

*Advantages of microcontrollers over analogue systems*
- **Reduced cost**
	- A single digital system can replace numerous analogue controllers.
	- Banks of equipment, meters and knobs are replaced with computer terminals
- **Flexibility** in response to design changes
	- Changes and mods can be implemented in software instead of expensive hardware changes.
- **Noise immunity**
	- Digital systems exhibit **more noise immunity** than analog systems by method of implementation