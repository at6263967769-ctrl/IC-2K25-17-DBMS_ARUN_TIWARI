mysql> -- Q10. Write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary of all departments.
mysql>  SELECT AVG(salary) FROM employees;
+-------------+
| AVG(salary) |
+-------------+
| 9608.000000 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT first_name, last_name, salary FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
| Neena      | Kochhar   | 17000.00 |
| Lex        | De Haan   | 17000.00 |
| Nancy      | Greenberg | 12000.00 |
| Den        | Raphaely  | 11000.00 |
| John       | Russell   | 14000.00 |
| Karen      | Partners  | 13500.00 |
| Michael    | Hartstein | 13000.00 |
| Hermann    | Baer      | 10000.00 |
| Shelley    | Higgins   | 12000.00 |
+------------+-----------+----------+
10 rows in set (0.00 sec)
