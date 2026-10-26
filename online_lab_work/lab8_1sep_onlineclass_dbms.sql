Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 59
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE company_db;
Query OK, 1 row affected (0.05 sec)

mysql> USE company_db;
Database changed
mysql> CREATE TABLE employee ( id INT PRIMARY KEY, name VARCHAR(50), department VARCHAR(50), salary DECIMAL(10,2), city VARCHAR(50), age INT );
Query OK, 0 rows affected (0.11 sec)

mysql> INSERT INTO employee VALUES (1, 'Rahul', 'IT', 60000, 'Indore', 28), (2, 'Amit', 'HR', 45000, 'Bhopal', 32), (3, 'Priya', 'IT', 75000, 'Indore', 26), (4, 'Neha', 'Finance', 55000, 'Ujjain', 30), (5, 'Raj', 'HR', 50000, 'Indore', 29), (6, 'Sneha', 'Finance', 70000, 'Bhopal', 27), (7, 'Vikas', 'IT', 65000, 'Ujjain', 31);
Query OK, 7 rows affected (0.04 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employee;
+----+-------+------------+----------+--------+------+
| id | name  | department | salary   | city   | age  |
+----+-------+------------+----------+--------+------+
|  1 | Rahul | IT         | 60000.00 | Indore |   28 |
|  2 | Amit  | HR         | 45000.00 | Bhopal |   32 |
|  3 | Priya | IT         | 75000.00 | Indore |   26 |
|  4 | Neha  | Finance    | 55000.00 | Ujjain |   30 |
|  5 | Raj   | HR         | 50000.00 | Indore |   29 |
|  6 | Sneha | Finance    | 70000.00 | Bhopal |   27 |
|  7 | Vikas | IT         | 65000.00 | Ujjain |   31 |
+----+-------+------------+----------+--------+------+
7 rows in set (0.00 sec)

mysql> SELECT name, salary FROM employee;
+-------+----------+
| name  | salary   |
+-------+----------+
| Rahul | 60000.00 |
| Amit  | 45000.00 |
| Priya | 75000.00 |
| Neha  | 55000.00 |
| Raj   | 50000.00 |
| Sneha | 70000.00 |
| Vikas | 65000.00 |
+-------+----------+
7 rows in set (0.00 sec)

mysql> SELECT name, salary, age FROM employee;
+-------+----------+------+
| name  | salary   | age  |
+-------+----------+------+
| Rahul | 60000.00 |   28 |
| Amit  | 45000.00 |   32 |
| Priya | 75000.00 |   26 |
| Neha  | 55000.00 |   30 |
| Raj   | 50000.00 |   29 |
| Sneha | 70000.00 |   27 |
| Vikas | 65000.00 |   31 |
+-------+----------+------+
7 rows in set (0.00 sec)

mysql> SELECT DISTINCT department FROM employee;
+------------+
| department |
+------------+
| IT         |
| HR         |
| Finance    |
+------------+
3 rows in set (0.02 sec)

mysql> SELECT name, salary FROM employee ORDER BY salary ASC;
+-------+----------+
| name  | salary   |
+-------+----------+
| Amit  | 45000.00 |
| Raj   | 50000.00 |
| Neha  | 55000.00 |
| Rahul | 60000.00 |
| Vikas | 65000.00 |
| Sneha | 70000.00 |
| Priya | 75000.00 |
+-------+----------+
7 rows in set (0.00 sec)

mysql> SELECT name, salary FROM employee ORDER BY salary DESC;
+-------+----------+
| name  | salary   |
+-------+----------+
| Priya | 75000.00 |
| Sneha | 70000.00 |
| Vikas | 65000.00 |
| Rahul | 60000.00 |
| Neha  | 55000.00 |
| Raj   | 50000.00 |
| Amit  | 45000.00 |
+-------+----------+
7 rows in set (0.00 sec)

mysql> SELECT name, salary FROM employee ORDER BY name ASC;
+-------+----------+
| name  | salary   |
+-------+----------+
| Amit  | 45000.00 |
| Neha  | 55000.00 |
| Priya | 75000.00 |
| Rahul | 60000.00 |
| Raj   | 50000.00 |
| Sneha | 70000.00 |
| Vikas | 65000.00 |
+-------+----------+
7 rows in set (0.02 sec)

mysql> SELECT * FROM employee ORDER BY age ASC;
+----+-------+------------+----------+--------+------+
| id | name  | department | salary   | city   | age  |
+----+-------+------------+----------+--------+------+
|  3 | Priya | IT         | 75000.00 | Indore |   26 |
|  6 | Sneha | Finance    | 70000.00 | Bhopal |   27 |
|  1 | Rahul | IT         | 60000.00 | Indore |   28 |
|  5 | Raj   | HR         | 50000.00 | Indore |   29 |
|  4 | Neha  | Finance    | 55000.00 | Ujjain |   30 |
|  7 | Vikas | IT         | 65000.00 | Ujjain |   31 |
|  2 | Amit  | HR         | 45000.00 | Bhopal |   32 |
+----+-------+------------+----------+--------+------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM employee WHERE department = 'IT';
+----+-------+------------+----------+--------+------+
| id | name  | department | salary   | city   | age  |
+----+-------+------------+----------+--------+------+
|  1 | Rahul | IT         | 60000.00 | Indore |   28 |
|  3 | Priya | IT         | 75000.00 | Indore |   26 |
|  7 | Vikas | IT         | 65000.00 | Ujjain |   31 |
+----+-------+------------+----------+--------+------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM employee WHERE salary > 60000;
+----+-------+------------+----------+--------+------+
| id | name  | department | salary   | city   | age  |
+----+-------+------------+----------+--------+------+
|  3 | Priya | IT         | 75000.00 | Indore |   26 |
|  6 | Sneha | Finance    | 70000.00 | Bhopal |   27 |
|  7 | Vikas | IT         | 65000.00 | Ujjain |   31 |
+----+-------+------------+----------+--------+------+
3 rows in set (0.02 sec)

mysql> SELECT * FROM employee WHERE salary < 60000;
+----+------+------------+----------+--------+------+
| id | name | department | salary   | city   | age  |
+----+------+------------+----------+--------+------+
|  2 | Amit | HR         | 45000.00 | Bhopal |   32 |
|  4 | Neha | Finance    | 55000.00 | Ujjain |   30 |
|  5 | Raj  | HR         | 50000.00 | Indore |   29 |
+----+------+------------+----------+--------+------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM employee WHERE salary = 60000;
+----+-------+------------+----------+--------+------+
| id | name  | department | salary   | city   | age  |
+----+-------+------------+----------+--------+------+
|  1 | Rahul | IT         | 60000.00 | Indore |   28 |
+----+-------+------------+----------+--------+------+
1 row in set (0.00 sec)

mysql> SELECT * FROM employee WHERE department = 'IT' AND salary > 60000;
+----+-------+------------+----------+--------+------+
| id | name  | department | salary   | city   | age  |
+----+-------+------------+----------+--------+------+
|  3 | Priya | IT         | 75000.00 | Indore |   26 |
|  7 | Vikas | IT         | 65000.00 | Ujjain |   31 |
+----+-------+------------+----------+--------+------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM employee WHERE department = 'IT' OR department = 'HR';
+----+-------+------------+----------+--------+------+
| id | name  | department | salary   | city   | age  |
+----+-------+------------+----------+--------+------+
|  1 | Rahul | IT         | 60000.00 | Indore |   28 |
|  2 | Amit  | HR         | 45000.00 | Bhopal |   32 |
|  3 | Priya | IT         | 75000.00 | Indore |   26 |
|  5 | Raj   | HR         | 50000.00 | Indore |   29 |
|  7 | Vikas | IT         | 65000.00 | Ujjain |   31 |
+----+-------+------------+----------+--------+------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM employee WHERE salary BETWEEN 50000 AND 70000;
+----+-------+------------+----------+--------+------+
| id | name  | department | salary   | city   | age  |
+----+-------+------------+----------+--------+------+
|  1 | Rahul | IT         | 60000.00 | Indore |   28 |
|  4 | Neha  | Finance    | 55000.00 | Ujjain |   30 |
|  5 | Raj   | HR         | 50000.00 | Indore |   29 |
|  6 | Sneha | Finance    | 70000.00 | Bhopal |   27 |
|  7 | Vikas | IT         | 65000.00 | Ujjain |   31 |
+----+-------+------------+----------+--------+------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM employee WHERE department IN ('IT', 'HR');
+----+-------+------------+----------+--------+------+
| id | name  | department | salary   | city   | age  |
+----+-------+------------+----------+--------+------+
|  1 | Rahul | IT         | 60000.00 | Indore |   28 |
|  2 | Amit  | HR         | 45000.00 | Bhopal |   32 |
|  3 | Priya | IT         | 75000.00 | Indore |   26 |
|  5 | Raj   | HR         | 50000.00 | Indore |   29 |
|  7 | Vikas | IT         | 65000.00 | Ujjain |   31 |
+----+-------+------------+----------+--------+------+
5 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM employee
    -> WHERE department NOT IN ('IT', 'HR');
+----+-------+------------+----------+--------+------+
| id | name  | department | salary   | city   | age  |
+----+-------+------------+----------+--------+------+
|  4 | Neha  | Finance    | 55000.00 | Ujjain |   30 |
|  6 | Sneha | Finance    | 70000.00 | Bhopal |   27 |
+----+-------+------------+----------+--------+------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM employee LIMIT 3;
+----+-------+------------+----------+--------+------+
| id | name  | department | salary   | city   | age  |
+----+-------+------------+----------+--------+------+
|  1 | Rahul | IT         | 60000.00 | Indore |   28 |
|  2 | Amit  | HR         | 45000.00 | Bhopal |   32 |
|  3 | Priya | IT         | 75000.00 | Indore |   26 |
+----+-------+------------+----------+--------+------+
3 rows in set (0.00 sec)

mysql> SELECT name, salary FROM employee ORDER BY salary DESC LIMIT 3;
+-------+----------+
| name  | salary   |
+-------+----------+
| Priya | 75000.00 |
| Sneha | 70000.00 |
| Vikas | 65000.00 |
+-------+----------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM employee LIMIT 3 OFFSET 2;
+----+-------+------------+----------+--------+------+
| id | name  | department | salary   | city   | age  |
+----+-------+------------+----------+--------+------+
|  3 | Priya | IT         | 75000.00 | Indore |   26 |
|  4 | Neha  | Finance    | 55000.00 | Ujjain |   30 |
|  5 | Raj   | HR         | 50000.00 | Indore |   29 |
+----+-------+------------+----------+--------+------+
3 rows in set (0.00 sec)

mysql> SELECT name AS emp_name, salary AS emp_salary, age FROM employee;
+----------+------------+------+
| emp_name | emp_salary | age  |
+----------+------------+------+
| Rahul    |   60000.00 |   28 |
| Amit     |   45000.00 |   32 |
| Priya    |   75000.00 |   26 |
| Neha     |   55000.00 |   30 |
| Raj      |   50000.00 |   29 |
| Sneha    |   70000.00 |   27 |
| Vikas    |   65000.00 |   31 |
+----------+------------+------+
7 rows in set (0.00 sec)

mysql> SELECT COUNT(*) AS total_employees FROM employee;
+-----------------+
| total_employees |
+-----------------+
|               7 |
+-----------------+
1 row in set (0.01 sec)

mysql> SELECT department, COUNT(*) AS total_employees FROM employee GROUP BY department;
+------------+-----------------+
| department | total_employees |
+------------+-----------------+
| IT         |               3 |
| HR         |               2 |
| Finance    |               2 |
+------------+-----------------+
3 rows in set (0.00 sec)

mysql> SELECT AVG(salary) AS average_salary FROM employee;
+----------------+
| average_salary |
+----------------+
|   60000.000000 |
+----------------+
1 row in set (0.00 sec)

mysql> SELECT department, AVG(salary) AS average_salary FROM employee GROUP BY department;
+------------+----------------+
| department | average_salary |
+------------+----------------+
| IT         |   66666.666667 |
| HR         |   47500.000000 |
| Finance    |   62500.000000 |
+------------+----------------+
3 rows in set (0.02 sec)

mysql> SELECT SUM(salary) AS total_salary FROM employee;
+--------------+
| total_salary |
+--------------+
|    420000.00 |
+--------------+
1 row in set (0.00 sec)

mysql> SELECT department, SUM(salary) AS total_salary FROM employee GROUP BY department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| IT         |    200000.00 |
| HR         |     95000.00 |
| Finance    |    125000.00 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> SELECT MAX(salary) AS highest_salary FROM employee;
+----------------+
| highest_salary |
+----------------+
|       75000.00 |
+----------------+
1 row in set (0.00 sec)

mysql> SELECT MIN(salary) AS lowest_salary FROM employee;
+---------------+
| lowest_salary |
+---------------+
|      45000.00 |
+---------------+
1 row in set (0.00 sec)

mysql> SELECT department, COUNT(*) AS total_employees FROM employee GROUP BY department;
+------------+-----------------+
| department | total_employees |
+------------+-----------------+
| IT         |               3 |
| HR         |               2 |
| Finance    |               2 |
+------------+-----------------+
3 rows in set (0.00 sec)

mysql> SELECT department, COUNT(*) AS total_employees FROM employee GROUP BY department HAVING COUNT(*) > 2;
+------------+-----------------+
| department | total_employees |
+------------+-----------------+
| IT         |               3 |
+------------+-----------------+
1 row in set (0.00 sec)

mysql> SELECT department, COUNT(*) AS total_employees FROM employee GROUP BY department HAVING COUNT(*) = 2;
+------------+-----------------+
| department | total_employees |
+------------+-----------------+
| HR         |               2 |
| Finance    |               2 |
+------------+-----------------+
2 rows in set (0.00 sec)

mysql> SELECT department, AVG(salary) AS average_salary FROM employee GROUP BY department HAVING AVG(salary) > 60000;
+------------+----------------+
| department | average_salary |
+------------+----------------+
| IT         |   66666.666667 |
| Finance    |   62500.000000 |
+------------+----------------+
2 rows in set (0.00 sec)

mysql> SELECT department, AVG(salary) AS average_salary FROM employee GROUP BY department HAVING AVG(salary) < 60000;
+------------+----------------+
| department | average_salary |
+------------+----------------+
| HR         |   47500.000000 |
+------------+----------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM employee WHERE name LIKE 'J%';
Empty set (0.00 sec)

mysql> SELECT * FROM employee WHERE name LIKE 'A%';
+----+------+------------+----------+--------+------+
| id | name | department | salary   | city   | age  |
+----+------+------------+----------+--------+------+
|  2 | Amit | HR         | 45000.00 | Bhopal |   32 |
+----+------+------------+----------+--------+------+
1 row in set (0.00 sec)

mysql> SELECT * FROM employee WHERE name LIKE '%a';
+----+-------+------------+----------+--------+------+
| id | name  | department | salary   | city   | age  |
+----+-------+------------+----------+--------+------+
|  3 | Priya | IT         | 75000.00 | Indore |   26 |
|  4 | Neha  | Finance    | 55000.00 | Ujjain |   30 |
|  6 | Sneha | Finance    | 70000.00 | Bhopal |   27 |
+----+-------+------------+----------+--------+------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM employee WHERE name LIKE '%i%';
+----+-------+------------+----------+--------+------+
| id | name  | department | salary   | city   | age  |
+----+-------+------------+----------+--------+------+
|  2 | Amit  | HR         | 45000.00 | Bhopal |   32 |
|  3 | Priya | IT         | 75000.00 | Indore |   26 |
|  7 | Vikas | IT         | 65000.00 | Ujjain |   31 |
+----+-------+------------+----------+--------+------+
3 rows in set (0.00 sec)

mysql> UPDATE employee SET salary = 65000 WHERE id = 1;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM employee;
+----+-------+------------+----------+--------+------+
| id | name  | department | salary   | city   | age  |
+----+-------+------------+----------+--------+------+
|  1 | Rahul | IT         | 65000.00 | Indore |   28 |
|  2 | Amit  | HR         | 45000.00 | Bhopal |   32 |
|  3 | Priya | IT         | 75000.00 | Indore |   26 |
|  4 | Neha  | Finance    | 55000.00 | Ujjain |   30 |
|  5 | Raj   | HR         | 50000.00 | Indore |   29 |
|  6 | Sneha | Finance    | 70000.00 | Bhopal |   27 |
|  7 | Vikas | IT         | 65000.00 | Ujjain |   31 |
+----+-------+------------+----------+--------+------+
7 rows in set (0.00 sec)

mysql> DELETE FROM employee WHERE id = 7;
Query OK, 1 row affected (0.03 sec)

mysql> DESC employee;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| id         | int           | NO   | PRI | NULL    |       |
| name       | varchar(50)   | YES  |     | NULL    |       |
| department | varchar(50)   | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | NULL    |       |
| city       | varchar(50)   | YES  |     | NULL    |       |
| age        | int           | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> DESCRIBE employee;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| id         | int           | NO   | PRI | NULL    |       |
| name       | varchar(50)   | YES  |     | NULL    |       |
| department | varchar(50)   | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | NULL    |       |
| city       | varchar(50)   | YES  |     | NULL    |       |
| age        | int           | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

mysql> SHOW TABLES;
+----------------------+
| Tables_in_company_db |
+----------------------+
| employee             |
+----------------------+
1 row in set (0.00 sec)

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
12 rows in set (0.00 sec)

mysql> SELECT DATABASE();
+------------+
| DATABASE() |
+------------+
| company_db |
+------------+
1 row in set (0.00 sec)

mysql>
