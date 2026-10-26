mysql> -- Q9. Write a query to find the name (first_name, last_name), and salary of the employees who earn the same salary as the minimum salary for all departments.
mysql> SELECT MIN(salary) FROM employees;
+-------------+
| MIN(salary) |
+-------------+
|     3100.00 |
+-------------+
1 row in set (0.02 sec)

mysql> SELECT first_name, last_name, salary FROM employees WHERE salary = (SELECT MIN(salary) FROM employees);
+------------+-----------+---------+
| first_name | last_name | salary  |
+------------+-----------+---------+
| Alexander  | Khoo      | 3100.00 |
+------------+-----------+---------+
1 row in set (0.00 sec)

