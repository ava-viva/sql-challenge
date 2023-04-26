-- creating the departments table. It has a dept_no primary key
CREATE TABLE departments (
	dept_no varchar(5) PRIMARY KEY,
	dept_name varchar(30)
);
-- creating the titles table. It has a title_id primary key
CREATE TABLE titles (
	title_id varchar(5) PRIMARY KEY,
	title varchar(30)
);

-- creating the employees table. It has a emp_no primary key and emp_title_id from titles table 
CREATE TABLE employees (
	emp_no varchar(10) PRIMARY KEY,
	emp_title_id varchar(5), 
	FOREIGN KEY (emp_title_id) references titles(title_id),
	birth_date date,
	first_name varchar(45),
	last_name varchar(45),
	sex varchar(1),
	hire_date date
);

-- creating the department manager table. It has a dept_no from departments table
CREATE TABLE dept_manager (
	dept_no varchar(5), 
	FOREIGN KEY (dept_no) references departments(dept_no),
	emp_no varchar(10)
);
-- creating the department manager table. It has a dept_no from departments table as well as emp_no from employees table
CREATE TABLE dept_emp (
	emp_no varchar(10), 
	FOREIGN KEY (emp_no) references employees(emp_no),
	dept_no varchar(5), 
	FOREIGN KEY (dept_no) references departments(dept_no)
);
-- creating the salaries table. It has a emp_no from employees table
CREATE TABLE salaries (
	emp_no varchar(10), 
	FOREIGN KEY(emp_no) references employees(emp_no),
	salary int
);

-- evaluating the tables :
SELECT * FROM departments;
SELECT * FROM titles;	
SELECT * FROM employees;	
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;	
SELECT * FROM salaries;


