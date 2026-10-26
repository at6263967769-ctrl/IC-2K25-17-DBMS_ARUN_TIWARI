Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 66
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
12 rows in set (0.01 sec)

mysql> USE hr;
Database changed
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
7 rows in set (0.01 sec)

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
25 rows in set (0.03 sec)

mysql> --Q1. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000.
    -> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary NOT BETWEEN 10000 AND 15000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--Q1. Write a query to display the name (first_name, last_name) and salary for a' at line 1
mysql> -- Q1. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000.
mysql> Select first_name, last_name, salary
    -> FROM employess
    -> WHERE salary NOT BETWEEN 10000 AND 15000;
ERROR 1146 (42S02): Table 'hr.employess' doesn't exist
mysql> Select first_name, last_name, salary
    -> FROM employees
    -> WHERE salary NOT BETWEEN 1000 AND 1500;
+-------------+-----------+----------+
| first_name  | last_name | salary   |
+-------------+-----------+----------+
| Steven      | King      | 24000.00 |
| Neena       | Kochhar   | 17000.00 |
| Lex         | De Haan   | 17000.00 |
| Alexander   | Hunold    |  9000.00 |
| Bruce       | Ernst     |  6000.00 |
| David       | Austin    |  4800.00 |
| Valli       | Pataballa |  4800.00 |
| Diana       | Lorentz   |  4200.00 |
| Nancy       | Greenberg | 12000.00 |
| Daniel      | Faviet    |  9000.00 |
| John        | Chen      |  8200.00 |
| Ismael      | Sciarra   |  7700.00 |
| Jose Manuel | Urman     |  7800.00 |
| Luis        | Popp      |  6900.00 |
| Den         | Raphaely  | 11000.00 |
| Alexander   | Khoo      |  3100.00 |
| John        | Russell   | 14000.00 |
| Karen       | Partners  | 13500.00 |
| Jennifer    | Whalen    |  4400.00 |
| Michael     | Hartstein | 13000.00 |
| Pat         | Fay       |  6000.00 |
| Susan       | Mavris    |  6500.00 |
| Hermann     | Baer      | 10000.00 |
| Shelley     | Higgins   | 12000.00 |
| William     | Gietz     |  8300.00 |
+-------------+-----------+----------+
25 rows in set (0.00 sec)

mysql> -- Q2. Write a query to display the name (first_name, last_name) and department ID of all employees in departments 30 or 100 in ascending order.
mysql> SELECT first_name, last_name, department_id
    -> FROM employees
    -> WHERE department_id IN (30, 100)
    -> ORDER BY department_id ASC;
+-------------+-----------+---------------+
| first_name  | last_name | department_id |
+-------------+-----------+---------------+
| Den         | Raphaely  |            30 |
| Alexander   | Khoo      |            30 |
| Nancy       | Greenberg |           100 |
| Daniel      | Faviet    |           100 |
| John        | Chen      |           100 |
| Ismael      | Sciarra   |           100 |
| Jose Manuel | Urman     |           100 |
| Luis        | Popp      |           100 |
+-------------+-----------+---------------+
8 rows in set (0.02 sec)

mysql> -- Q3. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.
mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary NOT BETWEEN 10000 AND 15000
    -> AND department_id IN (30, 100);
+-------------+-----------+---------+
| first_name  | last_name | salary  |
+-------------+-----------+---------+
| Alexander   | Khoo      | 3100.00 |
| Daniel      | Faviet    | 9000.00 |
| John        | Chen      | 8200.00 |
| Ismael      | Sciarra   | 7700.00 |
| Jose Manuel | Urman     | 7800.00 |
| Luis        | Popp      | 6900.00 |
+-------------+-----------+---------+
6 rows in set (0.00 sec)

mysql> SELECT first_name, last_name, salary FROM employees WHERE salary NOT BETWEEN 1000 AND 1500 AND department_id IN (30, 100);
+-------------+-----------+----------+
| first_name  | last_name | salary   |
+-------------+-----------+----------+
| Den         | Raphaely  | 11000.00 |
| Alexander   | Khoo      |  3100.00 |
| Nancy       | Greenberg | 12000.00 |
| Daniel      | Faviet    |  9000.00 |
| John        | Chen      |  8200.00 |
| Ismael      | Sciarra   |  7700.00 |
| Jose Manuel | Urman     |  7800.00 |
| Luis        | Popp      |  6900.00 |
+-------------+-----------+----------+
8 rows in set (0.00 sec)

mysql> -- -- Q4. Display the first_name, last_name and hire_date
mysql> -- for all employees who were hired in 1987.
mysql> SELECT first_name, last_name, hire_date FROM employees WHERE YEAR(hire_date) = 1987;
+-------------+-----------+------------+
| first_name  | last_name | hire_date  |
+-------------+-----------+------------+
| Steven      | King      | 1987-06-17 |
| Neena       | Kochhar   | 1987-06-18 |
| Lex         | De Haan   | 1987-06-19 |
| Alexander   | Hunold    | 1987-06-20 |
| Bruce       | Ernst     | 1987-06-21 |
| David       | Austin    | 1987-06-22 |
| Valli       | Pataballa | 1987-06-23 |
| Diana       | Lorentz   | 1987-06-24 |
| Nancy       | Greenberg | 1987-06-25 |
| Daniel      | Faviet    | 1987-06-26 |
| John        | Chen      | 1987-06-27 |
| Ismael      | Sciarra   | 1987-06-28 |
| Jose Manuel | Urman     | 1987-06-29 |
| Luis        | Popp      | 1987-06-30 |
| Den         | Raphaely  | 1987-07-01 |
| Alexander   | Khoo      | 1987-07-02 |
| John        | Russell   | 1987-08-01 |
| Karen       | Partners  | 1987-08-02 |
| Jennifer    | Whalen    | 1987-09-25 |
| Michael     | Hartstein | 1987-09-26 |
| Pat         | Fay       | 1987-09-27 |
| Susan       | Mavris    | 1987-09-28 |
| Hermann     | Baer      | 1987-09-29 |
| Shelley     | Higgins   | 1987-09-30 |
| William     | Gietz     | 1987-10-01 |
+-------------+-----------+------------+
25 rows in set (0.00 sec)

mysql> -- Q5. Display the first_name of all employees
mysql> -- who have both "b" and "c" in their first name.
mysql>
mysql> SELECT first_name FROM employees WHERE first_name LIKE '%b%' AND first_name LIKE '%c%';
+------------+
| first_name |
+------------+
| Bruce      |
+------------+
1 row in set (0.01 sec)
