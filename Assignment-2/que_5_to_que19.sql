mysql> -- Q5. Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary.
mysql> SELECT employee_id, first_name, last_name, salary FROM employees ORDER BY salary ASC;
+-------------+------------+-----------+----------+
| employee_id | first_name | last_name | salary   |
+-------------+------------+-----------+----------+
|         101 | Neena      | Kochhar   | 17000.00 |
|         102 | Lex        | De Haan   | 17000.00 |
|         100 | Steven     | King      | 24000.00 |
+-------------+------------+-----------+----------+
3 rows in set (0.00 sec)

mysql> -- Q6. Write a query to get the total salaries payable to employees.
mysql> SELECT SUM(salary) AS total_salary FROM employees;
+--------------+
| total_salary |
+--------------+
|     58000.00 |
+--------------+
1 row in set (0.02 sec)

mysql> -- Q7. Write a query to get the maximum and minimum salary from employees table.
mysql> SELECT MAX(salary) AS max_salary, MIN(salary) AS min_salary FROM employees;
+------------+------------+
| max_salary | min_salary |
+------------+------------+
|   24000.00 |   17000.00 |
+------------+------------+
1 row in set (0.03 sec)

mysql> -- Q8. Write a query to get the average salary and number of employees in the employees table.
mysql> SELECT AVG(salary) AS average_salary, COUNT(*) AS total_employees FROM employees;
+----------------+-----------------+
| average_salary | total_employees |
+----------------+-----------------+
|   19333.333333 |               3 |
+----------------+-----------------+
1 row in set (0.02 sec)

mysql> -- Q9. Write a query to get the number of employees working with the company
mysql> SELECT COUNT(*) AS total_employees FROM employees;
+-----------------+
| total_employees |
+-----------------+
|               3 |
+-----------------+
1 row in set (0.03 sec)

mysql> -- Q10. Write a query to get the number of jobs available in the employees table.
mysql> SELECT COUNT(DISTINCT job_id) AS available_jobs FROM employees;
+----------------+
| available_jobs |
+----------------+
|              2 |
+----------------+
1 row in set (0.02 sec)

mysql> -- Q11. Write a query get all first name from employees table in upper case.
mysql> SELECT UPPER(first_name) FROM employees;
+-------------------+
| UPPER(first_name) |
+-------------------+
| STEVEN            |
| NEENA             |
| LEX               |
+-------------------+
3 rows in set (0.02 sec)

mysql> -- Q12. Write a query to get the first 3 characters of first name from employees table
mysql> SELECT SUBSTRING(first_name, 1, 3) FROM employees;
+-----------------------------+
| SUBSTRING(first_name, 1, 3) |
+-----------------------------+
| Ste                         |
| Nee                         |
| Lex                         |
+-----------------------------+
3 rows in set (0.02 sec)

mysql> -- Q13. Write a query to calculate 171*214+625.
mysql> SELECT 171 * 214 + 625 AS result;
+--------+
| result |
+--------+
|  37219 |
+--------+
1 row in set (0.00 sec)

mysql> -- Q14. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table.
mysql> SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;
+---------------+
| full_name     |
+---------------+
| Steven King   |
| Neena Kochhar |
| Lex De Haan   |
+---------------+
3 rows in set (0.02 sec)

mysql> -- Q15. Write a query to get first name from employees table after removing white spaces from both side.
mysql> SELECT TRIM(first_name) FROM employees;
+------------------+
| TRIM(first_name) |
+------------------+
| Steven           |
| Neena            |
| Lex              |
+------------------+
3 rows in set (0.00 sec)

mysql> -- Q16. Write a query to get the length of the employee names (first_name, last_name) from employees table.
mysql> SELECT first_name, last_name, CHAR_LENGTH(CONCAT(first_name, last_name)) AS name_length FROM employees;
+------------+-----------+-------------+
| first_name | last_name | name_length |
+------------+-----------+-------------+
| Steven     | King      |          10 |
| Neena      | Kochhar   |          12 |
| Lex        | De Haan   |          10 |
+------------+-----------+-------------+
3 rows in set (0.02 sec)

mysql> -- Q17. Write a query to check if the first_name fields of the employees table contains numbers.
mysql> SELECT * FROM employees WHERE first_name REGEXP '[0-9]';
Empty set (0.04 sec)

mysql> -- Q18. Write a query to select first 10 records from a table.
mysql> SELECT * FROM employees LIMIT 10;
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
| employee_id | first_name | last_name | email    | phone_number | hire_date  | job_id  | salary   | commission_pct | manager_id | department_id |
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
|         100 | Steven     | King      | SKING    | 515.123.4567 | 2003-06-17 | AD_PRES | 24000.00 |           NULL |       NULL |            90 |
|         101 | Neena      | Kochhar   | NKOCHHAR | 515.123.4568 | 2005-09-21 | AD_VP   | 17000.00 |           NULL |        100 |            90 |
|         102 | Lex        | De Haan   | LDEHAAN  | 515.123.4569 | 2001-01-13 | AD_VP   | 17000.00 |           NULL |        100 |            90 |
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
3 rows in set (0.00 sec)

mysql> -- Q19. Write a query to get monthly salary (round 2 decimal places) of each and every employee
mysql> SELECT employee_id, first_name, last_name, ROUND(salary / 12, 2) AS monthly_salary FROM employees;
+-------------+------------+-----------+----------------+
| employee_id | first_name | last_name | monthly_salary |
+-------------+------------+-----------+----------------+
|         100 | Steven     | King      |        2000.00 |
|         101 | Neena      | Kochhar   |        1416.67 |
|         102 | Lex        | De Haan   |        1416.67 |
+-------------+------------+-----------+----------------+
3 rows in set (0.02 sec)
