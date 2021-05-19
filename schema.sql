CREATE TABLE titles
(
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(25)
);

CREATE TABLE employees
(
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(10),
    birth_date VARCHAR(10),
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    sex CHAR,
    hire_date VARCHAR(10)
);

CREATE TABLE dept
(
    dept_no VARCHAR(4) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(20) NOT NULL
);

CREATE TABLE dept_emp
(
    emp_no INT,
    dept_no VARCHAR(4),
	CONSTRAINT fk_employees
		FOREIGN KEY(emp_no) 
			REFERENCES employees(emp_no),
	CONSTRAINT fk_dept
		FOREIGN KEY(dept_no) 
			REFERENCES dept(dept_no)
);

CREATE TABLE dept_manager
(
    dept_no VARCHAR(4),   
    emp_no INT,
	CONSTRAINT fk_employees
		FOREIGN KEY(emp_no) 
			REFERENCES employees(emp_no),
	CONSTRAINT fk_dept
		FOREIGN KEY(dept_no) 
			REFERENCES dept(dept_no)
);

CREATE TABLE salaries
(
    emp_no INT,
    salary INT,
	CONSTRAINT fk_employees
		FOREIGN KEY(emp_no) 
			REFERENCES employees(emp_no)
);

