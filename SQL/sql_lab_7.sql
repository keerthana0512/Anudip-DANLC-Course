-- Name : Keerthana K R
-- ID : AF0363623

use studentmanagementsystem;

/* Assume you are managing a database of student records, and you need to retrieve information about students born after June 16, 2009. 
What will be the SQL query for this? */

-- Retrieving details of students who born after june 16, 2009 using where clause
SELECT * FROM student WHERE DateOfBirth >'2009-06-16';

/* Assume you have a database containing a "Student" table with information about students, including their first names. 
You want to retrieve records of students whose first names start with either 'A' or 'J'. 
To achieve this, what will be your SQL query? */

-- Retrieving student details whose firstname start with A or J using like
SELECT * FROM student WHERE FirstName LIKE 'A%' or 'J%';

/* Let's consider a scenario where you have a database with a "Student" table that contains information about students, 
including their first names and email addresses. You want to retrieve records of students whose first name is not 'Alice' 
and whose email addresses contain the domain '@example.com'. 
To achieve this, what will be your SQL query? */

-- Retrieving details of student whose firstname is not Alice and email contain '@example.com'
SELECT * FROM student WHERE FirstName != "Alice" and Email LIKE '%@example.com';



/* Create a table Person with PersonID int, FirstName varchar (255), LastName varchar (255) and age (int). Make PersonID PRIMARY KEY. */
CREATE TABLE Person 
(
	PersonID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Age INT
);

DESC person;

/* Create a table Employee with emp_id int, first_name varchar (255), last_name varchar (255) and age (int). Make emp_id PRIMARY KEY. */
CREATE TABLE Employee 
(
	EmpID INT PRIMARY KEY,
    First_Name VARCHAR(255),
    Last_Name VARCHAR(255),
    Age INT
);

DESC employee;

/* Insert data to Person table */

INSERT INTO Person 
VALUES
    (1, 'John', 'Doe', 30),
    (2, 'Jane', 'Smith', 25),
    (3, 'Emily', 'Clark', 22),
    (4, 'Michael', 'Lee', 28),
    (5, 'Sophia', 'Garcia', 24),
    (6, 'Daniel', 'Wang', 31),
    (7, 'Olivia', 'Kim', 27);
    
SELECT * FROM Person;


/* Insert data to Employee table */

INSERT INTO Employee
VALUES
    (101, 'Alice', 'Johnson', 28),
    (102, 'Bob', 'Brown', 35),
    (103, 'Ethan', 'Smith', 30),
    (104, 'Isabella', 'Johnson', 26),
    (105, 'Liam', 'Brown', 33),
    (106, 'Ava', 'Martinez', 29),
    (107, 'Noah', 'Chen', 25);
    
SELECT * FROM employee;


/* Create Union of two tables */

SELECT * FROM person 
UNION
SELECT * FROM employee;
