
-- List the following for each employee: employee number, last name, first name, sex, and salary. --

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
    FROM employees
        INNER JOIN salaries ON employees.emp_no = salaries.emp_no
    
-- List first name, last name, and hire date for employees who were hired in 1986. --


SELECT employees.first_name, employees.last_name, CAST(employees.hire_date AS DATE)
    FROM employees
        WHERE CAST(employees.hire_date AS DATE)  >= '1986-01-01'
        AND CAST(employees.hire_date AS DATE)  < '1987-01-01'
			ORDER BY CAST(employees.hire_date AS DATE) ASC

-- Manager info: department number, department name, the manager's employee number, last name, first name --

SELECT dept_manager.dept_no, dept.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
    FROM dept_manager
		INNER JOIN employees ON dept_manager.emp_no = employees.emp_no
		INNER JOIN dept ON dept_manager.dept_no = dept.dept_no
    
-- List the department of each employee with the following information: employee number, last name, first name, and department name. --

SELECT employees.emp_no,employees.last_name,employees.first_name,dept.dept_name
    FROM employees
		INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
		INNER JOIN dept ON dept_emp.dept_no = dept.dept_no
    
-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."--


SELECT first_name, last_name, sex 
    FROM employees
        WHERE first_name = 'Hercules'
        AND last_name LIKE 'B%'

-- List all employees in the Sales department, including their employee number, last name, first name, and department name --

SELECT employees.emp_no,employees.last_name,employees.first_name,dept.dept_name 
    FROM employees
        INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
		INNER JOIN dept ON dept_emp.dept_no = dept.dept_no
			WHERE dept.dept_name = 'Sales'
        
-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name -- 

SELECT employees.emp_no,employees.last_name,employees.first_name,dept.dept_name 
    FROM employees
        INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
		INNER JOIN dept ON dept_emp.dept_no = dept.dept_no
			WHERE dept.dept_name = 'Sales'
			OR dept.dept_name = 'Development'

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name --

SELECT employees.last_name, count(employees.last_name)
    FROM employees
        GROUP BY employees.last_name
            ORDER BY employees.last_name ASC
            

            





