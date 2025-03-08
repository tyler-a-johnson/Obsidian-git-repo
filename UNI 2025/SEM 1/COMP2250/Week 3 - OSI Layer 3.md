---
date: 2025-03-05
tags: 
status: Incomplete
Relevant Questions: []
Relevant Notes: 
Relevant Links:
---
[OSI Layer 3](Attachments/Data%20Communications%20w02%20-%20OSI%20Layer%203.pdf)

![](Attachments/Pasted%20image%2020250305234148.png)

# TCP/IP 5-Layer Model
![](Attachments/Pasted%20image%2020250306004343.png)

## TCP/IP Protocol Family
**TCP/IP Network Layer**
- ARP, RARP, DHCP, BOOTP, IP, ICMP
- IP Routing (eg. RIP, OSPF)
- IP Multicasting: IGMP, DVMRP
- IP Error Messages: ICMP

**TCP/IP Transport Layer**
- TCP and UDP

# The Network Layer
***Two major and related functions***

**Routing**
- Routing is a distributed application that runs on multiple routers
	- Actually a layer 5 activity
	- It effects the way routers forward traffic
- Collects network topology into routing tables

**Forwarding**
- Forwarding is the process of handling incoming packets
	- Layer 3 activity
	- Forwards packets to next hop (node)
- **Network Layer:** Concerned with end-to-end delivery
- **Data-Link Layer:** Concerned with each hop (link)

## Network Devices
**Host**
- An end system
	- Traffic either starts or finishes at a host (mostly)

**Router**
- An intermediate system
	- Passes messages to another network

## The Internet Protocol
***RFC 791***

**IP Provides**
- Universal addressing
	- IP addresses and only IP addresses used everywhere
- Routing of packets between hosts

**IP Delivers**
- Packets from source host to destination host
- End-to-endm not link-to-link

***IP IS AN UNRELIABLE CONNECTION-LESS PACKET DELIVERY SERVICE***

### What do you mean unreliable!?
- Delivery is not guaranteed
- Makes a best effort attempt to deliver packet.
- Along the way the packet might get:
	- Lost
	- Corrupted
	- Delayed
	- Duplicated
- Acknowledgment not required when data is recieved.
- Sender/receiver not informed when a packet is lost
- Acknowledgement of packets is responsibility of higher layer transport protocol such as TCP.

***Why would we want it to be unreliable?***

**Reliability is costly**
- Real time traffic (video, audio)
- Some packet loss is tolerable
- If packet is lost or corrupted, trying to recover can make things worse

**Sometimes reliability is necessary**
- Files must be delivered without corruption
- Delegate this problem to the transport layer
	- Separation of concerns

### Connection-less?
**Order is unimportant to IP**
- Every packet is treated as a separate message
- No ordering relationship between consecutive packets
- Packets are just transmitted individually
- If order is important this becomes the transport layer's responsibility

## Failure Model
Packets can be:
- Lost
- Corrupted
- Delayed - Out of sequence delivery
- Duplicated

**Simple failure model**
- Treat all errors as packet loss

## Network Layer Functions
**Addressing (Static)**
- Internet address
- Assignment of addresses
- Address resolution

**Routing (Static and Dynamic)**
- Routing protocols
- Information gathering about network topology

**Forwarding (Dynamic)**
- Process of deciding what path a packet must take to reach destination

# Addressing at the Network Layer

**Who manages these addresses?**

Managed by ICANN
- Internet Corporation for Assigned Names and Numbers
- Manages the assignment of both IP addresses and domain names
	- Both assigned at the same time and in groups
	- Manages some domains directly (.com, .org, .net) and
	- Authorizes private companies to become domain name registrars as well

**Subnet- How do you get one?**
- You go to your ISP
- ISP has a large network - it assigns you a free subnet
- Your ISP got its subnet from a larger ISP
- The large ISP got its subnet from a larger ISP
- The large ISP got its subnet from a regional address registry
- Regional address registries authorised by ICANN

