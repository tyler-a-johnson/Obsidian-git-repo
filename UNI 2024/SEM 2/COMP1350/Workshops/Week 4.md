---
date: 2024-08-13
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---

# Case Study
**This week we have another case study. You have been provided with a partially completed ER diagram. Read through the business rules to complete the diagram and transform it into a logical model.**   

El Gato runs a business that produces artisan gelato. He is particularly famous for the exquisite flavours he can produce using organic berries as a base. His recipes have been a trade secret for generations and all chefs he hires are sworn to secrecy.  

You have been hired by El Gato to design the database for his business. The business rules are as follows: 

- Customers need to register with the business to make orders. They are required to provide their name and phone number. 
    

- El Gato explores various locations to find berries that grow in the wild. Locations are uniquely identified. The coordinates of a location are stored. 
    

- For each location, El Gato keeps track of several trees that berries grow on. Tree numbers are repeated for each location. Their age and height are stored.   
    

- Berries are uniquely identified by their types. The name of a berry and its rarity are recorded. A tree can only produce one type of berry. A single type of berry could be found on multiple trees across the various locations (Tip: remember trees can grow old and die). 
    

- Each flavour sold by the business has its name and flavour notes stored. Only one type of berry is used as a base for each flavour. Each stocked flavour uses a different berry.  
    

- Chefs are uniquely identified. Their names, years of experience and salary are stored. 
    

- Customers can also mix multiple flavours together for a custom order. An order will record the customer details, the selected flavours and the chef responsible for producing the gelato. Further details that are stored are the date, time, cost and whether it is an express order. The weight of each gelato flavour used in the mix must be recorded. 
    

- All the secret techniques used to produce gelato are stored within the database. Each technique has a name and a difficulty level recorded. Some techniques are pre-requisites of other techniques. A technique may have multiple pre-requisites. A technique may be a pre-requisite for different techniques.
    

- A chef could be trained in multiple techniques depending on their years of experience; meaning they have already learnt the technique. A technique that a chef is trained in, will also record a mastery level. 
    

- Chefs also have the opportunity to study new techniques as their career progresses; as in they are currently learning. However, they may only study one technique at a time.
    

**1. Using the partially completed ERD below, complete the ERD for the business rules above.**
![](Attachments/Week%204_Q1V2PartialDiagram.jpeg)
