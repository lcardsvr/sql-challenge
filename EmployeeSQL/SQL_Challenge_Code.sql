drop table departments_db
drop table dept_emp_db
drop table dept_manager_db
drop table employees_db
drop table salaries_db
drop table titles_db 

CREATE TABLE "departments_db" (
    "dept_no" varchar   NOT NULL,
    "dept_name" varchar   NOT NULL,
    CONSTRAINT "pk_departments_db" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_emp_db" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar   NOT NULL
);

CREATE TABLE "dept_manager_db" (
    "dept_no" varchar   NOT NULL,
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_dept_manager_db" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "employees_db" (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar   NOT NULL,
    "birth_date" varchar   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" varchar   NOT NULL,
    CONSTRAINT "pk_employees_db" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries_db" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_salaries_db" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "titles_db" (
    "title_id" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    CONSTRAINT "pk_titles_db" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "departments_db" ADD CONSTRAINT "fk_departments_db_dept_no" FOREIGN KEY("dept_no")
REFERENCES "dept_manager_db" ("dept_no");

ALTER TABLE "dept_emp_db" ADD CONSTRAINT "fk_dept_emp_db_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees_db" ("emp_no");

ALTER TABLE "dept_emp_db" ADD CONSTRAINT "fk_dept_emp_db_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments_db" ("dept_no");

ALTER TABLE "dept_manager_db" ADD CONSTRAINT "fk_dept_manager_db_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees_db" ("emp_no");

ALTER TABLE "employees_db" ADD CONSTRAINT "fk_employees_db_emp_no" FOREIGN KEY("emp_no")
REFERENCES "salaries_db" ("emp_no");

-- ALTER TABLE "titles_db" ADD CONSTRAINT "fk_titles_db_title_id" FOREIGN KEY("title_id")
-- REFERENCES "employees_db" ("emp_title_id");


select * from departments_db ;

select * from dept_emp_db;

select * from dept_manager_db;

select * from employees_db;

select * from salaries_db;

select * from titles_db ;



-- List the employee number, last name, first name, sex, and salary of each employee.

select employees_db.emp_no as "Employee Number", employees_db.last_name as "Last Name", employees_db.first_name as "First Name", employees_db.sex as "Sex", salaries_db.salary as "Salary"
from employees_db
inner join salaries_db
on employees_db.emp_no = salaries_db.emp_no;


-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.

select employees_db.first_name as "First Name", employees_db.last_name as "Last Name", employees_db.hire_date as "Hire Date"
from employees_db
where employees_db.hire_date like '%/1986';

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

select dept_manager_db.dept_no as "Department Number", departments_db.dept_name as "Department Name", employees_db.emp_no as "Employee Number", employees_db.last_name as "Last Name", employees_db.first_name as "First Name" 
from departments_db
left join dept_manager_db
on dept_manager_db.dept_no = departments_db.dept_no
left join employees_db
on dept_manager_db.emp_no = employees_db.emp_no;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

select departments_db.dept_no as "Department Number",  employees_db.emp_no as "Employee Number", employees_db.last_name as "Last Name", employees_db.first_name as "First Name",departments_db.dept_name as "Department Name" 
from departments_db
left join dept_emp_db
on dept_emp_db.dept_no = departments_db.dept_no
left join employees_db
on dept_emp_db.emp_no = employees_db.emp_no;

--5. List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select employees_db.first_name as "First Name", employees_db.last_name as "Last Name", employees_db.sex as "Sex"
from employees_db
where employees_db.first_name = 'Hercules' 
and employees_db.last_name like 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.

select dept_emp_db.dept_no as "Department Number",  employees_db.emp_no as "Employee Number", employees_db.last_name as "Last Name", employees_db.first_name as "First Name"
from employees_db
left join dept_emp_db
on dept_emp_db.emp_no = employees_db.emp_no
where dept_emp_db.dept_no = 'd007';


-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

Create view Dev_Sales as
select *
from departments_db
where dept_name = 'Development'
or dept_name = 'Sales'

Create view Dev_Sales_emp_no as
select dept_emp_db.emp_no, dept_emp_db.dept_no, Dev_Sales.dept_name
from dept_emp_db
inner join Dev_Sales on
Dev_Sales.dept_no = dept_emp_db.dept_no


select employees_db.emp_no as "Employee Number", employees_db.last_name as "Last Name", employees_db.first_name as "First Name", Dev_Sales_emp_no.dept_name as "Department Name"
from employees_db
inner join Dev_Sales_emp_no on
employees_db.emp_no = Dev_Sales_emp_no.emp_no

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT employees_db.last_name as "Last Name", COUNT(employees_db.last_name) AS "Number of occurences"
FROM employees_db
GROUP BY "Last Name"
ORDER BY "Last Name" DESC;

