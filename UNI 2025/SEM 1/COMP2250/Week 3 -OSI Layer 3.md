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


**Dynamic Addressing - Can change over time**
- Addresses automatically assigned to clients only when they are connected to the network
- Eliminates permanently assigning addresses to clients
- When the computer is moved to another location, its new IP address is assigned automatically
- Provided by the [[Dynamic Host Control Protocol (DHCP)]]

(Slide 20)