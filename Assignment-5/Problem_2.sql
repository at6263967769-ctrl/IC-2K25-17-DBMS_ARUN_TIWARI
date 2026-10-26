// Problem_2
mysql> -- Q2. Write a query to find the name (first_name, last_name) of all employees who works in the IT department.
mysql> SELECT * FROM departments;
+---------------+----------------------+------------+-------------+
| DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
+---------------+----------------------+------------+-------------+
|            10 | Administration       |        200 |        1700 |
|            20 | Marketing            |        201 |        1800 |
|            30 | Purchasing           |        114 |        1700 |
|            40 | Human Resources      |        203 |        2400 |
|            50 | Shipping             |        121 |        1500 |
|            60 | IT                   |        103 |        1400 |
|            70 | Public Relations     |        204 |        2700 |
|            80 | Sales                |        145 |        2500 |
|            90 | Executive            |        100 |        1700 |
|           100 | Finance              |        108 |        1700 |
|           110 | Accounting           |        205 |        1700 |
|           120 | Treasury             |       NULL |        1700 |
|           130 | Corporate Tax        |       NULL |        1700 |
|           140 | Control And Credit   |       NULL |        1700 |
|           150 | Shareholder Services |       NULL |        1700 |
|           160 | Benefits             |       NULL |        1700 |
|           170 | Manufacturing        |       NULL |        1700 |
|           180 | Construction         |       NULL |        1700 |
|           190 | Contracting          |       NULL |        1700 |
|           200 | Operations           |       NULL |        1700 |
|           210 | IT Support           |       NULL |        1700 |
|           220 | NOC                  |       NULL |        1700 |
|           230 | IT Helpdesk          |       NULL |        1700 |
|           240 | Government Sales     |       NULL |        1700 |
|           250 | Retail Sales         |       NULL |        1700 |
|           260 | Recruiting           |       NULL |        1700 |
|           270 | Payroll              |       NULL |        1700 |
+---------------+----------------------+------------+-------------+
27 rows in set (0.03 sec)

mysql> SELECT DEPARTMENT_ID, DEPARTMENT_NAME FROM departments;
+---------------+----------------------+
| DEPARTMENT_ID | DEPARTMENT_NAME      |
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

mysql> SELECT FIRST_NAME, LAST_NAME FROM employees WHERE DEPARTMENT_ID = 60;
+------------+-----------+
| FIRST_NAME | LAST_NAME |
+------------+-----------+
| Alexander  | Hunold    |
| Bruce      | Ernst     |
| David      | Austin    |
| Valli      | Pataballa |
| Diana      | Lorentz   |
+------------+-----------+
5 rows in set (0.00 sec)

mysql> SELECT FIRST_NAME, LAST_NAME FROM employees WHERE DEPARTMENT_ID = ( SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME = 'IT');
+------------+-----------+
| FIRST_NAME | LAST_NAME |
+------------+-----------+
| Alexander  | Hunold    |
| Bruce      | Ernst     |
| David      | Austin    |
| Valli      | Pataballa |
| Diana      | Lorentz   |
+------------+-----------+
5 rows in set (0.00 sec)

mysql>
