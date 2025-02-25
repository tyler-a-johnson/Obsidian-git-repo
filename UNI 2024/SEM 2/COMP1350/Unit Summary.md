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
7. **Business oriented**: Written in a manner that can be easily understood by business people and stakeholders.

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

# Attributes
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


# Relationships
Modelled as lines connecting entities in an [Entity Relationship Diagram (ERD)](../../../Distilled%20Notes/Entity%20Relationship%20Diagram%20(ERD).md). They visually illustrate the associations between different entities in the database.
![900](Attachments/image%20(1).png)
**Degrees of relationship**
1. **Unary Relationship**: In a unary relationship, an entity is related to itself. It occurs when an entity type has a relationship with another instance of the same entity type. *Example: Two users being friends on facebook*
2. **Binary Relationship:** A binary relationship involves two entities. It is the most common type of relationship and represents an association between instances of two distinct entity types. *For example, in a university database, the "Student" entity may have a binary relationship "Enrols In" with the "Course" entity.*
3. **Ternary Relationship**: A ternary relationship involves three or more entities. Ternary relationships are less common but can be useful when a situation involves three or more entities. *For example, in a shipping company database, a ternary relationship "Shipment" may exist among "Customer," "Product," and "Warehouse" entities, representing the shipments of products from a warehouse to a customer.*

1. **One-to-One (1:1) Relationship:** 
	- Each entity in the relationship is associated with exactly one related entity.
2. **One-to-Many (1:N) Relationship:** 
	- An entity on one side of the relationship can be associated with many related entities on the other side. 
	- Entities on the other side will have a maximum of one related entity.
3. **Many-to-Many (M: N) Relationship:** 
	- Entities on both sides of the relationship can be associated with many related entities on the other side. 
	- Each instance of one entity type can be related to multiple instances of the other entity type, and vice versa.

# Transformation Process

1. **Strong entities**  
For each strong entity in the ER model, create a relation (i.e. a table that includes all the simple attributes). Make sure to identify the primary key for the relation (i.e. the PI of the entity becomes the PK of the table). If there is a composite attribute, you can expand them. Leave multi-valued attributes out (they will be dealt with later.)  
2.  **Weak Entities**  
For each weak entity in the ER model, create a relation that includes all the simple attributes. The primary key of the relation is the combination of the primary key/s of the ‘owner’ and the main attribute of the weak entity itself.  
3. **1:1 relationship**
For each 1 TO 1 Relationship identify the two relations corresponding to the entities participating in the relationship. Choose the PK of the Relation (usually the one with mandatory constraint) and make it as the foreign key of the other relation.  
4. **1:N relationship**
For each binary 1 TO N Relationship identify the relations that represent the participating entity at the N (i.e many) side of the relationship. Include as the foreign key in the relation that holds the N side, the primary key of the other entity (that holds the 1 side)  
5. **M:N relationship**
For each binary M:N Relationship create a new relation to represent the relationship. The primary key of the new relation is the combination of the primary keys of the two connected entities. This is an associative entity. If there are any attributes on the relationship, then include them.  
6. **Multi-valued attributes**
For each multivalued attribute, create a new relation that includes the multivalued attribute and the primary key of the entity where the multivalued attribute is attached.
7. **Associative entities**
For each ternary relationship create a new relation to represent the relationship. The primary key of the new relation is the combination of the primary keys of the participating entities that hold the N (many) side. In most cases of an ternary relationship, all the participating entities hold a many side.  
**Final Table List**  
Use the updated version of all tables and combine them to get the result. Take the most up-to-date version of each table. A useful habit is to cross out any tables if you create an updated version of it.

*Step 1: Strong Entities*
- Student (**StudentID(PK)**, StudentName, StudentPhone, StudentAddress, StudentEmail)
- Unit (**UnitCode(PK)**, UnitName, UnitOffering)
- Staff (**StaffID(PK),** StaffName, StaffPhone, StaffAddress, StaffEmail)
- Department (**DeptID(PK)**, DeptName, DeptDesc)
*Step 2: Weak Entities*
There are no weak entities.
*Step 3: One to one relationships*
There are no one to one relationships.
*Step 4: One to many relationships*
- Staff (**StaffID (PK)**, StaffName, StaffPhone, StaffAddress, StaffEmail, DepartmentID (FK))
*Step 5: Many to many relationships*
- Enrolls(**StudentID (PK, FK)**, UnitCode (PK, FK), Date, Time)
- Teaches(**StaffID (PK, FK)**, UnitCode (PK, FK))
*Step 6: MVA*
 There are no multi-valued attributes.
