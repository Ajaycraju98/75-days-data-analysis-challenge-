select * from staffs;
#ROW NUMBER()
SELECT  staff_id,staff_name,salary,
ROW_NUMBER() OVER (PARTITION BY staff_id ORDER BY salary ) AS staff_row
FROM staffs;

#RANK()
SELECT staff_id,staff_name,salary,
RANK() OVER (ORDER BY salary DESC) AS staff_rank
FROM staffs;

#DENSE RANK()
SELECT staff_id,staff_name,salary,
DENSE_RANK() OVER (ORDER BY salary DESC) AS staff_Dense_Rank
FROM staffs;

#NTILE()
SELECT 
staff_id,
staff_name,salary,
NTILE(4) OVER (ORDER BY salary) AS Quartile
FROM staffs;

#FIRST_VALUE()
SELECT 
staff_id,
staff_name,
FIRST_VALUE(salary) OVER 
(PARTITION BY staff_id ORDER BY
salary) AS First_salary 
FROM staffs;

#LAST_VALUE()
SELECT 
staff_id,staff_name,
LAST_VALUE(salary) OVER (PARTITION BY
staff_id ORDER BY salary ROWS BETWEEN
CURRENT ROW AND UNBOUNDED FOLLOWING) AS   
Last_salary
FROM staffs;

#CUME_DIST()
SELECT  staff_id,staff_name,salary,
CUME_DIST() OVER (ORDER BY salary) AS
Cumulative_Distribution
FROM staffs;

#PERCENT_RANK()
SELECT staff_id,salary,
PERCENT_RANK() OVER (ORDER BY  salary) AS Percent_Rank_staff
FROM staffs;





