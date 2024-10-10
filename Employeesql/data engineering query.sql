Drop table if exists titles;
CREATE TABLE titles (
    title_id varchar(255) NOT NULL,
   title varchar(50) NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (title_id)
);

Drop table If Exists employees;
Create table employees  ( 
	emp_no int NOT NULL,
    emp_title varchar(50) NOT NULL,
    birth_date DATE NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    sex varchar(10) NOT NULL,
    hire_date DATE NOT NULL,
    Constraint pk_employees PRIMARY KEY (emp_no)
);



Drop table If exists departments;
CREATE TABLE departments(
    dept_no varchar(50) NOT NULL,
    dept_name varchar(50) NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (dept_no)
);

Drop table if exists dept_manager;
CREATE TABLE dept_manager (
    dept_no varchar(50) NOT NULL,
    emp_no int NOT NULL,
    CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);


Drop Table if exists dept_employee;
CREATE TABLE dept_employee (
    emp_no int NOT NULL,
    dept_no varchar(50) NOT NULL,
    CONSTRAINT pk_dept_employee PRIMARY KEY (emp_no, dept_no)
);


Drop table if exists salaries;
CREATE TABLE salaries (
    emp_no int NOT NULL,
    salary int NOT NULL,
    CONSTRAINT fk_salaries_emp_no FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);


ALTER TABLE dept_employee ADD CONSTRAINT fk_dept_employee_dept_no FOREIGN KEY (dept_no) REFERENCES departments (dept_no);

ALTER TABLE employees ADD CONSTRAINT fk_employees_Emp_title FOREIGN KEY (emp_title) REFERENCES titles (title_id);
