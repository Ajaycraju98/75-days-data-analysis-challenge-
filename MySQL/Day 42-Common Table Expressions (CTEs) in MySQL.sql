#Retrieve staffs earning more than $40,000:

WITH HighEarners AS 
(SELECT staff_id,staff_name,salary
FROM staffs
WHERE salary > 40000)
SELECT * FROM HighEarners;
