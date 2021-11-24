CREATE DATABASE payroll_service;
USE payroll_service;
CREATE TABLE employee_payroll (
		id int NOT NULL AUTO_INCREMENT,
		name varchar(100) NOT NULL,
		salary double NOT NULL,
		start_date DATE NOT NULL,
        PRIMARY KEY (id)
);
DESC employee_payroll;

INSERT INTO employee_payroll (name,salary,start_date) VALUES 
('Saran',20000,'2021-09-30'),
('Madhukar',30000,'2021-10-04'),
('Rakesh',35000,'2021-09-15'),
('Manasa',33000,'2021-09-01'),
('Dinesh',20000,'2021-07-01'),
('Chandu',25000,'2021-08-20'),
('Sirisha',50000,'2021-10-10'),
('Santhan',100000,'2021-05-03');

SELECT * FROM employee_payroll;

SELECT salary 
FROM employee_payroll 
WHERE name = 'saran';

SELECT * 
FROM employee_payroll 
WHERE start_date BETWEEN '2021-09-10' AND DATE(NOW());

ALTER TABLE employee_payroll
ADD gender varchar(1) NOT NULL
AFTER name;

UPDATE employee_payroll SET gender = 'M' 
WHERE name = 'saran' or name = 'madhukar' or name = 'rakesh' or name = 'dinesh' or name = 'chandu' or name = 'santhan';

UPDATE employee_payroll SET gender = 'F' 
WHERE name = 'manasa' or name = 'sirisha';

SELECT SUM(salary) AS 'female salary sum' 
FROM employee_payroll
WHERE gender = 'F' GROUP BY gender;

SELECT SUM(salary) AS 'male salary sum' 
FROM employee_payroll
WHERE gender = 'M' GROUP BY gender;

SELECT AVG(salary) AS 'male salary avg' 
FROM employee_payroll
WHERE gender = 'M' GROUP BY gender;

SELECT AVG(salary) AS 'female salary avg' 
FROM employee_payroll
WHERE gender = 'F' GROUP BY gender;

SELECT MAX(salary) AS 'maximum salary male' 
FROM employee_payroll
WHERE gender = 'M' GROUP BY gender;

SELECT MAX(salary) AS 'maximum salary female' 
FROM employee_payroll
WHERE gender = 'F' GROUP BY gender;

SELECT MIN(salary) AS 'minimum salary male' 
FROM employee_payroll
WHERE gender = 'M' GROUP BY gender;

SELECT MIN(salary) AS 'minimum salary female'  
FROM employee_payroll
WHERE gender = 'F' GROUP BY gender;

SELECT COUNT(*) AS 'male count' 
FROM employee_payroll
WHERE gender = 'M';

SELECT COUNT(*) AS 'female count' 
FROM employee_payroll
WHERE gender = 'F' GROUP BY gender;