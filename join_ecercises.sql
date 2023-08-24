USE join_test_db;

SELECT d.department_name AS department, CONCAT(e.first_name, ' ', e.last_name) AS manager_name
FROM departments AS d
         JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
         JOIN employees AS e ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01';  -- Assuming '9999-01-01' represents the current date for managers


SELECT d.department_name AS "Department Name", CONCAT(e.first_name, ' ', e.last_name) AS "Department Manager"
FROM departments AS d
         JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
         JOIN employees AS e ON dm.emp_no = e.emp_no
WHERE e.gender = 'F' AND dm.to_date = '9999-01-01';





SELECT t.title, COUNT(*) AS "Total"
FROM titles AS t
         JOIN dept_emp AS de ON t.emp_no = de.emp_no
         JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.department_name = 'Customer Service' AND de.to_date = '9999-01-01'
GROUP BY t.title;






SELECT d.department_name AS "Department Name", CONCAT(e.first_name, ' ', e.last_name) AS "Department Manager", s.salary AS "Salary"
FROM departments AS d
         JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
         JOIN employees AS e ON dm.emp_no = e.emp_no
         JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';