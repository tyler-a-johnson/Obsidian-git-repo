---
date: 2024-10-14
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
Training dataset:
![](Attachments/teaching_unf.png)

Normalisation is a process to validate and improve a logical design to minimise or even avoid unnecessary duplication of data.
It can also be used as a bottom-up approach to create a database from an existing data set.

The goals:
- to avoid anomalies due to insertion, deletion, and modification/update.
- to make the database design more intuitive to users.
- to minimise database redesign even when the database is expanded to include new entities or attributes.
![](Attachments/normalisation_process.png)

### Lecture Week-9

#### Anomalies

There are three types of possible anomalies in a database:

- insertion anomaly - adding new rows forces the creation of duplicate data
- deletion anomaly - deleting rows may cause a loss of data that would be needed for other future rows  
    
- modification/update anomaly - changing data in a row forces changes to other rows because of duplication

  

#### Example

![](Attachments/teaching_1nf.png)

The primary key is a composite of StaffID and UnitCode.

  

##### Insertion Anomaly

If a new unit is introduced, a staff must be entered since it is a part of the primary key. So, we cannot add information about a new unit without hiring an employee first and assigning them to the unit.

![](Attachments/teaching_insertion.png)

  

##### Deletion Anomaly

If the only employee assigned to a unit has been removed, we lose the unit information, since removing the unit code alone is not possible.

![](Attachments/teaching_deletion.png)

  

##### Modification/Update Anomaly

If we need to modify the credit points for a unit, it may cause data inconsistency due to the redundant data, unless it applies to all instances of that data.

![](Attachments/teaching_update.png)
