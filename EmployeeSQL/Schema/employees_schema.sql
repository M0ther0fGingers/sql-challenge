--Employees.sql table Schema
-- load tables

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
