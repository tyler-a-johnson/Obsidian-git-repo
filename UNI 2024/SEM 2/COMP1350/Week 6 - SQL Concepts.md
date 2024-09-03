---
date: 2024-09-03
tags: 
status: Incomplete
Relevant Questions: 
Relevant Notes: 
Relevant Links:
---

# Data Languages

## DDL and DML

| Data Definition Language (DDL)             | Data Manipulation Language (DML)     |
| ------------------------------------------ | ------------------------------------ |
| Determine the database and table structure | Manage the data (records) of a table |
| CREATE, DROP, ALTER, TRUNCATE              | INSERT, DELETE, UPDATE               |
## Data Querying Language (DQL)

**Syntax to query data (SELECT statement)**

**SELECT column-name <, column-name...>  
FROM table-name**  
<**WHERE** criteria>  
<**GROUP BY** column-name <, column-name...>>  
<**HAVING** aggregate-criteria>  
<**ORDER BY** column-name <ASC | DESC> <, column-name <ASC | DESC>...>>  
**;**

Note:
- <> pairs are to indicate optional elements and not to be used in actual SQL statements
Run **[this](https://ilearn.mq.edu.au/pluginfile.php/9303122/mod_book/chapter/351312/week6_script.sql "this")** script to create the IMDB schema. 

### Examples
**Display a list of director's salaries.**

SELECT Salary  
FROM Director  
**;**

**Display all directors' info showing the director with the least number of movies produced first. If more than one director produced the same number of movies, show the director getting the most salary first.  
**

SELECT *  
FROM Director  
**ORDER BY** DirectorNumMovies, Salary DESC  
**;**

**Display the directors' name, date of birth, and salary, but only show those who are still actively producing movies.  
**

SELECT DirectorName, DirectorDOB, Salary  
FROM Director  
**WHERE** DirectorIsActive = TRUE  
**;**




# The SELECT clause
**SELECT column-name <, column-name...>  
FROM table-name**  
<**WHERE** criteria>  
<**GROUP BY** column-name <, column-name...>>  
<**HAVING** aggregate-criteria>  
<**ORDER BY** column-name <ASC | DESC> <, column-name <ASC | DESC>...>>  
**;**

The **SELECT** clause is where the selection of columns is provided.

Options:
- * for all columns available  
    SELECT *  
    FROM Director  
    ;  
    
- one column name  
    SELECT DirectorID  
    FROM Director  
    ;  
    
- multiple column names separated with commas  
    SELECT DirectorID, DirectorName, DirectorDOB  
    FROM Director  
    ;  

*The **DISTINCT** keyword can be used to eliminate repeating rows of results (duplicate results).*

SELECT DISTINCT DirectorFavouriteFood  
FROM Director  
;

The **AS** keyword can be used to create an alias for the column name, which will be displayed in the query result instead of the original column name.

SELECT DirectorName **AS** Name, DirectorIsActive **AS** Status  
FROM Director  
;

# The FROM clause
**SELECT column-name <, column-name...>  
FROM table-name**  
<**WHERE** criteria>  
<**GROUP BY** column-name <, column-name...>>  
<**HAVING** aggregate-criteria>  
<**ORDER BY** column-name <ASC | DESC> <, column-name <ASC | DESC>...>>  
**;**

  

The **FROM** clause is where the selection of source tables is provided.

Options:

- single table  
    
    SELECT *  
    **FROM** Director  
    ;  
    
- multiple tables  
    
    SELECT *  
    **FROM** Director, Movie  
    ;  
    
- multiple tables with JOIN clause  
    
    SELECT *  
    **FROM** Director JOIN Movie ON Director.DirectorID = Movie.DirectorID  
    ;  
    

  

The **AS** keyword can be used to create an alias for the table name, which then can be used in the query instead of the original table name.

SELECT *  
**FROM** Director AS d JOIN Movie AS m ON d.DirectorID = m.DirectorID  
;