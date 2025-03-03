---
date: 2025-03-04
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
---
date: 2025-02-26
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes:
  - "[[../../../Distilled Notes/Hexadecimal - Binary - Decimal Conversions|Hexadecimal - Binary - Decimal Conversions]]"
  - "[[../../../Distilled Notes/Bit wise Operations|Bit wise Operations]]"
Relevant Links:
---

[Welcome to the Unit](Attachments/Data%20Communications%20w01a%20-%20Welcome%20and%20Unit%20Logistics.pdf)
[Introduction](Attachments/Data%20Communications%20w01b%20-%20Introduction.pdf)
[Local Area Networks](Attachments/Data%20Communications%20w01c%20-%20Local%20Area%20Networks.pdf)

# Processes

- Applications are made up from one or more processes
- Processes are independent
	- Run separately
	- Progress at different rates
- Messages are used to **synchronize** between processes as well as exchange information

## Sending Messages
**To send a message we need three things.**
- The contents of the message
- The identity of the recipient
- How to get the message from sender to recipient

**What could go wrong?**
- Message is lost
- Message is delayed - Causing out-of-order delivery
- Message is corrupted
- Message is duplicated

# Networks

**Basic principles and concepts**
- Entities - etc sender/recipient
- Connections between entities - routes
- Transporting
	- Messages - high level "lets get coffee"
	- Bits - low level

***Abstractly - Networks are comprised of three things***
- **Nodes** - Each Computer system in a network
	- Some nodes are endpoints - termination points of communication (recipients)
	- Others are intermediary systems - forwarding traffic between links
- **Link** - Connects one node to an adjacent node, with no intervening nodes
- **Path** (Route) - A group of links that allow a message to move from its point of origin to its destination

## Network Classifications
***How they operate***
1. **Circuit Switched**
- Point-to-point - exclusive pathway between two end points
- Creation and termination
-  Simultaneous conversations can occur but only between strictly separate pairs of endpoints
- Example: Telephone network
1. **Packet Switched**
- Multiple paths
- Packets of varying size are passed between multiple pairs of end-points over a shared network
- No setup
- Shared
- Example: Data Networks

***The geographic area they cover***
1. **Local Area Networks (LAN)**
- Nodes are near to eachother
- Generally a single building
- More commonly a single floor of a building

1. **Metropolitan Area Networks**
- Connects networks across a single metro area
- Normally operated by a comms provider

1. **Backbone Networks**
- Connects LANs or other networks together
- Normally constrained to one organisation

1. **Wide Area Networks (WAN)**
- Connects networks together at large scale
- Scales from between cities to between continents

***The "shape" of the network - its  topology***
![](Attachments/topological_classifications.png)

## Network Layouts - Logical VS Physical Representations

**Example of a physical layout - Train network**
![](Attachments/Pasted%20image%2020250226201508.png)
- Good for identifying physical locations
- Not easy to determine which stations interact
- How it looks
- How does it "plug together"


**Example of a logical/abstract layout - The same Train Network**
![](Attachments/Pasted%20image%2020250226201619.png)
- Not to scale with the real world
- Easier to track individual train lines and which lines interact
- How it operates
- Algorithmic

## "Packetisation"
Packets consist of 2 things:
1. A header which contains Metadata
2. A Payload or Body which contains data.

### Metadata - Data about Data
Metadata examples about packets
- What is the destination?
- What time was it sent?
- Who sent it?

# Protocols and Standards


## Protocols
**Communication protocols - Human VS Network Protocol**

![](Attachments/Pasted%20image%2020250226203121.png)

**How do they work?**
At the sending computer, the protocol:
- Breaks data into packets, that the protocol can handle
- Adds addressing information to the packets so that the destination computer on the network knows the data is meant for it
- Prepares the data for actual transmission through the network adapter card and onto the network cable

**How many protocol are there?**
- Communicating computers need to send a lot of information to
each other, for example:
	- are you still there?
	- this message is to be sent to X
	- the last message was in error
	- the number of bits in this message is N
• we could use a single protocol to carry all the necessary information
• not a good idea - the implementation would be large and difficult to maintain

### Protocol  Layers
We break the roles and responsibilities into layers
- Sending data from one node to the next along a single link is a different problem than sending data from one building to another, which is a different problem to sending data to the other side of the world
- Good engineering practice, take a large complicated problem and break it into smaller problems which can be more easily solved.
- Different protocols solve different problems

**These layers form a "protocol stack"**
- A protocol stack is a combination of protocols arranged in layers
- Each layer specifies different protocols for handling a function or subsystem of the communication process
- Each layer has its own set of rules
- Standard Protocol Stack - Examples
	- **OSI Model** - Open Systems Interconnection Reference
![](Attachments/Pasted%20image%2020250226204120.png)
	- Internet (TCP/IP) Protocol Stack

![](Attachments/Pasted%20image%2020250226205338.png)

### Protocol Headers
**Each layer adds its own header**
- Data in each header layer is only for corresponding layer at the reciever
- Other layers may not (in general) touch this information - **encapsulation**

**Nesting packet headers**
- The application layer contains the actual message generated by the application (or user)
- Each lower layer wraps the message with its own header (metadata)
*Envelope inside an envelope inside an... *
![](Attachments/Pasted%20image%2020250226205547.png)

**What are the headers?**
![](Attachments/Pasted%20image%2020250226210152.png)


## Standards
- A protocol is embodied in a standard
- A standard specifies a protocol
- A standard can describe one protocol in one layer, or an entire stack

**Who sets the standards?**
- The lowest layers in a protocol stack are generally defined by IEEE (Internation Association of Electronic Engineering (???))
- Middle layers of the TCP/IP stack are defined bu the IETF
- The upper layers may or may not be standardized.
	- Example: Protocols that operate the web are defined by the W3C

## Headers and Addressing

**Addressing in different layers**
- We need to address in different layers

Application layer example - HTTP domain
![](Attachments/Pasted%20image%2020250226212108.png)

### Addressing on the Internet
- Every computer needs a unique address
- Using the Internet this is called an IP address
	- IP = Internet Protocol
	- IP is the network layer protocol for the internet, responsible for addressing and delivery of messages

#### IPv4 Addresses
- 32 bit (4 byte) addresses
- Stored in binary but written in decimal for human convenience
- A byte can range from 0-255
- Each byte in an IP address written separately using 'dotted decimal' notation
	- Example: 127.97.201.4
	- Maximum approx 4.3 billion different IPv4 addresses

