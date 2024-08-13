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
