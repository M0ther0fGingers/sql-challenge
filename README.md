# sql-challenge: employees_sql
Module 9 Challenge Files
## Folder Structure
The sql-challenge repo contains the sql code, images, and one subfolder, Resources. 
 - The employees_sql.sql file is the code to run in PGAdmin4. This code loads the tables and answers questions 1-8. 
 - employees_sql_QuickDBD.png is the image file of the diagram.
 - employees_sql_diagram.sql is the sql version of the diagram. 
 - The resources folder contains the .csv files to import into PGAdmin4 and the instructions for the challenge. 

## employees_sql.sql documentation
The employees_sql.sql should be loaded into PGAdmin4, then the .csv files from the Resources folder imported in the following order: Employees, titles, salaries, departments, dept_manager, and dept_emp.
 - Q1 uses a SELECT statement to gather the data from the employees table, then a JOIN statement is uesed to combine the columns. 
 - Q2 uses a SELECT statement to gather the first name and last name. the WHERE clause limits the responses to those employees with a hire date in the year 1986.
 - Q3 uses a SELECT statement to gather the columns and two JOIN statements to put the data together in a table. 
 - Q4 is simiar to Q3, it uses two JOIN statements, 
 - Q5 uses a WHERE clause to find last names beginning with the letter 'B' and an additional condition of the first name of Hercules. 
 - Q6 uses two JOIN statements to make a table then a WHERE clause to limit responses to department ID 'd007', which is the sales department. 
 - Q7 similarly uses two JOIN statements and a WHERE clause to find employees in both the sales 'd007' and development 'd005' departments. 
 - Q8 uses a SELECT and COUNT to create a column 'Last Names Count'. Then, a GROUP BY is used to group the last names together an ORDER BY clause is used to sort the responses in descending order on the 'Last Names Count' column created in the SELECT statemet. 
