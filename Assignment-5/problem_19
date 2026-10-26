
mysql> -- Q19. Write a query to list the department ID and name of all the departments where no employee is working.
mysql> SELECT department_id, department_name FROM departments WHERE department_id NOT IN (SELECT department_id FROM employees WHERE department_id IS NOT NULL);
+---------------+----------------------+
| department_id | department_name      |
+---------------+----------------------+
|            50 | Shipping             |
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
17 rows in set (0.00 sec)
