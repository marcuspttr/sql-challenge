--For when I mess up.
drop table employees;
drop table titles;
drop table salaries;
drop table departments;
drop table dept_manager;
drop table dept_emp;

--Creating the tables: titles, employees, salaries, departments, department managers, and employee departments
CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(50)
);

SELECT*FROM titles;

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title VARCHAR(5),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id),
	birth_date VARCHAR(10),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(1),
	hire_date VARCHAR(10)
);

SELECT*FROM employees;


CREATE TABLE salaries(
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT
);

SELECT*FROM salaries;

CREATE TABLE departments(
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(50)
);

SELECT*FROM departments;

CREATE TABLE dept_manager(
	dept_no VARCHAR(4),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT*FROM dept_manager;

CREATE TABLE dept_emp(
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(4),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT*FROM dept_emp;