---
date: 2024-10-28
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
# Data Warehouse
- Central repository of data
- Assists facilitated informed and insightful decisions at an enterprise level

| Feature           | Database                                     | Data Warehouse                                             |
| ----------------- | -------------------------------------------- | ---------------------------------------------------------- |
| Purpose           | Supports daily business operations           | Used for analysis and decision-making                      |
| Data Type         | Current, real-time data                      | Historical, summarised data                                |
| Update Frequency  | Continuously updated                         | Updated periodically (e.g., daily, weekly,<br>monthly)     |
| Performance Focus | Optimised for fast read/write<br>operations  | Optimized for complex queries and data<br>analysis         |
| Data Structure    | Detailed, highly normalised (many<br>tables) | Denormalised (fewer, larger tables for<br>faster querying) |
| Users             | Frontline staff, operational teams           | Business analysts, managers, decision-<br>makers           |
| Example Use       | Tracking real-time sales or inventory        | Analysing sales trends over the past year                  |
| Data Volume       | Typically smaller volumes of data            | Handles large volumes of data                              |
***Sources of Data Warehouse***
- Databases
- External Data
- Logs and Event Data
- Flat Files
- AP Integration
- Cloud Services

## Data Mart
- Data warehouse that is limited in scope
- Is a subset of a data warehouse
- The goal of a data mart is to provide those users with fast access to the data that is most relevant.
- Curated for a specific part of the organisation

## Star Schema
***Objectives***
- Ease of use for decision support applications
- Fast response to predefined user queries
- Customized data for particular target audiences
- Ad-hoc query support
- Data mining capabilities

***Characteristics***
- Detailed (mostly periodic) data
- Aggregate (for summary)
- Distributed (to departmental servers)

Most common data model = dimensional model (usually implemented
as a star schema)
![](Attachments/Pasted%20image%2020241028223649.png)

![](Attachments/Pasted%20image%2020241028224053.png)

## Factless fact table?
![](Attachments/Pasted%20image%2020241028224211.png)

# Data Quality
*Characteristics of good data quality*
- Completeness
- Accuracy
- Consistency
- Validity
- Uniqueness of records
- Relevance

*What causes poor data quality*
- External data sources - lack of control over data quality
- Redundant data storage and inconsistent metadata
- Poor data entry controls
- Lack of organizational commitment - not recognizing poor data quality as an organizational issue.

## Techniques
- ***Consolidation (ETL)*** - Consolidating all data into a centralized database (like a data warehouse)
- ***Data federation (EII)*** - Provides a virtual view of data without actually creating a centralized database,
- ***Data propagation (EAI and EDR)*** - Duplicate data across databases with near real-time delay

## Data VS Database Administration
***Data Administration*** - A high-level function that is responsible for the overall management of data resources in an organization, including maintaining corporate - wide definitions and standards
***Database Administration*** - A technical function that is responsible for physical database design and for dealing with technical issues such as security enforcement, database performance, and backup and recovery.

| Data Functions                                                                                                                                                                 | Database Functions                                                                                                                                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| • Data policies, procedures, standards<br>• Planning<br>• Data conflict (ownership) resolution<br>• Managing the information repository<br>• Internal marketing of DA concepts | • Analyzing and designing databases<br>• Selecting DBMS and software tools<br>• Installing/upgrading DBMS<br>• Tuning database performance<br>• Improving query processing performance<br>• Managing data security, privacy, and integrity<br>• Data backup and recovery |

# Data Security
***Accidental losses attributable to:***
- Human error
- Software failure
- Hardware failure
***Other losses***
- Theft and fraud
- Loss of privacy or confidentiality
- Loss of data integrity
- Loss of availability (e.g., through sabotage)

## Implementing Authorizations Rules
![](Attachments/Pasted%20image%2020241028231345.png)

## Encryption
Basic 2 key encryption
![](Attachments/Pasted%20image%2020241028232429.png)


## Authentication
*Is the process of determining whether someone or something is, in fact, who or what it says it is.*

Passwords: First line of defense
• Should be at least 8 characters long
• Should combine alphabetic and numeric data
• Should not be complete words or personal information
• Should be changed frequently

Passwords are flawed!
― Two factor–e.g., smart card plus PIN
― Three factor–e.g., smart card, biometric, PIN

## Database Recovery
Methods for restoring a database quickly after loss or damage
![](Attachments/Pasted%20image%2020241028233447.png)

### Journalizing Facilities
Audit trail of transactions and database updates
- Transaction log–record of essential data for each transaction processed against the database
- Database change log–images of updated data
- Before-image–copy before modification
- After-image–copy after modification
![](Attachments/Pasted%20image%2020241028234048.png)

### Checkpoint Facilities
- DBMS periodically refuses to accept new transactions
	- system is in a quiet state
- Database and transaction logs are synchronized
- This allows recovery manager to resume processing from short period, instead of repeating entire day

### Recovery and Restart  Procedures
![](Attachments/Pasted%20image%2020241028234307.png)

# Big Data
Data that exist in very large volumes and many different varieties (data types) and that need to be processed at a very high velocity (speed).

Analytics is a Systematic analysis and interpretation of data— typically using mathematical, statistical, and computational tools—to improve our understanding of a real- world domain

***Characteristics of Big Data*** *Note: What the fuck do half these mean*
- Volume
- Variety
- Velocity
- Veracity
- Value

