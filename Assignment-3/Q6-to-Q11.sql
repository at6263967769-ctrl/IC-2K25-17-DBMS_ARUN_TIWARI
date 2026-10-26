Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 71
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| assignment         |
| assignment_db      |
| collegedb          |
| company_db         |
| hr                 |
| hr_assignment      |
| hr_db              |
| information_schema |
| mysql              |
| pdb                |
| performance_schema |
| sys                |
+--------------------+
12 rows in set (0.02 sec)

mysql> USE hr;
Database changed
mysql> SELECT * FROM employees;
+-------------+-------------+-----------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+-----------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         100 | Steven      | King      | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           0.00 |       NULL |            90 |
|         101 | Neena       | Kochhar   | NKOCHHAR | 515.123.4568       | 1987-06-18 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         102 | Lex         | De Haan   | LDEHAAN  | 515.123.4569       | 1987-06-19 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         103 | Alexander   | Hunold    | AHUNOLD  | 590.423.4567       | 1987-06-20 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
|         104 | Bruce       | Ernst     | BERNST   | 590.423.4568       | 1987-06-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
|         105 | David       | Austin    | DAUSTIN  | 590.423.4569       | 1987-06-22 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         106 | Valli       | Pataballa | VPATABAL | 590.423.4560       | 1987-06-23 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         107 | Diana       | Lorentz   | DLORENTZ | 590.423.5567       | 1987-06-24 | IT_PROG    |  4200.00 |           0.00 |        103 |            60 |
|         108 | Nancy       | Greenberg | NGREENBE | 515.124.4569       | 1987-06-25 | FI_MGR     | 12000.00 |           0.00 |        101 |           100 |
|         109 | Daniel      | Faviet    | DFAVIET  | 515.124.4169       | 1987-06-26 | FI_ACCOUNT |  9000.00 |           0.00 |        108 |           100 |
|         110 | John        | Chen      | JCHEN    | 515.124.4269       | 1987-06-27 | FI_ACCOUNT |  8200.00 |           0.00 |        108 |           100 |
|         111 | Ismael      | Sciarra   | ISCIARRA | 515.124.4369       | 1987-06-28 | FI_ACCOUNT |  7700.00 |           0.00 |        108 |           100 |
|         112 | Jose Manuel | Urman     | JMURMAN  | 515.124.4469       | 1987-06-29 | FI_ACCOUNT |  7800.00 |           0.00 |        108 |           100 |
|         113 | Luis        | Popp      | LPOPP    | 515.124.4567       | 1987-06-30 | FI_ACCOUNT |  6900.00 |           0.00 |        108 |           100 |
|         114 | Den         | Raphaely  | DRAPHEAL | 515.127.4561       | 1987-07-01 | PU_MAN     | 11000.00 |           0.00 |        100 |            30 |
|         115 | Alexander   | Khoo      | AKHOO    | 515.127.4562       | 1987-07-02 | PU_CLERK   |  3100.00 |           0.00 |        114 |            30 |
|         145 | John        | Russell   | JRUSSEL  | 011.44.1344.429268 | 1987-08-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 |
|         146 | Karen       | Partners  | KPARTNER | 011.44.1344.467268 | 1987-08-02 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 |
|         200 | Jennifer    | Whalen    | JWHALEN  | 515.123.4444       | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         201 | Michael     | Hartstein | MHARTSTE | 515.123.5555       | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         202 | Pat         | Fay       | PFAY     | 603.123.6666       | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         203 | Susan       | Mavris    | SMAVRIS  | 515.123.7777       | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         204 | Hermann     | Baer      | HBAER    | 515.123.8888       | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         205 | Shelley     | Higgins   | SHIGGINS | 515.123.8080       | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         206 | William     | Gietz     | WGIETZ   | 515.123.8181       | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
+-------------+-------------+-----------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
25 rows in set (0.02 sec)

mysql> -- Q6. Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and whose salary is not equal to $4,500, $10,000, or $15,000.
mysql> SELECT last_name, job, salary
    -> FROM employees
    -> WHERE job IN ('Programmer', 'Shipping Clerk')
    -> AND salary NOT IN (4500, 10000, 15000);
ERROR 1054 (42S22): Unknown column 'job' in 'field list'
mysql> DESCRIBE employees;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| EMPLOYEE_ID    | decimal(6,0) | NO   | PRI | 0       |       |
| FIRST_NAME     | varchar(20)  | YES  |     | NULL    |       |
| LAST_NAME      | varchar(25)  | NO   | MUL | NULL    |       |
| EMAIL          | varchar(25)  | NO   | UNI | NULL    |       |
| PHONE_NUMBER   | varchar(20)  | YES  |     | NULL    |       |
| HIRE_DATE      | date         | NO   |     | NULL    |       |
| JOB_ID         | varchar(10)  | NO   | MUL | NULL    |       |
| SALARY         | decimal(8,2) | YES  |     | NULL    |       |
| COMMISSION_PCT | decimal(2,2) | YES  |     | NULL    |       |
| MANAGER_ID     | decimal(6,0) | YES  | MUL | NULL    |       |
| DEPARTMENT_ID  | decimal(4,0) | YES  | MUL | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
11 rows in set (0.02 sec)

mysql> SELECT last_name, job_id, salary
    -> FROM employees
    -> WHERE job_id IN ('IT_PROG', 'SH_CLERK')
    -> AND salary NOT IN (4500, 10000, 15000);
