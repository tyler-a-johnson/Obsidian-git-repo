---
date: 2024-10-14
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
# Database Application Development

**Database Applications:** Software to facilitate data collection, storage, management, and retrieval.
- *Data collection:* Gathering data from other sources, such as user input, sensor data, etc.
- *Data storage:* processing data into necessary structure for storage
- *Data managment:* More sophisticated authorisation and security features.
- *Data retrieval:* Providing a user friendly interface.


# Database in Client-Server Architecture Models
In a networked system environment, databases are part of the client-server architecture, which could be multi-tier, where the tasks are distributed amongst the components involved within the system environment.
Terminologies:  
- **Client**: requests and uses a service
- **Server**: provides a service  
    Note: a server would act as a client when requesting service from another server.
- **Front-end functions**: functions to interact with the end-users
- **Back-end functions**: functions to interact with the servers
![1000](Attachments/Pasted%20image%2020241028203550.png)
Common system tasks:  

- **Presentation Logic**  
    Handles the input and output, such as getting inputs from keyboard and mouse, displaying the outputs on screen, and rendering the graphical user interface.
- **Processing Logic**  
    Handles the processing of input and output, ensuring that the business rules are followed, and managing the data.
- **Storage Logic**  
    Handles the storage and retrieval of data.
![](Attachments/Pasted%20image%2020241028203753.png)


| Variant of Model | Role   | Presentation Logic | Processing Logic | Storage Logic |
| ---------------- | ------ | ------------------ | ---------------- | ------------- |
| Fat/Thick Client | Server |                    |                  | ✔             |
|                  | Client | ✔                  | ✔                |               |
| ==============   | ====== | ================   | ===============  | ============  |
| Thin Client      | Server |                    | ✔                | ✔             |
|                  | Client | ✔                  |                  |               |
| ==============   | ====== | ================   | ===============  | ============  |
| Distributed      | Server |                    | ✔                | ✔             |
|                  | Client | ✔                  | ✔                |               |

In a two-tier architecture, all back-end applications reside in one server.  
  
**The advantages and disadvantages of two-tier architecture:** 
- Advantages
    - Easy to Maintain
    - Simpler modification
    - Faster Communication
- Disadvantages
    - Performance degraded as more users added
    - Cost in-effective

## Three-Tier and N-Tier Architecture Model
Processing logic will be at a separate server (three-tier), or distributed amongst multiple servers (n-tier) to share the processing tasks.

**Example of a three-tier architecture:**
![1000](Attachments/Pasted%20image%2020241028204630.png)

**Example of a four-tier architecture:** 
- Database server – hosts the DBMS  
    e.g., Oracle, SQL Server, Informix, MS Access, MySql
- Application server – software building blocks for creating dynamic web sites  
    e.g., MS ASP .NET framework, Java EE, ColdFusion, PHP
- Web server – receives and responds to browser requests using HTTP protocol  
    e.g., Apache, Internet Information Services (IIS)
- Web browser – client program that sends web requests and receives web pages  
    e.g., Internet Explorer, Firefox, Safari, Google Chrome


**The advantages and disadvantages of three-tier and n-tier architecture:**  
- Advantages
    - Scalability
    - Technological flexibility
    - Long-term cost reduction
    - Better match of systems to business needs
    - Improved customer service
    - Reduced risk
    - High Performance as the load is reduced
    - Improved security
    - Good Performance
    - Easy to maintain
- Disadvantages  
    - Increased complexity
    - Increased effort


Useful technologies used to interact with databases  
- **Middleware**
    - Software that lies between an operating system and the applications running on it.
    - Hidden translation layer
    - Enables communication and data management for distributed systems  
        e.g. data management, application services, messaging, authentication
- **API** (Application Programming Interface)
    - The application then interprets that data and presents you with the information you want in a readable way.


# Sustainability (Green IS and IT)
*Green IT is the consideration of the environmental impact of the development and the usage of IT components (hardware, software, and data). Examples:*
- Designing energy-efficient chips and disk drives
- Replacing personal computers with energy-efficient thin clients
- Use of virtualization software to run multiple operating systems on one server
- Reducing the energy consumption of data centres
- Using renewable energy sources to power data centres
- Reducing electronic waste from obsolete computing equipment

*Green IS includes Green IT but takes more holistic consideration from various components integration to ensure sustainable business processes. Examples:*
- Advanced wind turbines are being transformed with various forms of sensors and controllers that enable the turbines to operate efficiently and safely in various wind speeds and weather conditions.
- Smart buildings use various sensors to adjust the surroundings from a distance such as temperature controls.
- Smart meters allow users to make changes to the use of energy at various times.
- Having a smart car can improve air emissions, and reduce the time and energy wasted in traffic jams.

# Data Ethics
As IT professionals, we are bound by the Australian Computer Society Code of Professional Ethics, where honesty, trustworthiness, and respect are the pillars.  

**When dealing with data, we should follow these moral guidelines:** 
- Consent: Organisations should seek permission to collect an individual's personal data.  
- Fairness: Data shouldn't be used in ways that perpetuate biases or lead to harm orг discrimination.  
- Intention: Data use should serve society and shouldn't disadvantage the individual.  
- Integrity: Data use should be accurate and high quality, and not misrepresent facts or lead to unethical decisions.  
- Stewardship: Data collection and management should be done in a protected and secure environment.  

Resources:
- Data ethics: Examples, principles and uses ([https://studyonline.unsw.edu.au/blog/data-ethics-overview](https://studyonline.unsw.edu.au/blog/data-ethics-overview))
- ACS Ethics and Discipline ([https://www.acs.org.au/memberships/professional-ethics-conduct-and-complaints.html](https://www.acs.org.au/memberships/professional-ethics-conduct-and-complaints.html))