---
date: 2024-09-03
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---
[In Class Printout](Attachments/Week%205_inClassPrintout.docx)
[ER Diagrams](Attachments/Lecture%202%20(contd)-%20ER%20Diagrams%201.pdf)
![](Attachments/Lecture5.sql)

**Types of languages**
1. Structured Query Language (SQL)
2. Data Definition Language (DDL)
3. Data Manufacturing Language (DML)
4. Data Querying Language (DQL)
![900](Attachments/image%20(4)%201.png)
# SQL
Structured Query Language (SQL) is a standardized language originally designed as a relational database query tool.
Currently used in many software products to retrieve and update data – E.g., MySQL, SQL Developer, Snowflake.

## Data Types
- The data type of a column defines the value a column can hold
- Each column in a database table is required to have a name and a data type.
- The data type is a guideline for SQL to understand what type of data is expected inside of each column
- SQL developer (YOU) must decide Data Type

| DataType           | Example      | Display    |
| ------------------ | ------------ | ---------- |
| INT                | INT          | 12345678   |
| DECIMAL(size, dec) | DECIMAL(8,2) | 123456.22  |
| CHAR(size)         | CHAR(8)      | ALAVI      |
| VARCHAR            | VARCHAR(8)   | ALAVI      |
| DATE (YYYY-MM-DD)  | DATE         | 2022-08-27 |
More SQL data types can be found [here](https://www.w3schools.com/sql/sql_datatypes.asp).

# SQL Servers: ASH vs Local
|                    | Ash Server                                                                                                                                  | Local                                                                                               |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| Connecting         | Server is already set up. Follow guides for connecting.                                                                                     | Must be installed onto device. Follow guides for installation.                                      |
| Can create schema? | No. Each connection to the ash server is only allowed 1 schema. The schema will be named as your **studentID**.                             | Can create as many schemas. Need to use 'create schema **_schemaName_**' and 'use **_schemaName_**' |
| Case sensitive?    | Yes **table** names are case sensitive. Be very careful during Create Table phase.  <br>  <br>Column names and data are not case sensitive. | Not case sensitive.                                                                                 |
| Reliable?          | For the most part, yes. But can become problematic nearing assignment submission dates when many students are connected.                    | No down time.                                                                                       |

# ERD to Schema Example
![800](Attachments/Week5_ExtraQuestion.jpeg)

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
![1200](Attachments/Week5_ExtraQuestion_Schema.jpeg)


# Data Definition Language (DDL)

Please refer to this [link](https://www.w3schools.com/sql/default.asp) for additional DDL syntax. Most of it should be underneath the 'SQL Database' category.

**CREATE**  

- Creating data structure
- E.g., Schema, Table, Views etc.

**DROP**  

- Deletes an existing data structure
- Syntax: _drop schema/table **tableName**;_

**TRUNCATE**  

- Erases all values/data from the table
- Syntax: _truncate table **tableName**;_

**ALTER**

- Modifies the data structure
- Syntax for adding column: 

_alter table **tableName**_

_add **columnName** datatype;_

- Syntax for removing column

_alter table **tableName**_

_drop **columnName**;_

## **Create Table Example**  
create table **Table1**(
columnA _datatype_,
columnB datatype,
columnC datatype,
...
primary key (columnA)
);


create table **Table2**(
column1 datatype,
column2 _datatype_,
column3 datatype,
…
primary key (column1),
foreign key(column2) references Table1(columnA)
  );

  
***Notice that **Table2 column2** references **Table1 columnA**. For this to work, the 2 columns **must** be of the same data type.***

 Consider the following schema:
![800](Attachments/Week5_DDL_Schema.jpeg)
The SQL script for creating these 2 tables can be found [here](https://ilearn.mq.edu.au/pluginfile.php/9245429/mod_book/chapter/347901/Week5_Notes_DDLscript.sql?time=1723803366789).

# Data Manipulation Language (DML)
**INSERT**
- Create a new row within a table

**DELETE**
- Remove existing records within a table

**UPDATE**
- Modify the existing records in a table.

**ORDER BY**
- Sorts a column in ascending or descending order.

## Syntax
**Insert Values**
- _insert into **TableName** values (value1, value2, value3, ...);_
- **Note:** the values must be listed in the same order as the columns.
- An alternative method of inserting values can be found [here](https://www.w3schools.com/sql/sql_insert.asp) underneath '**Insert Multiple Rows**'
- Data can also be inserted into specified columns. For example:

_insert into **tableName** (column1, column2, column3)_
_values (value1, value2, value3);_


**Delete Values**  
- This keyword is more so used to target a specific row. To delete all values in a table, **truncate** can be used.
- _**Example:** delete from Customers where CustomerName = 'Bob'_ 
- The above command will delete Bob's record from the customer table.

**Update Values**
_update_ _**tableName**_ 
_set **columnName** = **value**_
_where **condition**_

Further examples can be found [here](https://www.w3schools.com/sql/sql_update.asp).

# Data Querying Language (DQL)
A basic DQL query will have the following format:
_select **columnName1**, **columnName2** ..._\
_from **tableName**;_
Other keywords such as _**group by, order by, where, having**_ can be used to further filter the results.

## Syntax Examples
Selecting everything from a table

_select *****_ 
_from tableName;_


Selecting unique values from a certain column within a table

_select **distinct** columnName_
_from tableName;_


Using conditions to filter results

_select columnName_
_from tableName_
_**where condition**;_


### WHERE Operators

| Operator                                     | Description                                            |
| -------------------------------------------- | ------------------------------------------------------ |
| Column Name = Value                          | Equal to                                               |
| Column Name > Value                          | Greater than                                           |
| Column Name < Value                          | Less than                                              |
| Column Name >= Value                         | Greater than or equal to                               |
| Column Name <= Value                         | Less than or equal to                                  |
| Column Name <> Value OR Column Name != Value | Not equal to                                           |
| Column Name BETWEEN Value1 AND Value2        | Between a certain range                                |
| Column Name LIKE 'a%'                        | Search for a pattern e.g. Starting with the letter 'a' |
| Column Name IN (Value1, Value2, Value3)      | To specify multiple possible values for a column       |
Further examples can be found under [SQL Tutorial](https://www.w3schools.com/sql/default.asp).

