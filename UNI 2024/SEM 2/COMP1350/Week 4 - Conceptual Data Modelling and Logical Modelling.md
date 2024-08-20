---
date: 2024-08-13
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---

# Tables

## Relation/Table
- A relation denotes a titled, two-dimensional data table.
- A table is comprised of rows (records) and columns (attributes or fields)

## Necessities for a table to meet the criteria of being a relation:
- *Must* possesses a distinct name
- Each attribute value *must be indivisible* (not multi-valued or composite)
- Every row must be distinct (*cannot contain two identical rows with all fields having the same values*)
- Attributes (*columns*) within tables *must hold* unique designations.
- *Sequence of columns must not matter*
- *Sequence of rows must not matter*

## Connection to the ER Model
- *Relations* (tables) correspond to *entities*
- *Rows* correspond to *values*
- *Columns* correspond to *attributes*.

# Key Fields

## Primary Keys
- Ensure that each row in the table has a distinct and non-repeating identifier.
- Primary keys serve as the foundation for establishing relationships between tables.
- *The primary key could be the "employee number" field, which guarantees that every employee has a unique identifier.*

## Foreign Key
- Identifiers within a table that establish a connection between two related tables in a database.
- They enable a table to reference the primary key of another table.
- *in a scenario where you have an "orders" table and a "customers" table, the "customer ID" in the "orders" table can be a foreign key, linking each order to a specific customer in the "customers" table.*

## Types of Keys
Can be simple or composite:
- **Simple:** Single field that uniquely identifies a record
- **Composite:** Involves multiple input fields to form a single unique identifier. Useful when a single field may not guarantee uniqueness but a combination does.

## Indexes and Query Optimisations
- Keys are often used as indexes in a database
- *An index is a data structure that enhances the speed of data retrieval by creating a quick reference to the location of data in a table*
- allow the database engine to locate relevant data more efficiently


# Integrity Constraints
- This principle asserts that no primary key attribute can remain null; *every primary key field must contain valid data*.
- By enforcing entity integrity, we ensure that primary key values are present and distinct for every row.
- This uniqueness is essential for preventing duplicate or incomplete data entries and maintaining the overall integrity of the table.

## Referential Integrity
- governs the relationships between tables
- Ensures the accuracy and consistency of connections between related tables.
- *Referential integrity states that any foreign key value in the "dependent" table (often referred to as the "many" side) must match a primary key value in the "parent" table (the "one" side) of the relationship.*
- Alternatively, the foreign key can be left null to indicate the absence of a relationship.

## Delete Rules
Guidelines for handling the deletion of records in tables that have relationships with other tables. There are three common ones, these can vary by application
1. **Restrict:** Prevents the deletion of a record on the "parent" side if related records exist on the "dependent" side. It ensures that no record can be deleted if it's connected to other records.
2. **Cascade:** Automates the deletion process by removing all related records on the "dependent" side when a record on the "parent" side is deleted. Keeps the database consistent by removing records that rely on deleted data.
3. **Set-to-Null:** Sets the foreign key values in the "dependent" table to null when a record on the "parent" side is deleted. ***It's important to note that this rule is typically not suitable for weak entities, as it can lead to data integrity problems.***


# Transforming ER Diagrams into Relations
There is an 7-step process to transform ER diagrams into tables/relations  
Question 1: Convert this ER diagram into relations E-R to Relational Mapping will be explained here step by step.  
![](Attachments/image%201.png)

```ad-important
title: Step 1: Strong Entities
collapse: open

- For each **strong** entity in the ER model, create a relation (i.e. a table that includes all the simple attributes). 
- Identify the primary key for the relation (i.e. the PI of the entity becomes the PK of the table). 
- If there is a composite attribute, you can expand them. 
- Leave multi-valued attributes out (they will be dealt with later.)  
```
```ad-note
title: Step 2: Weak Entities
collapse: open

- For each **weak** entity in the ER model, create a relation that includes all the simple attributes. 
- The primary key of the relation is the combination of the primary key/s of the ‘owner’ and the main attribute of the weak entity itself
![](Attachments/image%20(1)%201.png)  
```
```ad-bug
title: Step 3: 1:1 Relationships
collapse: open

- For each 1:1 Relationship identify the two relations corresponding to the entities participating in the relationship. 
- Choose the PK of the Relation (usually the one with mandatory constraint) and make it as the foreign key of the other relation.  
![](Attachments/image%20(2).png)

```
```ad-question
title: Step 4: 1:N Relationships
collapse: open

- For each **binary 1:N** relationship, identify the relations that represent the participating entity at the N (i.e many) side of the relationship. 
- Include as the foreign key in the relation that holds the N side, the primary key of the other entity (that holds the 1 side)  
![](Attachments/image%20(3).png)
  
```
```ad-danger
title: Step 5: M:N Relationships
collapse: open

- For each **binary M:N** Relationship create a new relation to represent the relationship. 
- The primary key of the new relation is the combination of the primary keys of the two connected entities. 
- This is an associative entity. 
- If there are any attributes on the relationship, then include them.  
![](Attachments/image%20(4).png)
  
```
```ad-example
title: Step 6: Multi-Valued Attributes
collapse: open

- For each **multivalued attribute**, create a new relation that includes the multivalued attribute and the primary key of the entity where the multivalued attribute is attached.
![](Attachments/image%20(5).png)

```
```ad-attention
title: Step 7: Associative Entities
collapse: open

- For each **n-ary relationship** create a new relation to represent the relationship. 
- The **primary key of the new relation is the combination of the primary keys** of the participating entities **that** **hold the N (many) side**. 
- **In most cases** of an n-ary relationship, **all the participating entities hold a many side**.  
  ![](Attachments/image%20(6).png)
```
