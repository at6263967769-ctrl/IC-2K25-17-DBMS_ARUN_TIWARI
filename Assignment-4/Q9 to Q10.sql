mysql> -- Q9. Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.
mysql> SELECT MANAGER_ID, MIN(SALARY) AS lowest_salary FROM employees GROUP BY MANAGER_ID;
+------------+---------------+
| MANAGER_ID | lowest_salary |
+------------+---------------+
|       NULL |      24000.00 |
|        100 |      11000.00 |
|        101 |       4400.00 |
|        102 |       9000.00 |
|        103 |       4200.00 |
|        108 |       6900.00 |
|        114 |       3100.00 |
|        201 |       6000.00 |
|        205 |       8300.00 |
+------------+---------------+
9 rows in set (0.00 sec)

mysql> -- Q10. Write a query to get the department ID and the total salary payable in each department.
mysql> SELECT DEPARTMENT_ID, SUM(SALARY) AS total_salary FROM employees GROUP BY DEPARTMENT_ID;
+---------------+--------------+
| DEPARTMENT_ID | total_salary |
+---------------+--------------+
|            10 |      4400.00 |
|            20 |     19000.00 |
|            30 |     14100.00 |
|            40 |      6500.00 |
|            60 |     28800.00 |
|            70 |     10000.00 |
|            80 |     27500.00 |
|            90 |     58000.00 |
|           100 |     51600.00 |
|           110 |     20300.00 |
+---------------+--------------+
10 rows in set (0.00 sec)
