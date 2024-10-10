--List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no, e.first_name,e.last_name,e.sex,
       s.salary
from employees e
join salaries s on e.emp_no = s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name,last_name,hire_date from employees
where hire_date >= '01-01-1986' and hire_date < '01-01-1987';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT 
    d.dept_no,
    e.Emp_no,
    e.last_Name,
    e.first_Name
FROM 
    dept_manager d
JOIN 
    employees e ON d.emp_no = e.emp_no;


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT  d.dept_no, 
    e.emp_no, 
    e.last_name, 
    e.first_name, 
    d.dept_name
FROM 
    departments d
JOIN 
    dept_employee de ON d.dept_no = de.dept_no
JOIN 
    employees e ON de.emp_no = e.emp_no;
	
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_employee de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select e.emp_no, e.last_name,e.first_name, d.dept_name
from employees e
JOIN dept_employee de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(*) AS frequency_count
FROM employees
GROUP BY last_name
ORDER BY frequency_count DESC;



	