+-----------+---------+---------+
| last_name | job_id  | salary  |
+-----------+---------+---------+
| Hunold    | IT_PROG | 9000.00 |
| Ernst     | IT_PROG | 6000.00 |
| Austin    | IT_PROG | 4800.00 |
| Pataballa | IT_PROG | 4800.00 |
| Lorentz   | IT_PROG | 4200.00 |
+-----------+---------+---------+
5 rows in set (0.00 sec)

mysql> -- Q7. Write a query to display the last name of employees whose names have exactly 6 characters.
mysql> SELECT last_name
    -> FROM employees
    -> WHERE LENGTH(last_name) = 6;
+-----------+
| last_name |
+-----------+
| Austin    |
| Faviet    |
| Hunold    |
| Mavris    |
| Whalen    |
+-----------+
5 rows in set (0.00 sec)

mysql> -- Q8. Write a query to display the last name of employees having 'e' as the third character.
mysql> SELECT last_name
    -> FROM employees
    -> WHERE last_name LIKE '__e%';
+-----------+
| last_name |
+-----------+
| Baer      |
| Chen      |
| Gietz     |
| Greenberg |
+-----------+
4 rows in set (0.00 sec)

mysql> -- Q9. Write a query to display the jobs/designations available in the employees table.
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

mysql> -- QSELECT first_name, last_name, salary, salary * 0.15 AS PF
mysql> -- Q10. Write a query to display the name (first_name, last_name), salary and PF (15% of salary) of all employees.
mysql> SELECT first_name, last_name, salary, salary * 0.15 AS PF
    -> FROM employees;
+-------------+-----------+----------+-----------+
| first_name  | last_name | salary   | PF        |
+-------------+-----------+----------+-----------+
| Steven      | King      | 24000.00 | 3600.0000 |
| Neena       | Kochhar   | 17000.00 | 2550.0000 |
| Lex         | De Haan   | 17000.00 | 2550.0000 |
| Alexander   | Hunold    |  9000.00 | 1350.0000 |
| Bruce       | Ernst     |  6000.00 |  900.0000 |
| David       | Austin    |  4800.00 |  720.0000 |
| Valli       | Pataballa |  4800.00 |  720.0000 |
| Diana       | Lorentz   |  4200.00 |  630.0000 |
| Nancy       | Greenberg | 12000.00 | 1800.0000 |
| Daniel      | Faviet    |  9000.00 | 1350.0000 |
| John        | Chen      |  8200.00 | 1230.0000 |
| Ismael      | Sciarra   |  7700.00 | 1155.0000 |
| Jose Manuel | Urman     |  7800.00 | 1170.0000 |
| Luis        | Popp      |  6900.00 | 1035.0000 |
| Den         | Raphaely  | 11000.00 | 1650.0000 |
| Alexander   | Khoo      |  3100.00 |  465.0000 |
| John        | Russell   | 14000.00 | 2100.0000 |
| Karen       | Partners  | 13500.00 | 2025.0000 |
| Jennifer    | Whalen    |  4400.00 |  660.0000 |
| Michael     | Hartstein | 13000.00 | 1950.0000 |
| Pat         | Fay       |  6000.00 |  900.0000 |
| Susan       | Mavris    |  6500.00 |  975.0000 |
| Hermann     | Baer      | 10000.00 | 1500.0000 |
| Shelley     | Higgins   | 12000.00 | 1800.0000 |
| William     | Gietz     |  8300.00 | 1245.0000 |
+-------------+-----------+----------+-----------+
25 rows in set (0.00 sec)

mysql> -- QSELECT *
mysql> FROM employees
    ->
    -> SELECT *
    -> FROM employees
    -> WHERE last_name IN ('BLAKE', 'SCOTT', 'KING', 'FORD');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM employees

SELECT *
FROM employees
WHERE last_name IN ('BLAKE', 'SCOTT', 'K' at line 1
mysql> -- Q11. Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'.
mysql> SELECT *
    -> FROM employees
    -> WHERE last_name IN ('BLAKE', 'SCOTT', 'KING', 'FORD');
+-------------+------------+-----------+-------+--------------+------------+---------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL | PHONE_NUMBER | HIRE_DATE  | JOB_ID  | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+-------+--------------+------------+---------+----------+----------------+------------+---------------+
|         100 | Steven     | King      | SKING | 515.123.4567 | 1987-06-17 | AD_PRES | 24000.00 |           0.00 |       NULL |            90 |
+-------------+------------+-----------+-------+--------------+------------+---------+----------+----------------+------------+---------------+
1 row in set (0.00 sec)

mysql> SELECT *
    -> FROM employees
    -> WHERE last_name IN ('King', 'Kochhar', 'De Haan', 'Hunold');
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID  | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
|         102 | Lex        | De Haan   | LDEHAAN  | 515.123.4569 | 1987-06-19 | AD_VP   | 17000.00 |           0.00 |        100 |            90 |
|         103 | Alexander  | Hunold    | AHUNOLD  | 590.423.4567 | 1987-06-20 | IT_PROG |  9000.00 |           0.00 |        102 |            60 |
|         100 | Steven     | King      | SKING    | 515.123.4567 | 1987-06-17 | AD_PRES | 24000.00 |           0.00 |       NULL |            90 |
|         101 | Neena      | Kochhar   | NKOCHHAR | 515.123.4568 | 1987-06-18 | AD_VP   | 17000.00 |           0.00 |        100 |            90 |
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
4 rows in set (0.00 sec)

mysql>
