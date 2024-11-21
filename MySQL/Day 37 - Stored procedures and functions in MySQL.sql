# CREATE A STORED PROCEDURE
DELIMITER //
CREATE PROCEDURE GetstaffDetails(IN id INT, OUT teacher_name VARCHAR(50))
BEGIN
    SELECT staff_name INTO teacher_name 
    FROM staffs
    WHERE staff_id= id;
END //

DELIMITER ;

-- Call the procedure
set @staff_name="alice";
CALL GetstaffDetails(1, @staff_name);
SELECT @staff_name as teacher_name;
select * from staffs;

DELIMITER //
# create a function 
CREATE FUNCTION CalculateTax(price DECIMAL(10,2)) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
RETURN price * 0.18; -- 18% tax calculation
END //

DELIMITER ;

-- Use the function
SELECT CalculateTax(1000) AS TaxAmount;
