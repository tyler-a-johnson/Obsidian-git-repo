---
date: 2024-03-14
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Lecture Slides:**

# Root Locus
- A graphical technique that gives qualitative **description** of a control system's performance.
- Provide solutions for systems of order greater than two
- Describe qualitatively the performance (transient response) of a system as various parameters are changed
- Graphical representing a system's stability

## Vector Representation of Complex Numbers (1)

![](Attachments/Pasted%20image%2020240314194050.png)
$$\bar{M} = Me^{j \text{ phase of m}}$$
$$F(s) = s  + a  = (\sigma + a) + j \omega $$

Bottom right is a different way to draw the same vector, we aren't concerned with location
Zeros are now at $- a$

Bottom right we are evaluating $F(s) = s + 7$ at the point 

$(s+a)$ is a complex number and can be represented by a vector drawn from the zero of the function to the point s


Apply this
![](Attachments/Pasted%20image%2020240314194855.png)
Each complex factor can be expressed as a vector of magnitude $M$ and angle $\theta$

![](Attachments/Pasted%20image%2020240314194910.png)

## Defining the Root Locus
Example, a camera system that follows a subject
![](Attachments/Pasted%20image%2020240314195125.png)

![](Attachments/Pasted%20image%2020240314195211.png)

**Closed loop transfer of the camera system**
![](Attachments/Pasted%20image%2020240314195238.png)

**Pole location as a function of gain for the camera system**
![](Attachments/Pasted%20image%2020240314195931.png)
![](Attachments/Pasted%20image%2020240314195942.png)
