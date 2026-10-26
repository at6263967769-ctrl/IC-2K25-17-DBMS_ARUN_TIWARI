mysql> -- Q11. Write a query to find the name (first_name, last_name) and salary of the employees who earn a salary that is higher than the salary of all the Shipping Clerk (JOB_ID = 'SH_CLERK'). Sort the results of the salary of the lowest to highest.
mysql> SELECT first_name, last_name, salary FROM employees WHERE job_id = 'SH_CLERK';
Empty set (0.00 sec)

mysql> SELECT first_name, last_name, salary FROM employees WHERE salary > ALL (SELECT salary FROM employees WHERE job_id = 'SH_CLERK') ORDER BY salary ASC;
+-------------+-----------+----------+
| first_name  | last_name | salary   |
+-------------+-----------+----------+
| Alexander   | Khoo      |  3100.00 |
| Diana       | Lorentz   |  4200.00 |
| Jennifer    | Whalen    |  4400.00 |
| David       | Austin    |  4800.00 |
| Valli       | Pataballa |  4800.00 |
| Bruce       | Ernst     |  6000.00 |
| Pat         | Fay       |  6000.00 |
| Susan       | Mavris    |  6500.00 |
| Luis        | Popp      |  6900.00 |
| Ismael      | Sciarra   |  7700.00 |
| Jose Manuel | Urman     |  7800.00 |
| John        | Chen      |  8200.00 |
| William     | Gietz     |  8300.00 |
| Alexander   | Hunold    |  9000.00 |
| Daniel      | Faviet    |  9000.00 |
| Hermann     | Baer      | 10000.00 |
| Den         | Raphaely  | 11000.00 |
| Nancy       | Greenberg | 12000.00 |
| Shelley     | Higgins   | 12000.00 |
| Michael     | Hartstein | 13000.00 |
| Karen       | Partners  | 13500.00 |
| John        | Russell   | 14000.00 |
| Neena       | Kochhar   | 17000.00 |
| Lex         | De Haan   | 17000.00 |
| Steven      | King      | 24000.00 |
+-------------+-----------+----------+
25 rows in set (0.02 sec)
