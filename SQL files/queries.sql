-- Q1. Find the employee number, last name, first name, sex and salary for each employee
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees 
LEFT JOIN salaries ON employees.emp_no=salaries.emp_no;

--Q2. List the first name, last name and hire date for employees hired in 1986
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date >= '01-01-1986' AND hire_date <= '12-31-1986'

--Q3. List the manager of each department with the following information 
    -- a) Department number
    -- b) Department name 
    -- c) The managers employee number 
    -- d) The managers first and last name 
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager 
LEFT JOIN departments ON departments.dept_no = dept_manager.dept_no
LEFT JOIN employees ON employees.emp_no = dept_manager.emp_no;

--Q4. List the department of each employee with the following information
    --a) Employee number 
    --b) Last name
    --c) First name 
    --d) Department Name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM dept_emp
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no
LEFT JOIN employees ON dept_emp.emp_no = employees.emp_no;

--Q5. List the first name, last name and sex for all employees whose first name is Hercules and last name begins with "B"
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'; 

--Q6. List all the employees in the sales department as well as their:
    --a) Employee number 
    --b) Last name 
    --c) First name 
    --d) Department name 
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name 
FROM dept_emp 
LEFT JOIN departments ON departments.dept_no = dept_emp.dept_no
LEFT JOIN employees employees.emp_no = dept_emp.emp_no 
WHERE departments.dept_name = 'Sales';

--Q7. List all the employees in the sales and development departments including: 
    --a) Employee number 
    --b) Last name 
    --c) First name 
    --d) Department name 
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name 
FROM dept_emp 
LEFT JOIN departments ON departments.dept_no = dept_emp.dept_no
LEFT JOIN employees employees.emp_no = dept_emp.emp_no 
WHERE departments.dept_name = 'Sales' OR departments.dept_name ='Development';

--Q8. In decending order, list the frequency count of employee last name (hpw many employees share the same last name)
SELECT last_name, COUNT(last_name) AS "frequency"
FROM employees 
GROUP BY last_name 
ORDER BY "frequency" DESC;