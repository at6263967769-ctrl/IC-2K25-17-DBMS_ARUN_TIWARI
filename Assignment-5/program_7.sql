mysql> -- Q7. Write a query to find the name (first_name, last_name), and salary of the employees who earns more than the average salary and works in any of the IT departments.
mysql> SELECT department_id, department_name
    -> FROM departments
    -> WHERE department_name = 'IT';
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|            60 | IT              |
+---------------+-----------------+
1 row in set (0.00 sec)

mysql> SELECT AVG(salary)
    -> FROM employees;
+-------------+
| AVG(salary) |
+-------------+
| 9608.000000 |
+-------------+
1 row in set (0.02 sec)

mysql>
mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT AVG(salary)
    ->     FROM employees
    -> )
    -> AND department_id IN (
    ->     SELECT department_id
    ->     FROM departments
    ->     WHERE department_name = 'IT'
    -> );
Empty set (0.00 sec)

mysql>
mysql> SELECT department_id, department_name
    -> FROM departments;
+---------------+----------------------+
| department_id | department_name      |
+---------------+----------------------+
|            10 | Administration       |
|            20 | Marketing            |
|            30 | Purchasing           |
|            40 | Human Resources      |
|            50 | Shipping             |
|            60 | IT                   |
|            70 | Public Relations     |
|            80 | Sales                |
|            90 | Executive            |
|           100 | Finance              |
|           110 | Accounting           |
|           120 | Treasury             |
|           130 | Corporate Tax        |
|           140 | Control And Credit   |
|           150 | Shareholder Services |
|           160 | Benefits             |
|           170 | Manufacturing        |
|           180 | Construction         |
|           190 | Contracting          |
|           200 | Operations           |
|           210 | IT Support           |
|           220 | NOC                  |
|           230 | IT Helpdesk          |
|           240 | Government Sales     |
|           250 | Retail Sales         |
|           260 | Recruiting           |
|           270 | Payroll              |
+---------------+----------------------+
27 rows in set (0.00 sec)

mysql> SELECT first_name, last_name, salary, department_id
    -> FROM employees
    -> WHERE department_id = 60;
+------------+-----------+---------+---------------+
| first_name | last_name | salary  | department_id |
+------------+-----------+---------+---------------+
| Alexander  | Hunold    | 9000.00 |            60 |
| Bruce      | Ernst     | 6000.00 |            60 |
| David      | Austin    | 4800.00 |            60 |
| Valli      | Pataballa | 4800.00 |            60 |
| Diana      | Lorentz   | 4200.00 |            60 |
+------------+-----------+---------+---------------+
5 rows in set (0.00 sec)

mysql> SELECT AVG(salary)
    -> FROM employees;
+-------------+
| AVG(salary) |
+-------------+
| 9608.000000 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT AVG(salary)
    ->     FROM employees
    -> )
    -> AND department_id = (
    ->     SELECT department_id
    ->     FROM departments
    ->     WHERE department_name = 'IT'
    -> );
Empty set (0.00 sec)

mysql> SELECT e.first_name, e.last_name, e.salary, e.department_id
    -> FROM employees e
    -> JOIN departments d
    -> ON e.department_id = d.department_id
    -> WHERE d.department_name = 'IT';
+------------+-----------+---------+---------------+
| first_name | last_name | salary  | department_id |
+------------+-----------+---------+---------------+
| Alexander  | Hunold    | 9000.00 |            60 |
| Bruce      | Ernst     | 6000.00 |            60 |
| David      | Austin    | 4800.00 |            60 |
| Valli      | Pataballa | 4800.00 |            60 |
| Diana      | Lorentz   | 4200.00 |            60 |
+------------+-----------+---------+---------------+
5 rows in set (0.00 sec)

mysql> SELECT e.first_name, e.last_name, e.salary
    -> FROM employees e
    -> JOIN departments d
    -> ON e.department_id = d.department_id
    -> WHERE d.department_name = 'IT'
    -> AND e.salary > (SELECT AVG(salary) FROM employees);
Empty set (0.00 sec)

