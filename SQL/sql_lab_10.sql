-- Name : Keerthana K R
-- ID : AF0363623

use studentmanagementsystem;

/*1.	Assume a university where students can enroll in various courses. Now, write down a FULL outer JOIN query to retrieve the details.*/

SELECT * FROM student as s LEFT JOIN enrollment as e ON s.StudentID=e.StudentID
UNION 
SELECT * FROM student as s RIGHT JOIN enrollment as e ON s.StudentID=e.StudentID;



/*2.	Assume a university where students can enroll in various courses. Now, write down a Natural JOIN query to retrieve the details.*/

SELECT * FROM student NATURAL JOIN enrollment;



