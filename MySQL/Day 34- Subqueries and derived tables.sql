#sub queries -- single row subqueries
select * from staffs ;
select  max(salary) from staffs ;
select staff_name,salary from staffs where salary =( select  max(salary) from staffs );
SELECT staff_name FROM staffs WHERE staff_id= (SELECT staff_id FROM staffs WHERE department ="Hr");

#sub queries -- Multiple row subqueries
SELECT staff_name FROM staffs WHERE department IN ( SELECT department FROM staffs WHERE salary = 25000 );

##sub queries -- correlated subqueries
select staff_name,salary from staffs where salary>(select salary from staffs where staff_name="Ajay");

# Derived table 
SELECT department, AVG(salary) AS avg_salary FROM ( SELECT department, salary FROM staffs WHERE 
department = "sales ") AS derived_table GROUP BY salary;
