CREATE DATABASE EmployeeManagement;
USE EmployeeManagement;
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    hire_date DATE,
    department_id INT,
    salary_id INT
);
CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100)
);
CREATE TABLE Salaries (
    salary_id INT PRIMARY KEY AUTO_INCREMENT,
    base_salary DECIMAL(10, 2),
    bonus DECIMAL(10, 2)
);
INSERT INTO Departments (department_name)
VALUES ('HR'), ('IT'), ('Finance'), ('Marketing');
INSERT INTO Salaries (base_salary, bonus)
VALUES (50000, 5000), (60000, 6000), (70000, 7000), (80000, 8000);
INSERT INTO Employees (first_name, last_name, email, hire_date, department_id, salary_id)
VALUES 
('Vaibhav', 'Patil', 'vaibhav.patil@example.com', '2022-01-15', 2, 2),
('Gaurav', 'Bankar', 'gaurav.bankar@example.com', '2023-03-20', 1, 1),
('Shivam', 'Sonawane', 'shivam.sonawane@example.com', '2021-11-30', 3, 3);
SELECT * FROM Employees;
SELECT e.first_name, e.last_name, d.department_name
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id;
SELECT e.first_name, e.last_name, s.base_salary, s.bonus
FROM Employees e
JOIN Salaries s ON e.salary_id = s.salary_id;
INSERT INTO Employees (first_name, last_name, email, hire_date, department_id, salary_id)
VALUES ('Alice', 'Jones', 'alice.jones@example.com', '2024-01-05', 4, 4);
UPDATE Salaries
SET base_salary = 90000, bonus = 9000
WHERE salary_id = 3;
DELETE FROM Employees
WHERE employee_id = 1;
