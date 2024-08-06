---
date: 2024-08-06
tags:
  - "#COMP1350"
status: Incomplete
Relevant Questions: []
Relevant Notes: 
Relevant Links:
---
**[Lecture Questions](Attachments/Week%202_inClassPrintout(1).docx)**
[Lecture Notes](Attachments/Week%202%20(ER%20Diagrams).pdf)

# Business Rules
- Statements that define or constrain aspects of business.
	- Derived from policies, procedures, events and functions within the organisation.
	- They assert structure and control / influence behaviour, ensuring consistency and adherence to **organisational standards**.
	- Expressed in terms familiar to end users
- Using a [[Database Management System]] (DMS) software, Business Rules can be automated
	- Ensures data quality
- Critical to maintaining data quality, enforcing policies, streamlining business processes.
- Usually used to inform the structure of a businesses database
## Characteristics of Business Rules
 - **Description**: Business rules describe policies procedures or principles within a specific organisation. Defines what actions are acceptable or not
- **Applicability**: Rules apply to any organisation that stores and uses data to generate information.
- **Example**: A business rule could be: "A pilot should not fly more than 14 hours a day". which describes an operation to create and enforce an action within an organization's environment.
- **Documentation**: Business rules must be in writing and kept up to date.


They should have the following characteristics:

1. **Declarative**: It focuses on *what* needs to be done rather than *how*.
2. **Precise**: The rule is clear and has an agreed upon meaning.
3. **Atomic**: The rule should be a single standalone statement that addresses a specific aspect of business.
4. **Consistent**: The rule is internally consistent within itself and does not conflict with other rules or policies
5. **Expressible**: Can be easily understood and expressed in natural language.
6. **Distinct**: Non-redundant, avoiding duplication or overlap with other rules.
7. **Business oriented**: Written in a manner that can be easily understood by businesspeople and stakeholders.



# Database Modelling - 3 phases

```ad-note
title: Conceptual Data Modelling
- Initial phase of database design process
- Create a high level and abstract representation of the database. 
- Aims to understand and capture the data requirements of the application
- Often represented using an [[Entity Relationship Diagram (ERD)]] or an [[Enhanced Entity Relationship Diagram (EERD)]] 
```

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


# Entities

**Strong Entity**
- Exists independently from other types of entites
- Has its own unique identifier, known as the primary identify
- primary identifiers

**Weak Entity**
- *Depends on a strong entity to exist*
- Does not have a primary identifier
- Existence is determined by its relationship with the owner entity.

**Associative Entities**
- AKA *relationship entities*
- Associative entities are used to represent many-to-many relationships between two or more entities.
- They contain attributes that describe the relationship itself.

# Attributes
They allow for the detailed representation of information and support various operations, such as querying, updating, and organizing data in the database.
**They represent the specific data that is stored for each instance of an entity or relationship.**

*Attributes are properties of the entities. These are the different types of attributes:*

1. **Required vs. Optional Attributes**
	- Required attributes must have a value for every instance of the entity or relationship.
	- Optional attributes may or may not have a value
2. **Simple-Valued vs Composite Attributes**
	- Simple attributes are atomic and cannot be broken down further
	- Composite attributes are made up of multiple sub-attributes or components
3. **Single Valued vs Multivalued Attributes**
	- Single-valued attributes can have only one value for each instance
	- Multivalued attributes can have more than one value for the same instance.
4. **Stored vs Derived Attributes**
	- Stored attributes are directly stored in the database as part of the entity or relationship.
	- Derived attributes are calculated or derived from other attributes
5. **Identifier Attributes**
	- Identifier attributes uniquely identify individual instances of an entity.
	- They serve as primary keys to ensure each entity instance is unique.


When choosing **identifiers** for entities in a database its essential to consider the following suggestions:
1. **Stability**: Select identifiers that will not change in value over time.
2. **Non-Null**: Ensure that the chosen identifier attributes always have a value for every instance of the entity.
3. **Avoid intelligent identifiers**: Intelligent identifiers are things like location names or people's names. Instead, opt for generic, descriptive, and non-sensitive identifiers.
4. **Simplicity**: Prefer simple and straightforward identifiers over complex and composite keys.
5. **Substitute long composite keys**: When possible, replace long, composite keys (keys made up of multiple attributes) with single, simple keys.