**Address  Allocation (Static)**
- Human admin assigns all adresses
- Host assigns itself an address
	- Link local address space
		- IPv4 169.254.0.0/16
		- IPv6 FE80::/10
- DHCP
- Global Internet Address (from ICANN via ISP)

**Dynamic Addressing - Can change over time**
- Addresses automatically assigned to clients only when they are connected to the network
- Eliminates permanently assigning addresses to clients
- When the computer is moved to another location, its new IP address is assigned automatically
- Provided by the [[Dynamic Host Control Protocol (DHCP)]]

# IP Addresses
**Globally unique address**
- IP Implements a single addressing scheme over all underlying networks
- ***There are two versions of IP***
	- Each with their own addressing scheme (IPv4 and IPv6)
	- This is a **big problem**
- The idea of a universal address is an important one:
	- All nodes are inside the network, none are outside
	- Hence everything is reachable

**Addresses identify where a node is on the network**
- Each address is comprised of two parts
	- **Network ID** - identifies systems that are located on the same network
		- All devices on the same network must have the same network ID
		- The network ID must be unique to the internet
	- **Host ID** - identifies a device within a network
		- The host ID must be unique within the network ID

## IPv4 Addresses
**IPv4 Addresses are a 32-bit number**
- In classful addressing, for humans, it's easy, you just have to know which bytes belong to which part
- For routers its almost as easy
- Routers need to know which of the 32 bits of the address are the network ID
- Routers use a mask to find the network part

**IP Addresses not just assigned at random**
- As we already know - machines in the same network have part of their address the same (network ID)
- The **leading part is shared**
- Not all networks are the same size, so the amount shared depends on the size of the networks

**Network VS Host Bits?**
How do we know which is the network part and which is the host part?
- We split the IPv4 address space depending on the size of network
- The different sizes are called classes

## Classless Addressing
Classful addressing is not flexible or efficient

**Classless** addressing
- Boundary between network ID and host ID can be anywhere

## Special Addresses
![](Attachments/Pasted%20image%2020250306164534.png)

## IPv4 Classful Addressing
![](Attachments/Pasted%20image%2020250306164606.png)

# Numeric Addressing

## Binary Arithmetic
*Base 2 - 0 1*

Start with an arbitrary number 1011:
$$1101 = 1*8 + 0*4 + 1*2 + 1*1$$
- Each digit has a weight and position
- Weights are 0-1
- Positions are powers of 2
$$1101 = (1*2^{3}) + (0*2^{2}) + (1*2^{1})+(1*2^{0})$$
If we increment a digit:
- If that digit is a 1 then it wraps around to 0
- The next digit to the left increases by 1
Adding leading zeros does nothing to the value of the number

## Hexadecimal Arithmetic
*Base 16 - 0 1 2 3 4 5 6 7 8 9 a b c d e f*

Start with an arbitrary number: 506
$$506 = 1fa$$

- Each digit has a weight and a position
- Weights are 0-15 (10-15 use letters a-f)
$$ 1fa = (1*256) + (15*16) + (10*1)$$
- Positions are powers of 16
$$1fa = (1*16^{2}) + (15*16^{1}) + (10*16^{0})$$
If we increment any digits:
- If that digit is F it wraps around to 0
- Next digit to the left increases by 1
Adding leading zeroes doesn't change the value.


## Converting between base 2 - 10 - 16
![](Attachments/Pasted%20image%2020250306210257.png)

**Binary to Decimal**
Expand then add:
$$1101_{2} = (1*8) + (0*4) + (1*2) + (1*1)$$
$$1101_{2} = 8 + 0 + 2 + 1 = 11_{10}$$

**Hexadecimal to Decimal**
$$1fa_{16} = (1*256) + (15*16) + (10*1)$$
$$1fa_{16} = 256 + 240 + 10$$
$$1fa_{16} = 506_{10}$$


![](Attachments/Pasted%20image%2020250306215523.png)


## Converting from Decimal

**Decimal to Binary**
To convert a decimal number n to binary
1. Divide n by 2
2. Record the remainder (either 0 or 1)
3. If the dividend is not zero, divide it by 2
4. Add the remainder to the **front**
5. If the dividend is not zero go to step 3
6. Else finished.

