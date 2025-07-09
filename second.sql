-- show databases;-- USE Parks_and_Recreation;-- SHOW TABLES FROM Parks_and_Recreation;-- USE Parks_and_Recreation;-- SHOW TABLES;-- USE Parks_and_Recreation;
-- UNIONS
SELECT first_name, last_name
 FROM employee_demographics
 UNION ALL
SELECT first_name, last_name
 FROM employee_salary;



