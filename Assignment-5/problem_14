mysql> -- Q14. Write a query to display the employee ID, first name, last name, salary of all employees whose salary is above average for their departments
mysql> SELECT employee_id, first_name, last_name, salary FROM employees e WHERE salary > (SELECT AVG(salary) FROM employees WHERE department_id = e.department_id);
+-------------+------------+-----------+----------+
| employee_id | first_name | last_name | salary   |
+-------------+------------+-----------+----------+
|         100 | Steven     | King      | 24000.00 |
|         103 | Alexander  | Hunold    |  9000.00 |
|         104 | Bruce      | Ernst     |  6000.00 |
|         108 | Nancy      | Greenberg | 12000.00 |
|         109 | Daniel     | Faviet    |  9000.00 |
|         114 | Den        | Raphaely  | 11000.00 |
|         145 | John       | Russell   | 14000.00 |
|         201 | Michael    | Hartstein | 13000.00 |
|         205 | Shelley    | Higgins   | 12000.00 |
+-------------+------------+-----------+----------+
9 rows in set (0.00 sec)
