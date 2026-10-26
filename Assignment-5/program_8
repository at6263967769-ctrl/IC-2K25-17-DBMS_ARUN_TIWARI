mysql> -- Q8. Write a query to find the name (first_name, last_name), and salary of the employees who earns more than the earning of Mr. Bell.
mysql> SELECT first_name, last_name, salary FROM employees WHERE last_name = 'Bell';
Empty set (0.00 sec)

mysql> SELECT first_name, last_name, salary FROM employees WHERE last_name LIKE '%Bell%';
Empty set (0.00 sec)

mysql> SELECT first_name, last_name, salary FROM employees ORDER BY last_name;
+-------------+-----------+----------+
| first_name  | last_name | salary   |
+-------------+-----------+----------+
| David       | Austin    |  4800.00 |
| Hermann     | Baer      | 10000.00 |
| John        | Chen      |  8200.00 |
| Lex         | De Haan   | 17000.00 |
| Bruce       | Ernst     |  6000.00 |
| Daniel      | Faviet    |  9000.00 |
| Pat         | Fay       |  6000.00 |
| William     | Gietz     |  8300.00 |
| Nancy       | Greenberg | 12000.00 |
| Michael     | Hartstein | 13000.00 |
| Shelley     | Higgins   | 12000.00 |
| Alexander   | Hunold    |  9000.00 |
| Alexander   | Khoo      |  3100.00 |
| Steven      | King      | 24000.00 |
| Neena       | Kochhar   | 17000.00 |
| Diana       | Lorentz   |  4200.00 |
| Susan       | Mavris    |  6500.00 |
| Karen       | Partners  | 13500.00 |
| Valli       | Pataballa |  4800.00 |
| Luis        | Popp      |  6900.00 |
| Den         | Raphaely  | 11000.00 |
| John        | Russell   | 14000.00 |
| Ismael      | Sciarra   |  7700.00 |
| Jose Manuel | Urman     |  7800.00 |
| Jennifer    | Whalen    |  4400.00 |
+-------------+-----------+----------+
25 rows in set (0.00 sec)

mysql> SELECT first_name, last_name, salary FROM employees WHERE salary > (SELECT salary FROM employees WHERE last_name = 'John');
Empty set (0.00 sec)

mysql> SELECT first_name, last_name, salary FROM employees WHERE salary > (SELECT salary FROM employees WHERE first_name = 'John');
ERROR 1242 (21000): Subquery returns more than 1 row
mysql> SELECT first_name, last_name, salary FROM employees WHERE first_name = 'John' AND last_name = 'Chen';
+------------+-----------+---------+
| first_name | last_name | salary  |
+------------+-----------+---------+
| John       | Chen      | 8200.00 |
+------------+-----------+---------+
1 row in set (0.01 sec)

mysql> SELECT first_name, last_name, salary FROM employees WHERE salary > (SELECT salary FROM employees WHERE first_name = 'John' AND last_name = 'Chen');
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
| Neena      | Kochhar   | 17000.00 |
| Lex        | De Haan   | 17000.00 |
| Alexander  | Hunold    |  9000.00 |
| Nancy      | Greenberg | 12000.00 |
| Daniel     | Faviet    |  9000.00 |
| Den        | Raphaely  | 11000.00 |
| John       | Russell   | 14000.00 |
| Karen      | Partners  | 13500.00 |
| Michael    | Hartstein | 13000.00 |
| Hermann    | Baer      | 10000.00 |
| Shelley    | Higgins   | 12000.00 |
| William    | Gietz     |  8300.00 |
+------------+-----------+----------+
13 rows in set (0.00 sec)