# Working with Addresses

| Layer       |              Address Kind               | Computer Representation           | Human Representation                   | Example                                                    |
| ----------- | :-------------------------------------: | --------------------------------- | -------------------------------------- | ---------------------------------------------------------- |
| Application |  Application dependent <br>HTTP - URLs  | String                            | String                                 | http://www.mq.edu.au/                                      |
| Transport   |     Port - destination application      | 16 bit field                      | Number 0 - 65,535                      | 24                                                         |
| Network     |      IP Address, <br>IPv4 <br>IPv6      | <br>32 bit field<br>128 bit field | <br>4 Decimals 0-255<br>8x4 Hex Digits | <br>134.57.33.2<br>4534:4EF3:4AFD:A43F:4567:E34F:236B:453F |
| Data Link   |         MAC Address (Ethernet)          | 48 Bit Field (6 bits)             | 6x2 hex digits                         | AE:56:23:F4:65:D3                                          |
| Physical    | Bits put in one end come out the other! | N/A                               | N/A                                    | Bits are broadcast on link, i.e.., flood                   |

## Ethernet Address - Layer 2
**Addressing system for layer-2**
- Used on the local network as part of media access 
	- Also know as a MAC address, or sometimes as a hardware address
- Ethernet addresses are 48-bits in size and are written in hexadecimal
	- Normally each octet is separated by a colon, B6:CD:35:3B:C7:6F
	- However it may be a dash instead, B6-CD-35-3B-C7-6F
- The case of the digits doesn’t matter, b6:cd:35:3b:c7:6f is also valid
- And, sometimes they may be group as 3 sets of 16 bits, b6cd-353b-c76f

## IP Addresses
**Network Layer - Layer 3**
- Which is the network part of the IP address
- Which is the host part of the IP address?

### IPv4 Classful Addressing
![](Attachments/Pasted%20image%2020250306223628.png)
![](Attachments/Pasted%20image%2020250306223155.png)


### Classless Addressing
**Classful Addressing**
- Not flexible
- Not efficient

**Classless addressing**
- Boundary between Network ID and Host ID can be anywhere
- We will explore this idea through the mechanism of subnetting


## Network Masks
**Another field to say which bits are network**

00010111001010000100100100010011
Convert the above IP from binary to Decimal Octets. 23.40.73.19

Let’s say the network address is the first 8 bits… then we’d need to specify a network mask

Written in binary 
IP address: 00010111001010000100100100010011 
 Net Mask: 11111111000000000000000000000000 
 Network  : 00010111000000000000000000000000

If its the first 11 Bits:
IP address: 00010111001010000100100100010011 
 Net Mask: 11111111111000000000000000000000 
 Network  : 00010111001000000000000000000000

Et Cetera

We are using the Logical AND operation

|         | Network ID | Host ID | Netmask Binary                      | Netmask Dotte d-decimal |
| ------- | ---------- | ------- | ----------------------------------- | ----------------------- |
| Class A | 8 bits     | 24 bits | 11111111 00000000 00000000 00000000 | 255.0.0.0               |
| Class B | 16 bits    | 16 bits | 11111111 11111111 00000000 00000000 | 255.255.0.0             |
| Class C | 24 bits    | 8 bits  | 11111111 11111111 11111111 00000000 | 255.255.255.0           |

## All-zeros and all-ones addresses

| Layer 2                    | Function                                                                     |
| -------------------------- | ---------------------------------------------------------------------------- |
| All 0s (00:00:00:00:00:00) | Unused (OUI 00:00:00 belongs to xerox, so technically valid)                 |
| All 1s (ff:ff:ff:ff:ff:ff) | Broadcast (All stations address, send to every node in the broadcast domain) |

