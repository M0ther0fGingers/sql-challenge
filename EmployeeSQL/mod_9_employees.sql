-- employees_sql.sql files that were corrupted in git push. Redo question 8. Here’s the last commit before the problem started. 
-- Load the tables
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
emp_no int,
emp_title_id VARCHAR,
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR,
hire_date DATE
);

DROP TABLE IF EXISTS dept_emp;
CREATE TABLE dept_emp (
emp_no int,
dept_no VARCHAR
);

DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
dept_no VARCHAR,
dept_name VARCHAR
);

DROP TABLE IF EXISTS dept_manager;
CREATE TABLE dept_manager (
dept_no VARCHAR,
emp_no int
);

DROP TABLE IF EXISTS titles;
CREATE TABLE titles (
title_id VARCHAR,
title VARCHAR
);

DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries (
emp_no int,
salary int
);

-- Q1: List the employee number, last name, first name, sex, and salary of each employee
SELECT 
   e.emp_no, 
   e.last_name, 
   e.first_name, 
   e.sex,
   s.salary
FROM 
   employees e
JOIN
   salaries s ON e.emp_no = s.emp_no;

-- Q2: List the first name, last name, and hire date for the employees who were hired in 1986
SELECT
   e.first_name,
   e.last_name
from
   employees e
WHERE
   EXTRACT(YEAR FROM e.hire_date) = 1986;

-- Q3: List the manager of each department along with their department number, department name, 
-- employee number, last name, and first name
SELECT 
   dm.dept_no,
   d.dept_name,
   dm.emp_no,
   e.last_name,
   e.first_name
FROM
   dept_manager dm
JOIN 
   departments d ON dm.dept_no = d.dept_no
JOIN 
   employees e ON dm.emp_no = e.emp_no;

-- Q4: List the department number for each employee along with that employee’s employee number, 
-- last name, first name, and department name
SELECT 
   de.dept_no,
   de.emp_no,
   e.last_name, 
   e.first_name,
   d.dept_name
FROM 
   dept_emp de
JOIN
   departments d ON de.dept_no = d.dept_no
JOIN
   employees e ON de.emp_no = e.emp_no;
   
-- Q5: List first name, last name, and sex of each employee whose first name is Hercules 
-- and whose last name begins with the letter B
SELECT 
   e.first_name,
   e.last_name,
   e.sex
FROM 
   employees e
WHERE last_name LIKE 'B%'
AND first_name = 'Hercules';

-- Q6: List each employee in the Sales department, including their employee number, last name, and first name
SELECT 
   de.emp_no,
   e.last_name,
   e.first_name
FROM 
   dept_emp de
JOIN
   employees e ON e.emp_no = de.emp_no
JOIN
   departments d ON d.dept_no = de.dept_no
WHERE
   d.dept_no = 'd007';

-- Q7: List each employee in the Sales and Development departments, including their employee number,
-- last name, first name, and department name
SELECT 
   de.emp_no,
   e.last_name,
   e.first_name,
   d.dept_name
FROM 
   dept_emp de
JOIN
   employees e ON e.emp_no = de.emp_no
JOIN
   departments d ON d.dept_no = de.dept_no
WHERE
   d.dept_no = 'd007' OR d.dept_no = 'd005';

-- Q8: List the frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name)
SELECT e.last_name, COUNT(last_name) AS "Count of Last Name"
FROM
   employees e 
GROUP BY last_name
Order By "Count of Last Name" DESC
