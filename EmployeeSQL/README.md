# sql-challenge: employees_sql
Module 9 Challenge Files
## Folder Structure
The sql-challenge repo contains subfolders ERD_files, Queries, Resources, Schema, and a README file.  
 - The **ERD_files** folder contains employees_diagram.png and employees_diagram.sql files for the database diagram.
 - The **Queries** folder contans employees_queries.sql which is the code for questions 1-8 of this challenge. 
 - The **Resources** folder contains the .csv files and the challenge README instructions file
 - The **Schema** folder contains the employees_schema.sql code to load the tables. 

## mod_9_employees.sql documentation
The **employees_schema.sql** should be loaded into PGAdmin4, then the .csv files from the Resources folder imported in the following order: Employees, titles, salaries, departments, dept_manager, and dept_emp.
 - Q1 uses a SELECT statement to gather the data from the employees table, then a JOIN statement is uesed to combine the columns. 
 - Q2 uses a SELECT statement to gather the first name and last name. the WHERE clause limits the responses to those employees with a hire date in the year 1986.
 - Q3 uses a SELECT statement to gather the columns and two JOIN statements to put the data together in a table. 
 - Q4 is simiar to Q3, it uses two JOIN statements, 
 - Q5 uses a WHERE clause to find last names beginning with the letter 'B' and an additional condition of the first name of Hercules. 
 - Q6 uses two JOIN statements to make a table then a WHERE clause to limit responses to department ID 'd007', which is the sales department. 
 - Q7 similarly uses two JOIN statements and a WHERE clause to find employees in both the sales 'd007' and development 'd005' departments. 
 - Q8 uses a SELECT and COUNT to create a column 'Last Names Count'. Then, a GROUP BY is used to group the last names together an ORDER BY clause is used to sort the responses in descending order on the 'Last Names Count' column created in the SELECT statemet. 
