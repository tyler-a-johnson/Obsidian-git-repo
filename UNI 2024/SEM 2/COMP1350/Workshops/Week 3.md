---
date: 2024-08-06
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes:
  - "[[../Week 3 - Conceptual Data Modelling|Week 3 - Conceptual Data Modelling]]"
Relevant Links: 
---
# Example
Old Man Shuckle owns a Michelin star restaurant chain that specialises in dishes made from magikarp. These restaurants are built next to various lakes and rivers that magikarps inhabit. Up until now he has been taking cash only payments to avoid paying taxes. However, the ATO has come knocking on his door and he is forced to start doing things by the books. You have offered to help Old Man Shuckle create his ERD.   

The business rules are as follows: 

- There are multiple venues. Each venue has its own ID. The address and phone number are also stored. 
- All venues are divided into rooms. Rooms numbers are unique to each venue. The max capacity is also stored. 
- Old Man Shuckle employs sushi chefs to prepare set menu banquets for his guests. Chefs are uniquely identified. Their name and qualifications are stored. 
- Fishermen are vital to the business as they are needed to fish the magikarps fresh from the water. The rates they charge are stored along with their name and contact number. Their fee will be included in the cost of the banquet. 
- They also employ a team of pikachus. Each time there is a banquet, a fisherman will fish a magikarp out in front of guests as part of the experience. The pikachu present is responsible for humanely executing the magikarp so that the chef may prepare it. Each pikachu employee is uniquely identified and their level is stored. 
- Bookings are made at a particular venue. They are given a unique ID which is stored with a name, phone number, date, time and number of guests. 
- Once the booking has been confirmed, a chef’s banquet can then be allocated to a room at the venue. The banquet will have a chef, a fisherman and a pikachu present. Any allergy requirements are also noted.  
- Once the banquet has concluded, payment can be made by either cash or card. Each payment is uniquely identified. The payment method is recorded. No split bills allowed.
- Every so often, discount vouchers will be available for guests to use. Each voucher has a description and expiry date. Only one voucher can be used for a single payment. The voucher will be invalidated after use. 
- Some of the pikachus are new hires with much lower levels. They will need to undergo training sessions run by the more experienced pikachus. Each time a pikachu is trained, the number of levels it gains is recorded. Experienced pikachus could train multiple new hires. New hires could be trained by multiple seniors.



# Example with Answer
**Draw an ER for the case study below.**

Sheldon and Stuart have decided to co-operate. They have established an organisation that will run tournaments for video games across various branches of the comic book store. Sheldon was supposed to design the database but has unfortunately been called in for emergency work on the infinite persistence gyroscope. He has decided to outsource the work to you instead. The business rules are as follows: 

- A branch is uniquely identified. It will need to store its address, contact number and website.  
    

- Video games need to store their name, current patch version and the console they are played on.  
    

- Competitors need to register with the organisation to compete at tournaments. New competitors need to submit their name, dob, username and email address. They are assigned a unique number.  
    

- Tournaments are held for a specific video game. They will be at a branch and multiple competitors will compete. If a player is sponsored to compete in a tournament, their sponsors name is recorded. Every time a tournament is run, the prize money is recorded.
![800](Attachments/Week%203_ExtraQ.jpeg)
