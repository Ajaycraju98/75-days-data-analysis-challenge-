# CREATE A TABLE NAMED NEW EMPLOYEES
CREATE TABLE New_employees (
employee_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
department_id INT,
hire_date DATE,
salary DECIMAL(10, 2) );
desc New_employees;

INSERT INTO New_employees (first_name, last_name, department_id, hire_date, salary)
VALUES
('John', 'Doe', 101, '2024-01-15', 55000.00),
('Jane', 'Smith', 102, '2023-11-01', 60000.00),
('Michael', 'Johnson', 103, '2024-03-20', 75000.00),
('Emily', 'Davis', 101, '2023-07-10', 58000.00),
('Chris', 'Brown', 104, '2023-09-25', 50000.00);
select * from New_employees;
# altering tables 
#1.Adding a column:
alter table New_employees add column age int not null ;
select * from New_employees;

#2.Modifying a column
alter table New_employees modify salary int not null;
desc  New_employees;

#3.Renaming a column
alter table  New_employees rename column department_id to department ;
desc  New_employees;

#4.Dropping a column
ALTER TABLE New_employees DROP COLUMN age ;
desc  New_employees;
# Adding or dropping constraints:

#1.Add a UNIQUE Constraint:
ALTER TABLE New_employees
ADD CONSTRAINT unique_first_last_name UNIQUE (first_name, last_name);
desc  New_employees;

#2.Dropping a constraint:
ALTER TABLE New_employees
DROP CONSTRAINT unique_first_last_name;
desc  New_employees;