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

*The **AS** keyword can be used to create an alias for the column name, which will be displayed in the query result instead of the original column name.*

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

*The **FROM** clause is where the selection of source tables is provided.*

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
    

*The **AS** keyword can be used to create an alias for the table name, which then can be used in the query instead of the original table name.*

SELECT *  
**FROM** Director AS d JOIN Movie AS m ON d.DirectorID = m.DirectorID  
;

# The WHERE clause
**SELECT column-name <, column-name...>  
FROM table-name**  
<**WHERE** criteria>  
<**GROUP BY** column-name <, column-name...>>  
<**HAVING** aggregate-criteria>  
<**ORDER BY** column-name <ASC | DESC> <, column-name <ASC | DESC>...>>  
**;**

*The **WHERE** clause is an optional clause that can be used to provide record selection criteria or filtering mechanisms.*

Depending on the data type contained in the column the behaviour may differ. The commonly used operators in the criteria are:

- **=** for equal to (exact match)
- **<>** or **!=** for not equal to  
- **>** for greater than (exclusive) or **>=** for greater than or equal to (inclusive)   
- **<** for less than (exclusive) or **<=** for less than or equal to (inclusive)  
        
- ***LIKE** for pattern matching for string type columns using operators '%' and/or ''*  
    
    - Sample for matching strings beginning with the letter 'A' of any length  
        SELECT *  
        FROM Director  
        **WHERE** DirectorName LIKE 'A%'  
        ;  
        
    - Sample for matching strings ending with the string 'nt' of any length  
        SELECT *  
        FROM Director  
        **WHERE** DirectorName LIKE '%nt'  
        ;  
        
    - Sample for matching strings with a length of 5 characters  
        SELECT *  
        FROM Director  
        **WHERE** DirectorName LIKE  ``` '_____' ```  
        ;  
        
    - Sample for matching strings containing a space anywhere and of any length  
        SELECT *  
        FROM Director  
        **WHERE** DirectorName LIKE '% %'  
        ;  
        
    - Sample for matching strings with the letter 'a' in the second character of any length  
        SELECT *  
        FROM Director  
        **WHERE** DirectorName LIKE '_a%'  
        ;  
        
- **BETWEEN** for values between a range (inclusive)
    - Sample for string/date column (VARCHAR, CHAR, DATE, etc.)  
        SELECT *  
        FROM Director  
        **WHERE** DirectorDOB BETWEEN '1970-01-01' AND '1985-12-31'  
        ;  
        
    - Sample for numeric column (INT, DECIMAL, etc.)  
        SELECT *  
        FROM Director  
        **WHERE** DirectorNumMovies BETWEEN 5 AND 20  
        ;  
        
- **IN** for equal to one of the possible values listed
    - Sample for string/date column (VARCHAR, CHAR, DATE, etc.)  
        SELECT *  
        FROM Director  
        **WHERE** DirectorID IN ('D1', 'D5', 'D6')  
        ;  
        
    - Sample for numeric column (INT, DECIMAL, etc.)  
        SELECT *  
        FROM Director  
        **WHERE** DirectorNumMovies IN (4, 8, 12)  
        ;

## Multiple Criteria
**SELECT column-name <, column-name...>  
FROM table-name**  
<**WHERE** criteria>  
<**GROUP BY** column-name <, column-name...>>  
<**HAVING** aggregate-criteria>  
<**ORDER BY** column-name <ASC | DESC> <, column-name <ASC | DESC>...>>  
**;**

  

The **WHERE** clause can be used to provide multiple criteria by using the operators: AND, OR, or NOT

- **AND** for ensuring that all conditions are fulfilled
    - Display directors' info who had produced at least 10 movies, but earned less than 200  
        SELECT *  
        FROM Director  
        **WHERE** DirectorNumMovies >= 10 **AND** Salary < 200  
        ;  
        
    - Display directors' info whose name starts with the letter A, had produced more than 5 movies, and are still active  
        SELECT *  
        FROM Director  
        **WHERE** DirectorName LIKE 'A%' **AND** DirectorNumMovies > 5 **AND** DirectorIsActive = true  
        ;  
        
- **OR** for fulfilling at least one of the conditions  
    - Display high achiever directors. A producer is deemed to be a high achiever if they have directed 25 movies or more, otherwise one that earned more than 500  
        SELECT *  
        FROM Director  
        **WHERE** DirectorNumMovies > 5 **OR** Salary > 500  
        ;  
        
    - Display directors who like Korean food, chicken, or lasagne  
        SELECT *  
        FROM Director  
        **WHERE** DirectorFavouriteFood LIKE '*korean* **OR** DirectorFavouriteFood LIKE '*chicken* **OR** DirectorFavouriteFood LIKE '*lasagne*  
        ;  
        
- **NOT** for excluding results that fulfilled the condition   
    - Display directors who are not active  
        SELECT *  
        FROM Director  
        **WHERE** **NOT** DirectorIsActive = true  
        ;  
        
    - Display directors who dislike chicken  
        SELECT *  
        FROM Director  
        **WHERE** DirectorFavouriteFood **NOT** LIKE '%chicken%'  
        ;  
        
- Nested criteria using a set of **()**
    

- Display directors with names starting with A or R, who is still active  
    SELECT *  
    FROM Director  
    **WHERE** **(**DirectorName LIKE 'A%' **OR** DirectorName LIKE 'R%'**)** **AND** DirectorIsActive = true  
    ;

# ORDER BY clause
