
-- =========================================================
-- PROJECT: Employee Salary and Workforce Analysis
-- DATABASE: employee_workforce_analysis
-- TABLE: employees
-- DATA: 20 fictional employee records
-- =========================================================


-- 1. DATA QUALITY: CHECK TOTAL RECORDS AND MISSING VALUES

SELECT
    COUNT(*) AS total_records,
    COUNT(*) FILTER (WHERE employee_id IS NULL) AS missing_ids,
    COUNT(*) FILTER (WHERE department IS NULL) AS missing_departments,
    COUNT(*) FILTER (WHERE job_title IS NULL) AS missing_job_titles,
    COUNT(*) FILTER (WHERE salary IS NULL) AS missing_salaries,
    COUNT(*) FILTER (WHERE years_experience IS NULL) AS missing_experience,
    COUNT(*) FILTER (WHERE hire_date IS NULL) AS missing_hire_dates
FROM employees;


-- 2. DATA QUALITY: CHECK INVALID VALUES

SELECT *
FROM employees
WHERE salary <= 0
   OR years_experience < 0
   OR hire_date > CURRENT_DATE;


-- 3. OVERALL SALARY PROFILE

SELECT
    COUNT(*) AS total_employees,
    ROUND(AVG(salary), 2) AS average_salary,
    MIN(salary) AS lowest_salary,
    MAX(salary) AS highest_salary,
    ROUND(SUM(salary), 2) AS total_annual_payroll
FROM employees;


-- 4. SALARY COMPARISON BY DEPARTMENT

SELECT
    department,
    COUNT(*) AS employee_count,
    ROUND(AVG(salary), 2) AS average_salary,
    MIN(salary) AS lowest_salary,
    MAX(salary) AS highest_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC;


-- 5. EMPLOYEES EARNING ABOVE THE OVERALL AVERAGE

SELECT
    employee_id,
    first_name,
    last_name,
    department,
    job_title,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
)
ORDER BY salary DESC;


-- 6. EXPERIENCE AND SALARY

SELECT
    years_experience,
    COUNT(*) AS employee_count,
    ROUND(AVG(salary), 2) AS average_salary,
    MIN(salary) AS lowest_salary,
    MAX(salary) AS highest_salary
FROM employees
GROUP BY years_experience
ORDER BY years_experience;


-- 7. WORKFORCE DISTRIBUTION BY DEPARTMENT

SELECT
    department,
    COUNT(*) AS employee_count,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM employees),
        2
    ) AS workforce_percentage
FROM employees
GROUP BY department
ORDER BY employee_count DESC, department;


-- 8. HIRING PATTERNS BY YEAR

SELECT
    EXTRACT(YEAR FROM hire_date)::INT AS hire_year,
    COUNT(*) AS employees_hired
FROM employees
GROUP BY EXTRACT(YEAR FROM hire_date)
ORDER BY hire_year;


-- 9. HIGHEST-PAID EMPLOYEE IN EACH DEPARTMENT

SELECT
    department,
    first_name,
    last_name,
    job_title,
    salary
FROM (
    SELECT
        department,
        first_name,
        last_name,
        job_title,
        salary,
        RANK() OVER (
            PARTITION BY department
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
) AS ranked_employees
WHERE salary_rank = 1
ORDER BY salary DESC;
