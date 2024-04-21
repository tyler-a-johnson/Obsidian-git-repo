---
date: 2024-02-20
tags:
  - ELEC/3024
status: Incomplete
Relevant Docs: 
Relevant Questions: 
Relevant Notes: 
Practical Docs: 
Relevant Links:
---
[Intro](Attachments/Intro%20to%20Control%20Systems%20v01_annotated.pdf)

# Response Characteristics and System Configurations

## Response Characteristics
![](Attachments/Pasted%20image%2020240421154951.png)

## Two major configurations
- **open loop** - does not correct for disturbances and is commanded by the input. (eg, toaster) 
![](Attachments/Pasted%20image%2020240421155257.png)
- **closed loop** - compensates for disturbances by measuring the output response, feeding that measurement back through a feedback path, and comparing that response to the input at the summing junction.
![](Attachments/Pasted%20image%2020240421155419.png)

## Analysis and design objectives
- a **Control system** responds to an input by undergoing a *transient response* before reaching a ***steady state response***. 

We want to
 - producing the desired transient response
 - reduce **steady state error**
 - achieve **stability**
 - achieving **robust design***

# Stability
$$\text{total response} = \text{natural response } + \text{forced response}$$

- **Natural response** is dependent *only on the system* not the input
- **Forced response** is *dependent on the input*

The natural response must either:
1. **Eventually approach zero**, thus leaving only the forced response
2. **Oscillate**

# Design Process
![](Attachments/Pasted%20image%2020240421160352.png)

## Example: Antenna Azimuth
**Step 1**
- Requirements: desire to position the antenna from a remote location; weight, dimensions of the system
- Design Specifications: Desired transient response, steady state accuracy.

**Step 2**
A functional block diagram
![](Attachments/Pasted%20image%2020240421160715.png)

**Step 3**
Create a schematic
![](Attachments/Pasted%20image%2020240421160824.png)

**Step 4**
**A mathematical model diagram**
- Use physical laws such as kirchhoff's laws for electrical networks and Newton's law for mechanical systems
- Mathematical models can be described using 
	1. Differential equations
	2. Laplace transform
	3. State-space representation

**Step 5**
**Reduce the block diagram**
In order **to evaluate** the system response we **reduce** the large system's block diagram **to a single block** with a mathematical description that represents the system from its input to its output.
![](Attachments/Pasted%20image%2020240421161605.png)


**Step 6**
- Analyze the system to see if the **response specifications and performance requirements can be met** by simple adjustments of system parameters.
- If specifications *cannot be met, the designer designs additional hardware (???)* in order to achieve a desired performance.
![](Attachments/Pasted%20image%2020240421161847.png)
![](Attachments/Pasted%20image%2020240421161920.png)
