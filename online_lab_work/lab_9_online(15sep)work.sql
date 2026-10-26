Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 79
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

mysql> USE pdb;
Database changed
mysql> CREATE TABLE employee (
    ->     id INT PRIMARY KEY,
    ->     name VARCHAR(30),
    ->     department VARCHAR(30),
    ->     salary DECIMAL(10,2),
    ->     city VARCHAR(30),
    ->     age INT
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> INSERT INTO employee VALUES
    -> (1,'Rahul','IT',60000,'Indore',28),
    -> (2,'Amit','HR',45000,'Bhopal',32),
    -> (3,'Priya','IT',75000,'Indore',26),
    -> (4,'Neha','Finance',55000,'Ujjain',30),
    -> (5,'Raj','HR',50000,'Indore',29),
    -> (6,'Sneha','Finance',70000,'Bhopal',27),
    -> (7,'Vikas','IT',65000,'Ujjain',31);
Query OK, 7 rows affected (0.02 sec)
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

mysql> DESC employee;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| id         | int           | NO   | PRI | NULL    |       |
| name       | varchar(30)   | YES  |     | NULL    |       |
| department | varchar(30)   | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | NULL    |       |
| city       | varchar(30)   | YES  |     | NULL    |       |
| age        | int           | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> SELECT name, department, salary FROM employee WHERE salary > (SELECT salary FROM employee WHERE name = 'Amit');
+-------+------------+----------+
| name  | department | salary   |
+-------+------------+----------+
| Rahul | IT         | 60000.00 |
| Priya | IT         | 75000.00 |
| Neha  | Finance    | 55000.00 |
| Raj   | HR         | 50000.00 |
| Sneha | Finance    | 70000.00 |
| Vikas | IT         | 65000.00 |
+-------+------------+----------+
6 rows in set (0.01 sec)

mysql> SELECT name, department, salary FROM employee WHERE salary = (SELECT MAX(salary) FROM employee);
+-------+------------+----------+
| name  | department | salary   |
+-------+------------+----------+
| Priya | IT         | 75000.00 |
+-------+------------+----------+
1 row in set (0.00 sec)

mysql> SELECT name, department, salary FROM employee WHERE salary = (SELECT MIN(salary) FROM employee);
+------+------------+----------+
| name | department | salary   |
+------+------------+----------+
| Amit | HR         | 45000.00 |
+------+------------+----------+
1 row in set (0.00 sec)

mysql>
mysql> SELECT name, department, salary FROM employee WHERE salary = (SELECT AVG(salary) FROM employee);
+-------+------------+----------+
| name  | department | salary   |
+-------+------------+----------+
| Rahul | IT         | 60000.00 |
+-------+------------+----------+
1 row in set (0.00 sec)

mysql> SELECT department, SUM(salary) FROM employee GROUP BY department;
+------------+-------------+
| department | SUM(salary) |
+------------+-------------+
| IT         |   200000.00 |
| HR         |    95000.00 |
| Finance    |   125000.00 |
+------------+-------------+
3 rows in set (0.01 sec)

mysql> SELECT department, COUNT(*) FROM employee GROUP BY department;
+------------+----------+
| department | COUNT(*) |
+------------+----------+
| IT         |        3 |
| HR         |        2 |
| Finance    |        2 |
+------------+----------+
3 rows in set (0.00 sec)

mysql> SELECT department, MAX(salary) FROM employee GROUP BY department;
+------------+-------------+
| department | MAX(salary) |
+------------+-------------+
| IT         |    75000.00 |
| HR         |    50000.00 |
| Finance    |    70000.00 |
+------------+-------------+
3 rows in set (0.00 sec)

mysql> SELECT department, MIN(salary) FROM employee GROUP BY department;
+------------+-------------+
| department | MIN(salary) |
+------------+-------------+
| IT         |    60000.00 |
| HR         |    45000.00 |
| Finance    |    55000.00 |
+------------+-------------+
3 rows in set (0.00 sec)

mysql> SELECT department, AVG(salary) FROM employee GROUP BY department;
+------------+--------------+
| department | AVG(salary)  |
+------------+--------------+
| IT         | 66666.666667 |
| HR         | 47500.000000 |
| Finance    | 62500.000000 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> SELECT d.dname, SUM(e.salary FROM department d JOIN emp e ON d.id = e.dept GROUP BY d.dname;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM department d JOIN emp e ON d.id = e.dept GROUP BY d.dname' at line 1
mysql> SELECT d.dname, SUM(e.salary) FROM department d JOIN emp e ON d.id = e.dept GROUP BY d.dname;
ERROR 1146 (42S02): Table 'pdb.department' doesn't exist
mysql> create table department (id int,dname varchar(30), primary key(id));
Query OK, 0 rows affected (0.04 sec)

mysql>  insert into department values(1,'IT');
Query OK, 1 row affected (0.02 sec)

mysql>  insert into department values(2,'HR');
Query OK, 1 row affected (0.01 sec)

mysql>  insert into department values(3,'SALES');
Query OK, 1 row affected (0.01 sec)

mysql>  create table emp(eid int,name varchar(30),salary int,dept int,primary key(eid));
Query OK, 0 rows affected (0.04 sec)

mysql>  insert into emp values(101,'ram',45000,1);
Query OK, 1 row affected (0.01 sec)

mysql> insert into emp values(102,'sam',65000,2);
Query OK, 1 row affected (0.01 sec)

mysql> insert into emp values(103,'jon',60000,2);
Query OK, 1 row affected (0.01 sec)

mysql>  insert into emp values(104,'abc',80000,1);
Query OK, 1 row affected (0.01 sec)

mysql>  insert into emp values(105,'xyz',85000,3);
Query OK, 1 row affected (0.01 sec)

mysql> select * from emp;
+-----+------+--------+------+
| eid | name | salary | dept |
+-----+------+--------+------+
| 101 | ram  |  45000 |    1 |
| 102 | sam  |  65000 |    2 |
| 103 | jon  |  60000 |    2 |
| 104 | abc  |  80000 |    1 |
| 105 | xyz  |  85000 |    3 |
+-----+------+--------+------+
5 rows in set (0.00 sec)

mysql> select name,salary from emp where dept in(select id from department where dname in('IT','HR') );
+------+--------+
| name | salary |
+------+--------+
| ram  |  45000 |
| sam  |  65000 |
| jon  |  60000 |
| abc  |  80000 |
+------+--------+
4 rows in set (0.01 sec)

mysql>  select * from department;
+----+-------+
| id | dname |
+----+-------+
|  1 | IT    |
|  2 | HR    |
|  3 | SALES |
+----+-------+
3 rows in set (0.00 sec)

mysql> select name,salary from emp where dept in(select id from department where dname in('IT','SALES') );
+------+--------+
| name | salary |
+------+--------+
| ram  |  45000 |
| abc  |  80000 |
| xyz  |  85000 |
+------+--------+
3 rows in set (0.00 sec)

mysql>
