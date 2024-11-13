-- create a table tamed staffs

create table staffs(staff_id int,staff_name varchar(30),department varchar(30),salary int);
desc staffs;
insert into staffs(staff_id ,staff_name,department,salary) values(1,"ajay","marketing",25000);
insert into staffs(staff_id ,staff_name,department,salary) values(2,"arun","sales",45000),
(3,"shanthan","Hr",20000),(4,"das","finance",15000),(5,"joseph","sales",20000);

select * from staffs;
select * from staffs where salary<20000;
select  staff_name from staffs where salary between 20000 and 40000;
select staff_name,salary from staffs order by salary asc;