| Layer 3                                  | Function                                                                    |
| ---------------------------------------- | --------------------------------------------------------------------------- |
| All 0’s (0.0.0.0)                        | Startup Source Address                                                      |
| All 1’s (255.255.255.255)                | Limited Broadcast                                                           |
| network id all 0’s (eg 137.111.0.0)      | Network Address                                                             |
| network id .all 1’s (eg 137.111.255.255) | Directed Broadcast to network (eg. All nodes on the 137.111.0.0/16 network) |

**Special Addresses**

| Special Address Range         | Function                              |
| ----------------------------- | ------------------------------------- |
| 127.0.0.0/8                   | Loopback                              |
| 224.0.0.0-<br>239.255.255.255 | Multiclass (Class D)                  |
| 10.0.0.0/8                    | RFC1918 NAT Private Network (Class A) |
| 172.16.0.0/12                 | RFC1918 NAT Private Network (Class B) |
| 192.168.0.0/16                | RFC1918 NAT Private Network (Class C) |
| 169.254.0.0/16                | Link-local addresses                  |

# Subnetting

**Example: We want to subnet the class C network 197.15.22.0**
- Class C network, 24 bits of network ID and 8 bits of Host
- $2^{8}$ (256) possible addresses on the network
- So, we have addresses from 197.15.22.0 through 197.15.22.255
- Addresses outside this range are not ours
- The subnetting process does not change the total number of addresses
- Subnetting divides the address space into multiple smaller networks
- So after subnetting, we should have 4 networks with 64 addresses each.

**Subnetting is changing the netmask**
- Performing a bitwise logical AND of the address and network mask provides the Network ID.
- If we change the netmask, then we also change which part of the addresses identifies which network we are dealing with.\
- Subnetting is just changing the netmask appropriately.

00010111001010000100100100010011 
Convert the above IP from binary to Decimal Octets: 23.40.73.19

Let’s say the network address is the first 11 bits… then we’d need to specify a network mask.
IP address:       00010111 00101000 01001001 00010011 
Net Mask:         ***11111111 111***00000 00000000 00000000 
Network Part:   00010111001000000000000000000000

Let’s say the network address is the first 11 bits… let’s split it in 4… We’ll need 2 extra bits to “extend” the mask
Written in binary 
IP address:      00010111 00101000 01001001 00010011 
Net Mask:        ***11111111 111*****00**000 00000000 00000000 
Network Part:  00010111 00100000 00000000 00000000

Let’s say the network address is the first 11 bits… let’s split it in 8? We’ll need 3 extra bits to “extend” the mask

IP address:      00010111 00101000 01001001 00010011 
Net Mask:        ***11111111 111*****000**00 00000000 00000000 
Network Part: 00010111 00100000 00000000 00000000


## Example
**We want to subnet the class  C network 197.15.22.0**
We currently have one Network ID and one Directed Broadcast Address

|                   | First Octet | Second Octet | Third Octet | Fourth Octet |
| ----------------- | ----------- | ------------ | ----------- | ------------ |
| Network Address   | 11000101    | 00001111     | 00010110    | 00000000     |
| Broadcast Address | 11000101    | 00001111     | 00010110    | 11111111     |
| Netmask           | 11111111    | 11111111     | 11111111    | 00000000     |
In order to have four networks in the same space where there is currently one, we need to change the netmask to give four Network IDs.

We want to change the fourth octet for this example
How many bits do we need to give us four IDs?
$4 = 2^{2}$ so we need 2 bits:

Fourth Octet Netmask:
 00000000 ---> 11000000

This changes the NetID:HostID bit ratio from 24:8 to 26:6 
This means that each subnet will have $2^6$ = 64 hosts.

![](Attachments/Pasted%20image%2020250307001612.png)

![](Attachments/Pasted%20image%2020250307001734.png)

- Every network has a network address and a broadcast address
- Maximum hosts is $2^{n}-2$ where n is the number of bits for the HostID
- Thus there are a maximum of 62 hosts per subnet

**Subnet mask**
![](Attachments/Pasted%20image%2020250307001920.png)


**Useful netmask values**
![](Attachments/Pasted%20image%2020250307001949.png)
There are only 9 possible legal values shown above for each octet in a network mask.

