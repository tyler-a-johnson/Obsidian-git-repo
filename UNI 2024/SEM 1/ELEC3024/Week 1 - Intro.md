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
- Requirements: desire to position the antenna from a remore lo