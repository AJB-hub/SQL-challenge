
CREATE TABLE dept
(
    dept_no VARCHAR(4) NOT NULL,
    dept_name VARCHAR(20) NOT NULL
)

CREATE TABLE dept_emp
(
    emp_no INT,
    dept_no VARCHAR(4)
)

CREATE TABLE dept_manager
(
    dept_no VARCHAR(4)    
    emp_no INT,
)

CREATE TABLE employees
(
    emp_no INT,
    emp_title_id VARCHAR(10),
    birth_date VARCHAR(10),
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    sex CHAR,
    hire_date VARCHAR(10)
)

CREATE TABLE salaries
(
    emp_no INT,
    salary INT
)

CREATE TABLE titles
(
    title_id VARCHAR(5),
    title VARCHAR(25)
)





