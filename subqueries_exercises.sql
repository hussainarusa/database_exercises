USE join_test_db;
#
# SELECT *
# FROM employees
# WHERE hire_date = (SELECT hire_date FROM employees WHERE emp_no = 101010);
#
#
# SELECT DISTINCT t.title
# FROM titles AS t
#          JOIN employees AS e ON t.emp_no = e.emp_no
# WHERE e.first_name = 'Aamod';
#
#
# SELECT d.department_name AS "Department Name", CONCAT(e.first_name, ' ', e.last_name) AS "Department Manager"
# FROM departments AS d
#          JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
#          JOIN employees AS e ON dm.emp_no = e.emp_no
# WHERE e.gender = 'F' AND dm.to_date = '9999-01-01';