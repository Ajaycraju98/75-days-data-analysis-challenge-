-- JOINS IN MySQL
-- CREATE A NEW TABLE NAMED STAFF_NEW 
CREATE TABLE STAFF_NEW (staff_id INT PRIMARY KEY,staff_name VARCHAR (30),department VARCHAR(30),salary INT );
DESC STAFF_NEW;
insert into STAFF_NEW  (staff_id ,staff_name,department,salary) values(1,"Rashid","marketing",55000);
insert into STAFF_NEW (staff_id ,staff_name,department,salary)values(2,"ashish","sales",45000),
(3,"kiran","Hr",40000);
select * from STAFF_NEW ;
select * from STAFFS;
#1. INNER JOIN using the two tables such as staff and staff_new
select * from staffs inner join staff_new on staffs.staff_id=staff_new.staff_id;

#2. left join 
select * from staffs left join staff_new on staffs.staff_id=staff_new.staff_id;

#3.right join
select * from staffs right join staff_new on staffs.staff_id=staff_new.staff_id;

#4.full outer join

select * from staffs left join staff_new  on staffs.staff_id=staff_new.staff_id
union
select * from staffs right join staff_new on staffs.staff_id=staff_new.staff_id;


