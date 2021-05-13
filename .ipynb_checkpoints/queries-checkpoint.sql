
-- List the following for each employee: employee number, last name, first name, sex, and salary. --

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
    FROM employees, salaries
    
-- List first name, last name, and hire date for employees who were hired in 1986. --

SELECT employees.first_name, employees.last_name, employees.hire_date 
    FROM employees
        WHERE TO_DATE(employees.hire_date) > 1984
        AND TO_DATE(employees.hire_date) < 1986

-- Manager info: department number, department name, the manager's employee number, last name, first name --

SELECT dept_manager.dept_no, dept.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
    FROM dept_manager,dept,employees
    
-- List the department of each employee with the following information: employee number, last name, first name, and department name. --

SELECT employees.emp_no,employees.last_name,employees.first_name,dept.dept_name
    FROM employees,dept
    
-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."--

SELECT first_name, last_name, sex, 
    FROM employees
        WHERE first_name = 'Hercules'
        AND last_name = 'B%'

-- List all employees in the Sales department, including their employee number, last name, first name, and department name --

SELECT employees.emp_no,employees.last_name,employees.first_name,dept.dept_name 
    FROM employees,dept
        WHERE dept.dept_name = 'Sales'
        
-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name -- 

SELECT employees.emp_no,employees.last_name,employees.first_name,dept.dept_name
    FROM employees,dept
        WHERE dept.dept_name = 'Sales'
        OR dept.dept_name = 'Development'

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name --

SELECT count(employees.last_name)
    FROM employees
        GROUP BY employees.last_name
            ORDER BY employees.last_name ASC
            

            