*Step 7: Ternary relationships*
 There are no ternary relationships.

*Final Tables*  
- Student (**StudentID(PK),** StudentName, StudentPhone, StudentAddress, StudentEmail)
- Unit (**UnitCode(PK)**, UnitName, UnitOffering)
- Department (**DeptID(PK)**, DeptName, DeptDesc)
- Staff (**StaffID(PK),** StaffName, StaffPhone, StaffAddress, StaffEmail, *DepartmentID(FK)*)
- Enrols (***StudentID(PK, FK)***, ***UnitCode(PK, FK)***, Date, Time)
- Teaches(***StaffID(PK, FK),*** ***UnitCode(PK, FK))***
![800](Attachments/Week5_ExtraQuestion.jpeg)



# SQL Concepts
## Data Definition Language (DDL)

Please refer to this [link](https://www.w3schools.com/sql/default.asp) for additional DDL syntax. Most of it should be underneath the 'SQL Database' category.

**CREATE**  
```sql
CREATE TABLE Table2(
column1 datatype,
column2 _datatype_,
column3 datatype,
…
PRIMARY KEY (column1),
FOREIGN KEY(column2) REFERENCES Table1(columnA)
  );
```

**DROP**  

- Deletes an existing data structure
- Syntax: ``` DROP DATABASE/SCHEMA/TABLE tableName;```

**TRUNCATE**  
- Erases all values/data from the table
- Syntax: ```TRUNCATE TABLE tableName;```

**ALTER**
- Modifies the data structure
- Syntax for adding column: 
```sql
ALTER TABLE tableName
ADD columnName datatype;
```
- Syntax for removing column
```sql 
ALTER TABLE tableName
DROP columnName
```

## Data Query Language
```sql
SELECT column-name <, column-name...>  
FROM tablename
<WHERE criteria>  
<GROUP BY column-name <, column-name...>>  
<HAVING aggregate-criteria>  
<ORDER BY column-name <ASC | DESC> <, column-name <ASC | DESC>...>>  
;
```

1. *The **DISTINCT** keyword can be used to eliminate repeating rows of results (duplicate results). **SELECT DISTINCT***
2. *The **AS** keyword can be used to create an alias for the column name, which will be displayed in the query result instead of the original column name. **SELECT column-name AS ID***.
3. *The **WHERE** clause is an optional clause that can be used to provide record selection criteria or filtering mechanisms.*
	- ***LIKE** for pattern matching for string type columns using wildcard characters'*
	- *Operators to be used in  the WHERE clause*
	- *Can use AND, OR, NOT, to pass multiple criteria*

| Operator | Description                                |
| -------- | ------------------------------------------ |
| =        | Equal                                      |
| >        | Greater than                               |
| <        | Less than                                  |
| >=       | Greater than or equal                      |
| <=       | Less than or equal                         |
| != or <> | Not equal                                  |
| BETWEEN  | Between a certain range                    |
| LIKE     | use wildcards to search for like terms     |
| IN       | equal to one of the possible values listed |


| Wildcard | Description                                                  |
| -------- | ------------------------------------------------------------ |
| %        | Represents zero or more characters                           |
| _        | Represents a single character                                |
| []       | Represents any single character within the brackets *        |
| ^        | Represents any character not in the brackets *               |
| -        | Represents any single character within the specified range * |
| {}       | Represents any escaped character **                          |

## Aggregate Functions

### Numeric Functions

| Function                  | Description                                                                                                                 |
| ------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| ROUND(number <, decimal>) | round the number to the nearest specified decimal places (if the decimal is not specified, the default is 0 decimal places) |
| FLOOR(number)             | round down the number to the nearest whole number   <br>                                                                    |
| CEILING(number)           | round up the number to the nearest whole number                                                                             |
| ABS(number)               | extract the absolute number (disregard positive or negative)                                                                |

### String Functions

| Function                                     | Description                                                                                |
| -------------------------------------------- | ------------------------------------------------------------------------------------------ |
| **CONCAT**(string1, string2 <, string3...>)  | combine multiple strings together                                                          |
| **UPPER**(string)                            | convert the string to all uppercase                                                        |
| **LOWER**(string)                            | convert the string to all lowercase                                                        |
| **TRIM**(string)                             | trim any leading and trailing whitespace                                                   |
| **LENGTH**(string)                           | get the length of the string                                                               |
| **LEFT**(string, number-of-characters)       | grab the string from the first character for the specified number of characters            |
| **RIGHT**(string, number-of-characters)      | grab the string from the last character for the specified number of characters             |
| **MID**(string, start, number-of-characters) | grab the string from the specified start position for the specified number of characters   |

### Date Functions

| Function                      | Description                                              |
| ----------------------------- | -------------------------------------------------------- |
| **NOW**()                     | provide the current date and time                        |
| **CURDATE**()                 | provide the current date                                 |
| **DAY**(date)                 | extract the day of a date                                |
| **MONTH**(date)               | extract the month of a date                              |
| **YEAR**(date)                | extract the year of a date                               |
| **DATEDIFF**(date1, date2)    | the number of days between the two dates (date1 - date2) |
| **DATE_FORMAT**(date, format) | DATE_FORMAT(DirectorDOB, '%D of %M, %Y')                 |

## Query using Multiple Tables
```sql
SELECT column-name <, column-name...>  
FROM leftTableName <AS alias1> 
    <INNER/LEFT/RIGHT/CROSS> JOIN rightTableName <AS alias2> 
      <ON joinCriteria | USING commonColumn)>
<WHERE criteria>  
<GROUP BY column-name <, column-name...>>  
<HAVING aggregate-criteria>  
<ORDER BY column-name <ASC | DESC> <, column-name <ASC | DESC>...>>;
```
SELECT columnname FROM lefttable as alias1 JOIN righttable as alias2 ON joincriteria USING commonColumn
***INNER JOIN***: Only matching records
***Other Joins:***
![](Attachments/Pasted%20image%2020241014221637.png)

- **with equijoin**
    - Example 1:
        ```sql
        SELECT *
        FROM Actor, Acts
        WHERE Actor.ActorID = Acts.ActorID;
        ```
 
 - Example 2 - using alias:
```sql
		SELECT *
		FROM Actor t1, Acts t2
        WHERE t1.ActorID = t2.ActorID
```


- Example 3 - three tables:  
	```sql
        SELECT *
        FROM Actor a1, Acts a2, Movie m
        WHERE a1.ActorID = a2.ActorID AND a2.MovieID = m.MovieID
	```
- **with JOIN clause (default for INNER JOIN)**
-  Example 1: 
    ```sql
		SELECT *
	      FROM Actor 
	      JOIN Acts ON Actor.ActorID = Acts.ActorID;
```
- Example 2 - using alias:  
```sql
        SELECT *
        FROM Actor t1 
        JOIN Acts t2 ON t1.ActorID = t2.ActorID
```

- Example 3 - three tables:
```sql
        SELECT *
        FROM Actor a1  
        JOIN Acts a2 ON a1.ActorID = a2.ActorID    
        JOIN Movie m ON a2.MovieID = m.MovieID
```

*-The table name used **before the JOIN clause** is considered as the **left table** and the table name provided **after the JOIN clause** is considered as the **right table***

### Aggregate Functions

| Function                     | Description                           |
| ---------------------------- | ------------------------------------- |
| **COUNT**(column-name or \*) | to get the number of rows with values |
| **SUM**(numeric-column-name) | to add the values                     |
| **AVG**(numeric-column-name) | to provide the average value          |
| **MIN**(column-name)         | to get the lowest value               |
| **MAX**(column-name)         | to get the highest value              |

### Aggregate Query
#### GROUP BY
**SELECT column-name <, column-name...>  
FROM table-name**  
<**WHERE** criteria>  
<**GROUP BY** column-name <, column-name...>>  
<**HAVING** aggregate-criteria>  
<**ORDER BY** column-name <ASC | DESC> <, column-name <ASC | DESC>...>>  
**;**

The GROUP BY clause creates a group summary.

Sample usage of aggregate functions with GROUP BY clause.  

- The number of actors per mentor.
    SELECT COUNT(ActorID)  
    FROM Actor  
    **GROUP BY** MentorID;  
    
- The average director's salary based on status (active vs inactive).  
    **SELECT** DirectorIsActive Status, **AVG**(Salary) AS 'Average Salary'  
    FROM Director  
    **GROUP BY** DirectorIsActive;  
    
- The number of directors per birth month.
    **SELECT MONTH(DirectorDOB) BirthMonth**, **COUNT**(DirectorID) NumberOfDirector  
    FROM Director  
    **GROUP BY** MONTH(DirectorDOB);

#### HAVING Clause
```sql
SELECT column-name <, column-name...>
FROM table-name
<WHERE criteria>
<GROUP BY column-name <, column-name...>>
<HAVING aggregate-criteria>
<ORDER BY column-name <ASC | DESC> <, column-name <ASC | DESC>...>>
;
```

Aggregate criteria are criteria that use an aggregate function. Criteria that do not use an aggregate function should be placed in the WHERE clause.

Examples:

- Display the ID of the mentor with more than 2 mentees.
```sql
SELECT MentorID
FROM Actor
GROUP BY MentorID
HAVING COUNT(ActorID) > 2;
```
    
- Display the actor's name who received an average earning lower than $350,000 and never earned less than $150,000 for any single role.  
    Note: the salaries are recorded in thousands of dollars.  
    ```sql
    SELECT ActorName
    FROM Actor JOIN Acts ON Actor.ActorID = Acts.ActorID
    GROUP BY Acts.ActorID
    HAVING AVG(Salary) < 35
	    AND MIN(Salary) < 150;
    ```

#### Nested Queries (Subqueries)
Nested queries are queries that use the results of another query to produce the final result. 

The query within another query is a subquery. A subquery can be:

- non-correlated subquery  
    A noncorrelated subquery is a self-contained query. It executes independently of the outer (main) query.
    - Display the mentors' names.
```sql
SELECT ActorName AS MentorName
FROM Actor
WHERE ActorID IN (
    SELECT MentorID    
    FROM Actor
);
```
correlated subquery  
A correlated subquery requires a value or values to be passed to the subquery from the outer (main) query before it can be successfully resolved.
- Display the role information that earned more than the average earnings in the same movie.
```sql
SELECT *
FROM Acts a1
WHERE a1.Salary > (
    SELECT AVG(a2.Salary)
    FROM Acts a2
    WHERE a2.MovieID = a1.MovieID
);
```

# Normalization
## Unnormalised Form (UNF)
- At least one multivalued attribute still exists

**Example**
A few staff has been allocated to multiple units, causing multivalued attributes
![](Attachments/allocation_unf.png)

## First Normal Form (1NF)
- No multivalued attribute(s)
- Has a primary key
- At least one partial dependency still exists

**Example**
To solve the multivalued attributes, create separate rows for each.  
Assign a primary key for this relation, which is the composite attributes of StaffID and UnitCode.
There are partial dependents (PD1 and PD2) exist
![](Attachments/allocation_1nf.png)
Table list:

- Allocation (StaffID (**pk**), UnitCode(**pk**), StaffName, Phone, UnitName, CreditPoints, Position, Salary)

## Second Normal Form (2NF)
- At least in 1NF
- no partial dependency
- At least one transitive dependency still exists

**Example**
Each of the partial dependencies becomes a new relation (Staff and Unit).
The initial relation (Allocation) is reduced to full functional dependency attributes only, where any part of the key that has a partial dependency becomes a foreign key.
There is a transitive dependent (TD) exists
![](Attachments/allocation_2nf.png)Table list:
- Allocation (StaffID (pk, **fk**), UnitCode(pk, **fk**), Position, Salary)
- Staff (StaffID (**pk**), StaffName, Phone)  
- Unit (UnitCode(**pk**), UnitName, CreditPoints)

## Third Normal Form (3NF)
- At least on 2NF
- No transitive dependencies exist  

**Example**
Each of the transitive dependencies becomes a new relation (Position).
The initial relation (Allocation) is reduced to exclude the transitive dependents (Salary), where any part of the key that has a partial dependency becomes a foreign key (Position).
![](Attachments/allocation_3nf.png)Table list:
- Allocation (StaffID (pk, fk), UnitCode (pk, fk), Position (**fk**))  
- Position (Position (**pk**), Salary)  
- Staff (StaffID (pk), StaffName, Phone)  
- Unit (UnitCode (pk), UnitName, CreditPoints)

# Database Architecture
