---
date: 2023-09-19
status: Incomplete
Relevant Docs: []
Relevant Notes:
  - "[[PLC (Programmable Logic Contoller)s]]"
Relevant Links:
---
![[Attachments/Pasted image 20230919225542.png]]
# What is it
An Opto-Isolator is a simple circuit that uses a Photo Transistor and a regular LED (albeit much smaller) to transmit signal data effectively wirelessly.

Pins **8 and 7** are **completely electrically independent** from pins **1 and 2**. They are not physically connected. 

As a signal is passed through the LED the brightness will change in response to the signal. This change in brightness changes the voltage on the "gate" of the photo transistor. This alters the flow of current between 7 and 8 proportionally with the signal through the LED.

These are usually implemented in IC's and powered independently.

Commonly coupled with an [[Amplifier]] in order to get a signal of the same magnitude as the input.

# Benefits
An opto-isolator transmits signals between two circuits quickly, and does so without them being connected. 
- The inductance or capacitance of the load can have no effect on the signal being sent from the processor.
- The processor is protected from transient spikes.
- Reduction in noise (pretty small)