USE employees;


SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%E%'
GROUP BY last_name;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E%'
GROUP BY first_name, last_name;

SELECT last_name, COUNT(*) AS name_count
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT gender, COUNT(*) AS name_count
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;


