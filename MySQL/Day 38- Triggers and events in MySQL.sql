# create a BEFORE INSERT TRIGGER 
DELIMITER $$ 
CREATE TRIGGER before_insert_staff
before insert on staffs for each row
begin
if new.salary<20000
then
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT= "staffs  with salary less than 20000 not allowed";
end if;
END $$ 
DELIMITER ;

show triggers from product;
insert into staffs (staff_id,staff_name,department,salary) values (7,"jibi","marketing",15000);

# create an event 
SET GLOBAL event_scheduler = ON;


CREATE EVENT auto_delete_old_records
ON SCHEDULE EVERY 1 DAY
DO
DELETE FROM logs WHERE created_at < NOW() - INTERVAL 30 DAY;

SHOW EVENTS;
DROP EVENT IF EXISTS auto_delete_old_records;
SELECT * FROM INFORMATION_SCHEMA.EVENTS WHERE EVENT_NAME = 'auto_delete_old_records';