-- Table for the "departments.csv" file 
CREATE TABLE departments (
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL,
    PRIMARY KEY (dept_no)
);


-- Table for the "dept_emp.csv" file 
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL
);

---Table for the "dept_manager.csv" file 
CREATE TABLE dept_manager (
    dept_no VARCHAR NOT NULL, 
    emp_no VARCHAR NOT NULL,
    PRIMARY KEY (emp_no)
);

--Table for the "employees.csv" file 
CREATE TABLE employees(
    emp_no INT NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date VARCHAR NOT NULL, 
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date VARCHAR NOT NULL
);

--Table for the "salaries.csv" file
CREATE TABLE salaries(
    emp_no VARCHAR NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no)
);

--Table for the "titles.csv" file 
CREATE TABLE titles(
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    PRIMARY KEY (title_id)
);

ALTER TABLE dept_emp ADD CONSTRAINT fk_emp_no FOREIGN KEY(emp_no) REFERENCES departments(emp_no);
ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_no FOREIGN KEY (dept_no) REFERENCES departments(dept_no);
ALTER TABLE employees ADD CONSTRAINT fk_emp_no FOREIGN KEY(emp_no) REFERENCES salaries(emp_no);
ALTER TABLE employees ADD CONSTRAINT fk_emp_title_id REFERENCES titles(title_id;)

