# Module 9 Challenge


## Background

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modelling, data engineering, and data analysis, respectively.

## Data Modelling

ERD Sketch

![image](/EmployeeSQL_Sketch.png)


## Data Engineering

Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

Remember to specify the data types, primary keys, foreign keys, and other constraints.

For the primary keys, verify that the column is unique. Otherwise, create a composite key Links to an external site., which takes two primary keys to uniquely identify a row.

Be sure to create the tables in the correct order to handle the foreign keys.

Import each CSV file into its corresponding SQL table.

## Data Analysis

1. List the employee number, last name, first name, sex, and salary of each employee.

select employees_db.emp_no as "Employee Number", employees_db.last_name as "Last Name", employees_db.first_name as "First Name", employees_db.sex as "Sex", salaries_db.salary as "Salary"
from employees_db
inner join salaries_db
on employees_db.emp_no = salaries_db.emp_no;

![image](/Employee_Info_Salary.PNG)

2. List the first name, last name, and hire date for the employees who were hired in 1986.

select employees_db.first_name as "First Name", employees_db.last_name as "Last Name", employees_db.hire_date as "Hire Date"
from employees_db
where employees_db.hire_date like '%/1986';

![image](/Employee_hired_1986.PNG)

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

select dept_manager_db.dept_no as "Department Number", departments_db.dept_name as "Department Name", employees_db.emp_no as "Employee Number", employees_db.last_name as "Last Name", employees_db.first_name as "First Name" 
from departments_db
left join dept_manager_db
on dept_manager_db.dept_no = departments_db.dept_no
left join employees_db
on dept_manager_db.emp_no = employees_db.emp_no;

![image](/Managers_Per_Department.PNG)

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

select departments_db.dept_no as "Department Number",  employees_db.emp_no as "Employee Number", employees_db.last_name as "Last Name", employees_db.first_name as "First Name",departments_db.dept_name as "Department Name" 
from departments_db
left join dept_emp_db
on dept_emp_db.dept_no = departments_db.dept_no
left join employees_db
on dept_emp_db.emp_no = employees_db.emp_no;

![image](/Department_Number-Name_Employee_Name.PNG)

5. List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select employees_db.first_name as "First Name", employees_db.last_name as "Last Name", employees_db.sex as "Sex"
from employees_db
where employees_db.first_name = 'Hercules' 
and employees_db.last_name like 'B%';

![image](/Employees_Hercules_B.PNG)

6. List each employee in the Sales department, including their employee number, last name, and first name.

select dept_emp_db.dept_no as "Department Number",  employees_db.emp_no as "Employee Number", employees_db.last_name as "Last Name", employees_db.first_name as "First Name"
from employees_db
left join dept_emp_db
on dept_emp_db.emp_no = employees_db.emp_no
where dept_emp_db.dept_no = 'd007';

![image](/Sales_Employees.PNG)

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).



## Submission

1. Submitted and available in GitHub under https://github.com/lcardsvr/sql-challenge

2. Presentation notebook available under https://github.com/lcardsvr/Project-1---Looking-for-work-/blob/main/Looking_for_Work_presentation.ipynb

3. Scratch pad with more calculations, further summaries and datasets including the The Australian Skills Classification (ASC) information available under https://github.com/lcardsvr/Project-1---Looking-for-work-/blob/main/Looking_for_Work.ipynb

4. To make use of the code a geoapify key is required.

