# Employee Salary and Workforce Analysis Using SQL

## Project Overview

This project uses PostgreSQL to analyse employee salaries, workforce distribution, professional experience, and hiring patterns. The objective is to demonstrate how SQL can be used to answer business questions and support workforce-related decisions.

The analysis is based on a fictional dataset of 20 employees across five departments.

## Business Questions

1. What is the overall salary profile of the workforce?
2. Which departments have the highest and lowest average salaries?
3. Which employees earn above the overall average salary?
4. How do average salaries vary across experience levels?
5. How is the workforce distributed across departments?
6. How many employees were hired in each year?
7. Who is the highest-paid employee in each department?

## Tools and Technologies

- PostgreSQL
- SQL
- pgAdmin 4
- GitHub

## SQL Skills Demonstrated

- Data quality checks
- Aggregate functions: `COUNT`, `AVG`, `MIN`, `MAX`, and `SUM`
- Filtering with `WHERE`
- Grouping with `GROUP BY`
- Sorting with `ORDER BY`
- Subqueries
- Conditional aggregate counts using `FILTER`
- Date extraction using `EXTRACT`
- Window functions using `RANK()`

## Key Findings

- The dataset contains 20 fictional employees across five departments.
- The overall average salary is 63,000 in the dataset's unspecified currency units.
- The total annual payroll represented by the dataset is 1,260,000 currency units.
- The highest individual salary is 92,000, while the lowest is 39,000.
- IT has the highest average departmental salary at 72,400.
- HR has the lowest average departmental salary at approximately 51,666.67.
- IT represents 25% of the employees in the sample.

## Business Interpretation

The results show differences in average salary and workforce size across departments. These differences could be explored further by considering job responsibilities, seniority, and experience.

The sample is small and fictional. Its results should not be interpreted as representative of an actual organisation or the wider labour market.

## Project Structure

- `sql/01_workforce_analysis.sql` — Main SQL analysis queries
- `results/` — Query outputs and documented findings
- `images/` — Screenshots of selected SQL queries and results
- `README.md` — Project documentation

## How to Reproduce the Analysis

1. Install PostgreSQL and pgAdmin 4.
2. Create a database named `employee_workforce_analysis`.
3. Run the setup script once in a fresh database to create the table and insert the fictional sample data.
4. Run the queries in `sql/01_workforce_analysis.sql`.
5. Review the query outputs and compare them with the findings documented above.

## Conclusion

This project demonstrates how PostgreSQL can be used to validate data, summarise salaries, compare departments, examine hiring patterns, and rank employees within groups. It provides a foundation for more advanced analysis using larger datasets and additional SQL techniques.