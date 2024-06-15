-- Name : Keerthana K R
-- ID : AF0363623

use studentmanagementsystem;

/* Assume you are managing a university database that tracks student enrollments in various courses. 
You have two tables, "Student" and "Enrollment". The goal is to retrieve information about each student's ID, 
first name, last name, and their enrollment details, including the enrollment ID and the associated course ID.*/

-- Join student and enrollment table using inner join

SELECT s.StudentID, s.FirstName, s.LastName, e.EnrollmentID,e.EnrollmentDate, e.CourseID 
from student as s 
INNER JOIN enrollment as e 
on s.StudentID=e.StudentID;
