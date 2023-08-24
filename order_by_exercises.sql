# USE employees.db;
#
# -- Query 1: Order by First Name (Ascending)
# SELECT *
# FROM employees
# WHERE first_name IN ('Irena', 'Vidya', 'Maya')
# ORDER BY first_name ASC;
#
# -- Query 2: Order by First Name (Ascending), Last Name (Ascending)
# SELECT *
# FROM employees
# WHERE last_name LIKE 'E%'
# ORDER BY first_name ASC, last_name ASC;
#
# -- Query 3: Order by Last Name (Descending), First Name (Ascending)
# SELECT *
# FROM employees
# WHERE last_name LIKE '%q%'
# ORDER BY last_name DESC, first_name ASC;
#
# -- Query 4: Employees with 'e' in Last Name, Order by Employee Number (Ascending)
# SELECT *
# FROM employees
# WHERE last_name LIKE '%e%'
# ORDER BY emp_no ASC;
#
# -- Query 5: Reverse Sort Orders for Queries 1 and 4
# -- Query 1: Order by First Name (Descending)
# SELECT *
# FROM employees
# WHERE first_name IN ('Irena', 'Vidya', 'Maya')
# ORDER BY first_name DESC;
#
# -- Query 4: Employees with 'e' in Last Name, Order by Employee Number (Descending)
# SELECT *
# FROM employees
# WHERE last_name LIKE '%e%'
# ORDER BY emp_no DESC;
