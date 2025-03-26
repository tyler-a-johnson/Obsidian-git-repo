---
date: 2024-06-01
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---

Finding the settling time from a root locus plot involves understanding the relationship between the locations of the poles of the system and the system's time-domain response. Settling time (Ts) typically refers to the time it takes for the system response to remain within a certain percentage (usually 2% to 5%) of its final value. Here is the step-by-step procedure:

1. **Identify the Dominant Poles**:

- The dominant poles of the system are those closest to the imaginary axis in the complex plane because they have the slowest decay and, thus, most influence the system response.

- On the root locus plot, look for the poles that are closest to the imaginary axis but on the left half-plane.

2. **Determine the Real Part of the Dominant Poles**:

- For a pole located at $( s = \sigma \pm j\omega ), the real part is ( \sigma )$.

- These poles typically set the time constant of the system's exponential response.

3. **Calculate the Time Constant (\( \tau \))**:

- The time constant \( \tau \) is related to the real part of the pole \( \sigma \) by:

\[

\tau = \
