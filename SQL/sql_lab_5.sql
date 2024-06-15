-- Name : Keerthana K R
-- ID : AF0363623 

use studentmanagementsystem;

-- Lab 1 
/*  Consider a scenario where you want to retrieve information about students from a database table named student 
and display the results in ascending order based on their last names. */  
  
-- Used order by clause to display details in ascending order based on last name.            
SELECT * FROM student 
ORDER BY lastname ASC;



-- Lab 2
/* Consider a scenario where you want to count the number of students 
based on their gender from a database table named Student. */

--  Used group by clause to group by gender and used count function to count the number of students
SELECT Gender, COUNT(*) as Count_of_gender FROM student 
GROUP BY gender;



