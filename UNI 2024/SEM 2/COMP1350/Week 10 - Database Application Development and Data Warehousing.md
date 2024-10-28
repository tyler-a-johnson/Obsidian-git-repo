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

|                        |                      |                   |     |     |
| ---------------------- | -------------------- | ----------------- | --- | --- |
| **Variant of Model**   | **Role**             | **Task**          |     |     |
| **Presentation Logic** | **Processing Logic** | **Storage Logic** |     |     |
| Fat/Thick Client       | Server               |                   |     | ✔   |
| Client                 | ✔                    | ✔                 |     |     |
| Thin Client            | Server               |                   | ✔   | ✔   |
| Client                 | ✔                    |                   |     |     |
| Distributed            | Server               |                   | ✔   | ✔   |
| Client                 | ✔                    | ✔                 |     |     |

