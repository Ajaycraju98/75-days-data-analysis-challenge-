# Creating an Index: 
CREATE INDEX idx_staff_name ON staffs(staff_name);
SHOW INDEX FROM staffs;
INSERT INTO staffs (staff_id,staff_name,department,salary) VALUES (6,'Alice',"marketing",25000);
SELECT * FROM staffs WHERE staff_name = 'Alice';

#Composite Index:
CREATE INDEX idx_SALARY_STAFF ON staffs(staff_name,salary);
SHOW INDEX FROM staffs;
INSERT INTO staffs (staff_name,salary) VALUES ('NEETHU',42000 );
SELECT * FROM staffs WHERE staff_name = 'NEETHU';
select * from staffs;
#Dropping an Index:
DROP INDEX idx_staff_name ON staffs;
DROP INDEX idx_SALARY_STAFF ON staffs;
SHOW INDEX FROM staffs;

