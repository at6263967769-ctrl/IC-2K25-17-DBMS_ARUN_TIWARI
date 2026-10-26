Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 29
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
//COLLAGE DATA
mysql> CREATE DATABASE CollegeDB;
Query OK, 1 row affected (0.04 sec)

mysql> USE CollegeDB;
Database changed
mysql> CREATE TABLE Employee (
    ->     Emp_ID INT PRIMARY KEY,
    ->     Emp_Name VARCHAR(50),
    ->     Department VARCHAR(50),
    ->     Salary INT
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> INSERT INTO Employee VALUES
    -> (1, 'Rahul', 'IT', 40000),
    -> (2, 'Aman', 'HR', 35000),
    -> (3, 'Priya', 'IT', 50000),
    -> (4, 'Neha', 'Finance', 45000);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Employee;
+--------+----------+------------+--------+
| Emp_ID | Emp_Name | Department | Salary |
+--------+----------+------------+--------+
|      1 | Rahul    | IT         |  40000 |
|      2 | Aman     | HR         |  35000 |
|      3 | Priya    | IT         |  50000 |
|      4 | Neha     | Finance    |  45000 |
+--------+----------+------------+--------+
4 rows in set (0.00 sec)

mysql> SELECT Department, AVG(Salary) AS Average_Salary
    -> FROM Employee
    -> GROUP BY Department;
+------------+----------------+
| Department | Average_Salary |
+------------+----------------+
| IT         |     45000.0000 |
| HR         |     35000.0000 |
| Finance    |     45000.0000 |
+------------+----------------+
3 rows in set (0.01 sec)

mysql> SELECT * FROM Employee
    -> WHERE Salary > 40000;
+--------+----------+------------+--------+
| Emp_ID | Emp_Name | Department | Salary |
+--------+----------+------------+--------+
|      3 | Priya    | IT         |  50000 |
|      4 | Neha     | Finance    |  45000 |
+--------+----------+------------+--------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM Employee
    -> WHERE Department = 'IT';
+--------+----------+------------+--------+
| Emp_ID | Emp_Name | Department | Salary |
+--------+----------+------------+--------+
|      1 | Rahul    | IT         |  40000 |
|      3 | Priya    | IT         |  50000 |
+--------+----------+------------+--------+
2 rows in set (0.02 sec)

mysql> SELECT * FROM Employee
    -> ORDER BY Salary DESC;
+--------+----------+------------+--------+
| Emp_ID | Emp_Name | Department | Salary |
+--------+----------+------------+--------+
|      3 | Priya    | IT         |  50000 |
|      4 | Neha     | Finance    |  45000 |
|      1 | Rahul    | IT         |  40000 |
|      2 | Aman     | HR         |  35000 |
+--------+----------+------------+--------+
4 rows in set (0.00 sec)

mysql> SELECT MIN(Salary) AS Lowest_Salary
    -> FROM Employee;
+---------------+
| Lowest_Salary |
+---------------+
|         35000 |
+---------------+
1 row in set (0.02 sec)

mysql> SELECT MAX(Salary) AS Highest_Salary
    -> FROM Employee;
+----------------+
| Highest_Salary |
+----------------+
|          50000 |
+----------------+
1 row in set (0.02 sec)

mysql> SELECT AVG(Salary) AS Average_Salary
    -> FROM Employee;
+----------------+
| Average_Salary |
+----------------+
|     42500.0000 |
+----------------+
1 row in set (0.00 sec)

mysql> SELECT SUM(Salary) AS Total_Salary
    -> FROM Employee;
+--------------+
| Total_Salary |
+--------------+
|       170000 |
+--------------+
1 row in set (0.00 sec)

mysql> SELECT Department, SUM(Salary) AS Total_Salary
    -> FROM Employee
    -> GROUP BY Department;
+------------+--------------+
| Department | Total_Salary |
+------------+--------------+
| IT         |        90000 |
| HR         |        35000 |
| Finance    |        45000 |
+------------+--------------+
3 rows in set (0.00 sec)

//STUDENT DATA
mysql> CREATE TABLE Student (
    ->     Student_ID INT PRIMARY KEY,
    ->     Name VARCHAR(50),
    ->     Course VARCHAR(30),
    ->     Marks INT
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO Student VALUES
    -> (1, 'Ankit', 'MCA', 85),
    -> (2, 'Rahul', 'MCA', 72),
    -> (3, 'Priya', 'MCA', 90),
    -> (4, 'Neha', 'MCA', 78),
    -> (5, 'Ravi', 'MCA', 65);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Student;
+------------+-------+--------+-------+
| Student_ID | Name  | Course | Marks |
+------------+-------+--------+-------+
|          1 | Ankit | MCA    |    85 |
|          2 | Rahul | MCA    |    72 |
|          3 | Priya | MCA    |    90 |
|          4 | Neha  | MCA    |    78 |
|          5 | Ravi  | MCA    |    65 |
+------------+-------+--------+-------+
5 rows in set (0.00 sec)

mysql>
