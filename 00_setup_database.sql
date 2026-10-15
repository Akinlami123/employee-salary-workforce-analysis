
-- Employee Salary and Workforce Analysis
-- Setup script: creates the employees table and inserts 20 fictional records.
-- Run this script once in a new, empty PostgreSQL database.

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(100),
    job_title VARCHAR(100),
    salary NUMERIC(12,2),
    years_experience INT,
    hire_date DATE
);

INSERT INTO employees
    (employee_id, first_name, last_name, department, job_title,
     salary, years_experience, hire_date)
VALUES
(1, 'James', 'Carter', 'IT', 'Data Analyst', 62000, 3, '2023-04-10'),
(2, 'Sarah', 'Johnson', 'HR', 'HR Manager', 68000, 8, '2019-06-17'),
(3, 'Michael', 'Brown', 'Finance', 'Accountant', 55000, 4, '2022-02-14'),
(4, 'Emily', 'Davis', 'IT', 'Software Engineer', 85000, 6, '2020-09-21'),
(5, 'Daniel', 'Wilson', 'Marketing', 'Marketing Analyst', 58000, 3, '2023-01-09'),
(6, 'Olivia', 'Taylor', 'Sales', 'Sales Manager', 75000, 7, '2020-03-16'),
(7, 'David', 'Anderson', 'IT', 'Database Administrator', 79000, 5, '2021-07-12'),
(8, 'Sophia', 'Thomas', 'Finance', 'Financial Analyst', 64000, 5, '2021-11-08'),
(9, 'Matthew', 'Jackson', 'HR', 'Recruiter', 48000, 2, '2024-01-15'),
(10, 'Isabella', 'White', 'Marketing', 'Marketing Manager', 72000, 8, '2018-08-20'),
(11, 'Joseph', 'Harris', 'Sales', 'Sales Representative', 46000, 2, '2024-03-11'),
(12, 'Mia', 'Lee', 'IT', 'Data Scientist', 92000, 7, '2019-10-07'),
(13, 'Christopher', 'Thompson', 'Finance', 'Finance Manager', 88000, 10, '2016-05-23'),
(14, 'Amelia', 'Garcia', 'HR', 'HR Assistant', 39000, 1, '2025-02-03'),
(15, 'Andrew', 'Martinez', 'Sales', 'Account Executive', 57000, 4, '2022-08-15'),
(16, 'Charlotte', 'Robinson', 'Marketing', 'Content Specialist', 45000, 2, '2024-05-06'),
(17, 'Joshua', 'Clark', 'IT', 'IT Support Specialist', 44000, 2, '2024-02-19'),
(18, 'Grace', 'Rodriguez', 'Finance', 'Senior Accountant', 70000, 6, '2020-12-01'),
(19, 'Benjamin', 'Lewis', 'Sales', 'Sales Analyst', 61000, 4, '2022-06-13'),
(20, 'Ella', 'Lee', 'Marketing', 'SEO Specialist', 52000, 3, '2023-09-04');
