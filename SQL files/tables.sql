-- Table for the "departments.csv" file 
CREATE TABLE departments (
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL,
    PRIMARY KEY (dept_no),
    FOREIGN KEY (dept_no) REFERENCES dept_manager(dept_no)
);


-- Table for the "dept_emp.csv" file 
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL, 
    PRIMARY KEY (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

---Table for the "dept_manager.csv" file 
CREATE TABLE dept_manager (
    dept_no VARCHAR NOT NULL, 
    emp_no VARCHAR NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (dept_no) REFERENCES deptartments(dept_no) 
);

--Table for the "employees.csv" file 
CREATE TABLE employees(
    emp_no INT NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    firth_date DATE NOT NULL, 
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id) 
);

--Table for the "salaries.csv" file
CREATE TABLE salaries(
    emp_no VARCHAR NOT NULL,
    salry INT NOT NULL,
    PRIMARY KEY (emp_no)
);

--Table for the "titles.csv" file 
CREATE TABLE titles(
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    PRIMARY KEY (title_id)
);

