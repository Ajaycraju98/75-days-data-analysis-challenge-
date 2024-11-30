#1.Retrieving the Current Date and Time
SELECT NOW();     -- Returns the current date and time
SELECT CURDATE(); -- Returns the current date
SELECT CURTIME(); -- Returns the current time

#2.Extract specific parts of a date.
SELECT YEAR('2024-11-28');
SELECT MONTH('2024-11-28'); 
SELECT DAY('2024-11-28'); 

#3.HOUR(time), MINUTE(time), SECOND(time): 
SELECT HOUR('14:30:00'); -- Extract time components.

#4.Formatting date and time
SELECT DATE_FORMAT('2024-11-28', '%W, %M %d, %Y'); -- Customizes the output format.

#5.DATE_ADD() and DATE_SUB():
SELECT DATE_ADD('2024-11-28', INTERVAL 10 DAY); 
SELECT DATE_SUB('2024-11-28', INTERVAL 1 MONTH); -- Add or subtract intervals.

#6.Calculating differences
SELECT DATEDIFF('2024-12-01', '2024-11-28'); -- Difference in days between two dates.
SELECT TIMEDIFF('15:30:00', '14:00:00');     -- Difference between two times.

#7.Working with time zones
SET time_zone = '+00:00';
SELECT @@global.time_zone;  -- Set and retrieve time zones





