mysql> -- Q13. Write a query to display the employee ID, first name, last name, and department names of all employees.
mysql> SELECT e.employee_id, e.first_name, e.last_name, d.department_name FROM employees e JOIN departments d ON e.department_id = d.department_id;
+-------------+-------------+-----------+------------------+
| employee_id | first_name  | last_name | department_name  |
+-------------+-------------+-----------+------------------+
|         100 | Steven      | King      | Executive        |
|         101 | Neena       | Kochhar   | Executive        |
|         102 | Lex         | De Haan   | Executive        |
|         103 | Alexander   | Hunold    | IT               |
|         104 | Bruce       | Ernst     | IT               |
|         105 | David       | Austin    | IT               |
|         106 | Valli       | Pataballa | IT               |
|         107 | Diana       | Lorentz   | IT               |
|         108 | Nancy       | Greenberg | Finance          |
|         109 | Daniel      | Faviet    | Finance          |
|         110 | John        | Chen      | Finance          |
|         111 | Ismael      | Sciarra   | Finance          |
|         112 | Jose Manuel | Urman     | Finance          |
|         113 | Luis        | Popp      | Finance          |
|         114 | Den         | Raphaely  | Purchasing       |
|         115 | Alexander   | Khoo      | Purchasing       |
|         145 | John        | Russell   | Sales            |
|         146 | Karen       | Partners  | Sales            |
|         200 | Jennifer    | Whalen    | Administration   |
|         201 | Michael     | Hartstein | Marketing        |
|         202 | Pat         | Fay       | Marketing        |
|         203 | Susan       | Mavris    | Human Resources  |
|         204 | Hermann     | Baer      | Public Relations |
|         205 | Shelley     | Higgins   | Accounting       |
|         206 | William     | Gietz     | Accounting       |
+-------------+-------------+-----------+------------------+
25 rows in set (0.00 sec)
