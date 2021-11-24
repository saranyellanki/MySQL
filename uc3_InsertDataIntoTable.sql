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
