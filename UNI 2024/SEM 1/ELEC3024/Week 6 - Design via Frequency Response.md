---
date: 2024-04-26
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Lecture Slides:**
[Design via Frequency Response](Attachments/Workshop%20Ch11%20-%20Design%20via%20Frequency%20Response_annotated.pdf)

**Review of root locus design:**
- The transient response of a control system can be designed by adjusting the gain along the root locus
	- Finding the transient specification on the root locus
	- Setting the gain accordingly
	- Settling for the resulting steady-state error
- Disadvantage
	- Only the transient response and steady-state error represented by **points along the root locus** are available
- **Cascade compensators** have been introduced to meet transient response specifications represented by **points not on the locus** and, independently, steady-state error requirements.

*Bode plots vs Root Locus*
- Stability and transient response design via gain adjustment
	- Unlike root locus techniques, **Bode plots can be implemented conveniently without a computer or other tool except for testing the design.**
	- We can easily draw bode plots using asymptotic approximations and **read the gain from the plots.**
	- The computational disa