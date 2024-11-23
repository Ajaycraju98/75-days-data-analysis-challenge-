START TRANSACTION;
-- Deduct the amount from the sender's account
select * from staffs;
UPDATE staffs  SET salary= salary- 500 WHERE staff_id = 1;
select * from staffs;

-- Add the amount to the receiver's account
UPDATE staffs  SET salary= salary + 500 WHERE staff_id = 2;
select * from staffs;
-- Commit the transaction
COMMIT;
-- If any of the updates fail, you can use ROLLBACK to undo all changes:
ROLLBACK;
select * from staffs;