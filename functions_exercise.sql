USE employees;

-- Query 1: Employees whose names start and end with 'E'
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE first_name LIKE 'E%' AND last_name LIKE '%E%';

-- Query 2: Employees born on Christmas
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25;

-- Query 3: Employees hired in the 90s and born on Christmas
SELECT *
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25;

-- Query 4: Employees hired in the 90s and born on Christmas, ordered by oldest hire date
SELECT *
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25
ORDER BY birth_date ASC, hire_date DESC;

-- Query 5: Employees born on Christmas and hired in the 90s, with days worked at the company
SELECT *,
       DATEDIFF(NOW(), hire_date) AS days_worked
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25;
