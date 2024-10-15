---
date: 2024-10-15
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
# Business Rules
 Statements that define or constrain aspects of business.
	- Derived from policies, procedures, events and functions within the organisation.
	- They assert structure and control / influence behaviour, ensuring consistency and adherence to **organisational standards**.
	- Expressed in terms familiar to end users.

1. **Declarative**: It focuses on *what* needs to be done rather than *how*.
2. **Precise**: The rule is clear and has an agreed upon meaning.
3. **Atomic**: The rule should be a single standalone statement that addresses a specific aspect of business.
4. **Consistent**: The rule is internally consistent within itself and does not conflict with other rules or policies
5. **Expressible**: Can be easily understood and expressed in natural language.
6. **Distinct**: Non-redundant, avoiding duplication or overlap with other rules.
7. **Business oriented**: Written in a manner that can be easily understood by businesspeople and stakeholders.

![Entity Relationship Diagram (ERD)](../../../Distilled%20Notes/Entity%20Relationship%20Diagram%20(ERD).md)

```ad-important
title: Logical Data Modelling
- Transforming the high level and abstract representation of the database from the conceptual model into more detailed and implementation-independent structure.
- entities identified in the conceptual model are transformed into tables, and each table represents a specific entity.
- Attributes of the entities become the columns of the corresponding tables.
- The relationships between entities are translated into data integrity constraints, such as primary keys, foreign keys, and other constraints that ensure data consistency and integrity.

```

```ad-error
title: Physical Data Modelling
 - involves transforming the logical model into a specific implementation that is optimized for the chosen [Database Management System](../../../Distilled%20Notes/Database%20Management%20System.md)
 - The logical model's data types and constraints are mapped to the specific data types and constraints supported by the chosen DBMS
 - This ensures compatibility and data integrity during the implementation. The physical model considers performance optimization techniques, such as data caching, query optimization, and database tuning, to ensure efficient data access and processing.

```