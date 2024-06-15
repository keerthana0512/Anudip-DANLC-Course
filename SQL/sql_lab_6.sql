-- Name : Keerthana K R
-- ID : AF0363623

use studentmanagementsystem;

/* 1. Add two more columns in the Employee table named Salary and department and add data into it. 
Now Imagine you work for a company with various departments, and there is a need to analyze employee salaries within the IT department. 
Write a query to retrieve all employees from the "employee" table who have a salary greater than 50000 and are in the 'IT' department. */

-- Adding columns salary and department to employee table
ALTER TABLE employee
ADD COLUMN Salary int not null,
ADD COLUMN Department varchar(20) not null;

-- Displaying table description
DESC employee;

-- Adding values to salary and department columns
UPDATE employee
SET Salary = 60000, Department = 'Engineering' WHERE emp_id=1;
UPDATE Employee
SET Salary = 55000.00, Department = 'Human Resources' WHERE emp_id = 2;
UPDATE Employee
SET Salary = 70000.00, Department = 'Marketing' WHERE emp_id = 3;
UPDATE Employee
SET Salary = 65000.00, Department = 'Sales' WHERE emp_id = 4;
UPDATE Employee
SET Salary = 55000.00, Department = 'IT' WHERE emp_id = 5;

-- Display rows in the employee table
SELECT * FROM employee;

-- Query to retrieve all employees from the "employee" table who have a salary 
-- greater than 50000 and are in the 'IT' department
SELECT * FROM employee WHERE salary > 50000 AND department = 'IT';




/* 2.Imagine you are managing an e-commerce platform, and the holiday season is approaching. 
To capitalize on the festive spirit and boost sales, you decide to organize a special seasonal sale featuring electronics. 
The goal is to offer discounts on electronics and include products with a price less than Rs. 70,000 in the promotion. 
Write a query to find products from the "product" table that are either in the 'Electronics' category or have a price less than 70000.*/

-- Query to find products from the "product" table that are either in the 
-- 'Electronics' category or have a price less than 70000. 
SELECT * FROM product WHERE category='Electronics' OR original_price < 70000;


/* 3. Imagine you are an HR analyst responsible for conducting a comprehensive analysis of average salaries across different departments within a company.
The goal is to understand and compare the average salaries of employees in various departments. 
Write a query to Calculate the average salary of employee in each department from the "employee" table.*/

-- Query to Calculate the average salary of employee in each department from the "employee" table
Select Department, avg(salary) as 'Average Salary' FROM employee GROUP BY department;

