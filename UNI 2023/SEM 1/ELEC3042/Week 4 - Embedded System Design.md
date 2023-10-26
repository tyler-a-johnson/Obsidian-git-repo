 #ELEC/3042 #EmbeddedSystems/Microprocessors #Communication #UniNotes

[Week 4](Attachments/Week%204.pdf)

# 7-Segment Display
- Allow alphanumeric characters to be displayed with simple hardware
- HW-262 has four 7-segment displays connected to two 8 bit shift registers in series to form a 16 bit shift register.
	- 8 bits are used to turn on/off the segments
	- 4 bits are used to turn on and off digits
	- 4 bits are unused
- Shift register is controlled via 3 lines
	- Data(PB0) - The 16 control bits
	- Clock (PD7) - Data shifts into registers on rising edge
	- Latch (PD4) - Latches data to shift register output to be displayed
![Pasted image 20230321230257](Attachments/Pasted%20image%2020230321230257.png)
- Turn on/off a segment by sending a low/high voltage (active low)
- Select a digit by setting the corresponding bit high
- To  show a four-digit number, we have to time multiplex the display
on  the rising edge of PD7 a new bit is clocked in
![Pasted image 20230321231233](Attachments/Pasted%20image%2020230321231233.png)

PD4 goes high to send all the bits stored to the display
![Pasted image 20230321231353](Attachments/Pasted%20image%2020230321231353.png)

# State Machines
- Is a model describing the behaviour of a system as a set of states
	- A system can only be in one state at any time
	- Transition between states is dependent on the current state and the inputs to the system
- We can describe the relationship between states and their transitions via diagrams, equations, or tables
	- For this unit, we use
		- State transition diagrams
		- State transition tables
![Pasted image 20230321231750](Attachments/Pasted%20image%2020230321231750.png)
![Pasted image 20230321231806](Attachments/Pasted%20image%2020230321231806.png)