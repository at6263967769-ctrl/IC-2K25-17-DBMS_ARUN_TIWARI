mysql> -- Q12. Write a query to find the name (first_name, last_name) of the employees who are not supervisors.
mysql> SELECT first_name, last_name FROM employees WHERE employee_id NOT IN (SELECT DISTINCT manager_id FROM employees WHERE manager_id IS NOT NULL);
+-------------+-----------+
| first_name  | last_name |
+-------------+-----------+
| David       | Austin    |
| Hermann     | Baer      |
| John        | Chen      |
| Bruce       | Ernst     |
| Daniel      | Faviet    |
| Pat         | Fay       |
| William     | Gietz     |
| Alexander   | Khoo      |
| Diana       | Lorentz   |
| Susan       | Mavris    |
| Karen       | Partners  |
| Valli       | Pataballa |
| Luis        | Popp      |
| John        | Russell   |
| Ismael      | Sciarra   |
| Jose Manuel | Urman     |
| Jennifer    | Whalen    |
+-------------+-----------+
17 rows in set (0.00 sec)
