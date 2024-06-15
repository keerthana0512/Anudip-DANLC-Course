-- Name : Keerthana K R
-- ID : AF0363623

use studentmanagementsystem;

/*1.	Let\'s consider a scenario where you have a database tracking student enrollment and some students may not be enrolled in any courses.
John Doe (StudentID: 1) is enrolled in courses with EnrollmentIDs 101 and 102.
Jane Smith (StudentID: 2) is enrolled in courses with EnrollmentIDs 103 and 104.
Bob Johnson (StudentID: 3) is not enrolled in any courses.
Now, run RIGHT OUTER JOIN query to retrieve data.*/

-- Join students and enrollments table using right join
SELECT * FROM enrollments as e RIGHT JOIN students as s
ON e.StudentID=s.StudentID;


/*2.	Assume a university where students can enroll in various courses. Here are some fictional details:
Now, write a LEFT JOIN query to retrieve the data.*/

-- Joining students and enrollments table using left join
SELECT * FROM students as s LEFT JOIN enrollments as e
ON s.StudentID=e.StudentID;