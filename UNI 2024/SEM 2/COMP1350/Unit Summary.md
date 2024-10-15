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

![ERD](../../../Distilled%20Notes/Entity%20Relationship%20Diagram%20(ERD).md#ERD)

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

## Associative Entities
An entity has attributes. A relationship links entities together
- The associative entity could have meaning independent of the other entities
- The associative entity preferably has a unique primary identifier, and should also have other attributes
- The associative entity may participate in other relationships other than the entities of the associated relationship
- Ternary relationships should be converted to associative entities

## Attributes