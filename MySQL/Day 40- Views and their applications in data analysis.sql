-- simple view 
select * from staffs;
CREATE VIEW Staffs_view AS SELECT staff_id,staff_name,department from  staffs;
select * from Staffs_view;
insert into Staffs_view (staff_id,staff_name,department) values(7,"Pranav","Marketing");

-- Complex view 
CREATE VIEW staff_department_View AS
SELECT 
    staff_name as Employeees,
    COUNT(staff_id) AS Total_staffs,
    avg(salary) as average_salary
    from staffs group by staff_id,staff_name ;
select * from staff_department_View;