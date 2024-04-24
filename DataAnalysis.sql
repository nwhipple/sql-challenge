-- Q1 list the employee number, last name, first name, sex and salary of each employee
select first_name, last_name, sex, salary 
from 
	employee
		LEFT JOIN
	salaries ON salaries.emp_no = employee.emp_no;
	
-- Q2 List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employee
WHERE hire_Date >= '1986-01-01' AND hire_Date <= '1986-12-31';

-- Q3 List the manager of each department 
-- along with their department number, department name, employee number, last name, and first name.
SELECT departments.dept_no, departments.dept_name, employee.emp_no, last_name, first_name
       FROM dept_manager
		LEFT JOIN
	departments ON departments.dept_no = dept_manager.dept_no
		LEFT JOIN
	employee ON employee.emp_no = dept_manager.emp_no;
	
-- Q4 List the department number for each employee along 
-- with that employee’s employee number, last name, first name, and department name.
SELECT dept_emp.dept_no, employee.emp_no, last_name, first_name, departments.dept_name
       FROM employee
		LEFT JOIN
	dept_emp ON dept_emp.emp_no = employee.emp_no
		LEFT JOIN
	departments ON departments.dept_no = dept_emp.dept_no;

-- Q5 List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name, last_name, sex 
from 
	employee
where
	first_name = 'Hercules' AND last_name like 'B%';
	
-- Q6 List each employee in the Sales department, including their employee number, last name, and first name.
SELECT employee.emp_no, last_name, first_name, departments.dept_name
       FROM employee
		LEFT JOIN
	dept_emp ON dept_emp.emp_no = employee.emp_no
		LEFT JOIN
	departments ON departments.dept_no = dept_emp.dept_no
	WHERE departments.dept_name = 'Sales';

-- Q7 List each employee in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.
SELECT employee.emp_no, last_name, first_name, departments.dept_name
       FROM employee
		LEFT JOIN
	dept_emp ON dept_emp.emp_no = employee.emp_no
		LEFT JOIN
	departments ON departments.dept_no = dept_emp.dept_no
	WHERE departments.dept_name IN('Sales','Development');
	
-- Q8 List the frequency counts, in descending order, of all the employee 
-- last names (that is, how many employees share each last name).
	SELECT last_name, COUNT(last_name) FROM employee
	GROUP BY last_name
	ORDER BY last_name DESC;