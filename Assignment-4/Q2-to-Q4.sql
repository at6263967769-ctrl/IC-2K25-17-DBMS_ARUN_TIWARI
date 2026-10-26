mysql> -- Q2. Write a query to get the total salaries payable to employees.
mysql> SELECT SUM(salary) AS total_salary
    -> FROM employees;
+--------------+
| total_salary |
+--------------+
|    240200.00 |
+--------------+
1 row in set (0.00 sec)

mysql> -- Q3. Write a query to get the minimum salary from employees table.
mysql> SELECT MIN(salary) AS minimum_salary FROM employees;
+----------------+
| minimum_salary |
+----------------+
|        3100.00 |
+----------------+
1 row in set (0.02 sec)

mysql> -- Q4. Write a query to get the maximum salary of an employee working as a Programmer.
mysql> SELECT MAX(salary) AS maximum_salary FROM employees  WHERE job_id = 'Programmer';
+----------------+
| maximum_salary |
+----------------+
|           NULL |
+----------------+
1 row in set (0.00 sec)

mysql> SELECT MAX(salary) AS maximum_salary FROM employess WHERE job_id = 'IT_PROG';
ERROR 1146 (42S02): Table 'hr.employess' doesn't exist
mysql> SHOW TABLES;
+--------------+
| Tables_in_hr |
+--------------+
| countries    |
| departments  |
| employees    |
| job_history  |
| jobs         |
| locations    |
| regions      |
+--------------+
7 rows in set (0.00 sec)

mysql> SELECT DISTINCT job_id
    -> FROM employees;
+------------+
| job_id     |
+------------+
| AC_ACCOUNT |
| AC_MGR     |
| AD_ASST    |
| AD_PRES    |
| AD_VP      |
| FI_ACCOUNT |
| FI_MGR     |
| HR_REP     |
| IT_PROG    |
| MK_MAN     |
| MK_REP     |
| PR_REP     |
| PU_CLERK   |
| PU_MAN     |
| SA_MAN     |
+------------+
15 rows in set (0.00 sec)

mysql> SELECT MAX(salary) AS maximum_salary FROM employees WHERE job_id = 'IT_PROG';
+----------------+
| maximum_salary |
+----------------+
|        9000.00 |
+----------------+
1 row in set (0.00 sec)

mysql>
