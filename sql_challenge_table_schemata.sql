-- NOTE: A portion of the code below was exported from QuickDBD: https://www.quickdatabasediagrams.com/

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(25) NOT NULL,  -- due to length of first_name, setting VARCHAR to 25 out of abundance of caution
    last_name VARCHAR(25) NOT NULL, -- due to length of last_name, setting VARCHAR to 25 out of abundance of caution
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL
);

CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary VARCHAR(6)   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
    title_id VARCHAR(5) PRIMARY KEY NOT NULL,
    title VARCHAR(18) NOT NULL
);

CREATE TABLE departments (
    dept_no VARCHAR(4) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(25)   NOT NULL
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(18)   NOT NULL,
    emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);


CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);

-- import data from csv
-- 1. create schema
-- 2. import data via the UI

-- check employees to confirm import (not required)
SELECT * FROM employees

-- check employees to confirm import (not required)
SELECT * FROM salaries

-- check employees to confirm import (not required)
SELECT * FROM departments

-- check employees to confirm import (not required)
SELECT * FROM dept_emp

-- check employees to confirm import (not required)
SELECT * FROM dept_manager

-- check employees to confirm import (not required)
SELECT * FROM titles

-- check employees to confirm import (not required)
SELECT * FROM departments