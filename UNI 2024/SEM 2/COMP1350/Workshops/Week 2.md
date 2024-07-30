---
date: 2024-07-30
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
**Case Study:**  

Samson Simpson is the head of a vigilante organisation that aims to undercut the major supermarket chains. They specialise in growing fruit in underground greenhouse setups and selling it to the people at affordable prices. Samson was paranoid of being caught by the authorities and up until now has kept all records on paper. However, his office is now filling up with paper records and he has reluctantly decided to use MySQL Workbench to store his data on a local server.  

Samson reaches out to you, requesting help to design the database. He provides you with the following business rules: 

- Farmers are identified using a unique FarmerID. Their name, length of their contract and any certifications they have are stored. 
- Greenhouses have a unique identification number that is stored along with their location and size. 
- All greenhouses are divided into sections with 5 sections being the maximum. Sections are uniquely identified based on the Greenhouses they belong to. Each section will also record the number of rows and harvest month. 
- Farmers that are Greenhouse Managers need to oversee the entire greenhouse. They will have a registered electric scooter. Each scooter has a unique rego number. The model of the scooter and the last time it was serviced are recorded. 
- All fruit grown by Samson’s team are given a unique ID. The name of the fruit, its average yield per plant (kgs), the current market price and the size of an adult plant are all stored. 
- Different fertilisers need to be used depending on the fruit grown. Fertilisers are uniquely identified and stored with their name, description and cost. 
- Only one fertiliser is used per plant. Some fruits are closely related and can therefore be fertilised using the same fertiliser. 
- Fruits that are closely related can be grown in the same sections. The section a type of fruit is grown in may vary across different greenhouses. For example, citrus fruits may be grown in Greenhouse 1 Section A and Greenhouse 2 Section B. A fruit that is recorded in the database will be grown in at least 1 section.
- Farmers are given **one** of  3 different roles depending on their experience: 
    - Greenhouse Managers will oversee an entire greenhouse. Each greenhouse will only have 1 manager. A Manager will only oversee 1 Greenhouse.
        
    - Section Carers oversee the section they are assigned to. They are responsible for pest control, fertilising and watering. Sections with a higher number of rows will have multiple carers. 
        
    - Harvesters are only hired during the month that a particular section is ready for harvesting. They will be contracted to harvest in 1 section only for the duration of their employment. There can be multiple harvesters per section.  
        
- Section Carers and Harvesters are both managed by the Greenhouse Manager of the greenhouse.

**Question 1**

a) Identify the entities in the business rules above.

b) What type of entity is the greenhouse section? Explain your answer.

**Question 2**

a) Fill in the attributes for the Farmer and Greenhouse Section entities. Identifiers should be labelled appropriately.

b) Are there any multi-valued attributes? How are these denoted?

**Question 3**

** **Cardinalities** and **constraints** should be labelled for all diagrams **

a) Derive the relationship between farmer and greenhouse.

b) Derive the relationship between greenhouse and greenhouse section. Is this a strong or weak relationship?

c) Derive the relationship between greenhouse section and fruit.

d) Fill in the remaining relationships that you have identified in the business rules.


**Question 1**

*a) Identify the entities in the business rules above.*
- Farmers - Strong
	- Greenhouse manager - associative
		- Scooters - Strong
		- Section carer - Weak
		- Harvesters - Weak
- Fruit - Strong
	- Fertilizers - Associative
- Greenhouses - Strong
	- Greenhouse sections - Associative 

*b) What type of entity is the greenhouse section? Explain your answer.*
Greenhouse Sections are associative, as they have their own unique ID but depend on the greenhouse they are in for their identification. The entity also participates in relationships other than just with the greenhouse.

**Question 2**

*a) Fill in the attributes for the Farmer and Greenhouse Section entities. Identifiers should be labelled appropriately.*

Farmers
- FarmerID - Required, Simple, Single Valued, Stored - **Identifier**
- Name - Required, Simple, Single Valued, Stored
- Length of Contract - Required, Simple, Single Valued, Stored
- Certifications - Optional, Simple, Multivalued, Stored

Greenhouse Section
- SectionID - **Identifier**
- NumRows
- HarvestMonth


*b) Are there any multi-valued attributes? How are these denoted?*

Farmer certifications can be multi valued, as

**Question 3**

** **Cardinalities** and **constraints** should be labelled for all diagrams **

*a) Derive the relationship between farmer and greenhouse.*

*b) Derive the relationship between greenhouse and greenhouse section. Is this a strong or weak relationship?*

*c) Derive the relationship between greenhouse section and fruit.*

*d) Fill in the remaining relationships that you have identified in the business rules.*