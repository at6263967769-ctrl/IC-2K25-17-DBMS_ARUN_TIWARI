
mysql> CREATE DATABASE IF NOT EXISTS pdb;
Query OK, 1 row affected, 1 warning (0.01 sec)

mysql> USE pdb;
Database changed
mysql> CREATE TABLE IF NOT EXISTS user (
    ->  id INT PRIMARY KEY,
    ->  name VARCHAR(50),
    ->  pass VARCHAR(50),
    ->  age INT
    ->  );
Query OK, 0 rows affected, 1 warning (0.02 sec)

mysql> INSERT INTO user (id, name, pass, age) VALUES
    -> (1, 'ram', 'r23', 25),
    -> (2, 'shyam', 's22', 23),
    -> (4, 'manoj', 'm23', 23),
    -> (5, 'manoj', 'm23', 23),
    -> (6, 'vijay', 'vj1', 11),
    -> (7, 'ram', 'r12', 23),
    -> (8, 'aman', 'am1', 11),
    -> (9, 'vijay', 'v12', 33),
    -> (10, 'kamal', 'km11', 22),
    -> (11, 'kamal', 'km1', 22),
    -> (12, 'abc', 'ab23', 33);
ERROR 1062 (23000): Duplicate entry '1' for key 'user.PRIMARY'
mysql>
mysql> SELECT * FROM user;
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
|  1 | ram   | r23  |   25 |
|  2 | shyam | s22  |   23 |
|  4 | manoj | m23  |   23 |
|  5 | manoj | m23  |   23 |
|  6 | vijay | vj1  |   11 |
|  7 | ram   | r12  |   23 |
|  8 | aman  | am1  |   11 |
|  9 | vijay | v12  |   33 |
| 10 | kamal | km11 |   22 |
| 11 | kamal | km1  |   22 |
| 12 | abc   | ab23 |   33 |
+----+-------+------+------+
11 rows in set (0.00 sec)
//resion
"This warning occurred because the database (pdb) and the table (user) already existed in MySQL. Using IF NOT EXISTS tells MySQL to skip creation if they are already present, which generates a warning.

Additionally, the Duplicate entry '1' error occurred because the id 1 was already stored in the table, and MySQL's PRIMARY KEY constraint prevents duplicate IDs from being inserted twice."





Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 48
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| assignment         |
| assignment_db      |
| collegedb          |
| hr                 |
| hr_assignment      |
| hr_db              |
| information_schema |
| mysql              |
| pdb                |
| performance_schema |
| sys                |
+--------------------+
11 rows in set (0.01 sec)

mysql> use pdb;
Database changed
mysql> show tables;
+---------------+
| Tables_in_pdb |
+---------------+
| user          |
+---------------+
1 row in set (0.00 sec)

mysql> select * from user;
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
|  1 | ram   | r23  |   25 |
|  2 | shyam | s22  |   23 |
|  4 | manoj | m23  |   23 |
|  5 | manoj | m23  |   23 |
|  6 | vijay | vj1  |   11 |
|  7 | ram   | r12  |   23 |
|  8 | aman  | am1  |   11 |
|  9 | vijay | v12  |   33 |
| 10 | kamal | km11 |   22 |
| 11 | kamal | km1  |   22 |
| 12 | abc   | ab23 |   33 |
+----+-------+------+------+
11 rows in set (0.00 sec)

mysql> select name,age from user;
+-------+------+
| name  | age  |
+-------+------+
| ram   |   25 |
| shyam |   23 |
| manoj |   23 |
| manoj |   23 |
| vijay |   11 |
| ram   |   23 |
| aman  |   11 |
| vijay |   33 |
| kamal |   22 |
| kamal |   22 |
| abc   |   33 |
+-------+------+
11 rows in set (0.00 sec)

mysql> select * from user where id=1;
+----+------+------+------+
| id | name | pass | age  |
+----+------+------+------+
|  1 | ram  | r23  |   25 |
+----+------+------+------+
1 row in set (0.00 sec)

mysql> select * from user where name='ram';
+----+------+------+------+
| id | name | pass | age  |
+----+------+------+------+
|  1 | ram  | r23  |   25 |
|  7 | ram  | r12  |   23 |
+----+------+------+------+
2 rows in set (0.00 sec)

mysql> select * from user where age=23;
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
|  2 | shyam | s22  |   23 |
|  4 | manoj | m23  |   23 |
|  5 | manoj | m23  |   23 |
|  7 | ram   | r12  |   23 |
+----+-------+------+------+
4 rows in set (0.00 sec)

mysql> select * from user where age<20;
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
|  6 | vijay | vj1  |   11 |
|  8 | aman  | am1  |   11 |
+----+-------+------+------+
2 rows in set (0.00 sec)

mysql> select * from user where age>20;
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
|  1 | ram   | r23  |   25 |
|  2 | shyam | s22  |   23 |
|  4 | manoj | m23  |   23 |
|  5 | manoj | m23  |   23 |
|  7 | ram   | r12  |   23 |
|  9 | vijay | v12  |   33 |
| 10 | kamal | km11 |   22 |
| 11 | kamal | km1  |   22 |
| 12 | abc   | ab23 |   33 |
+----+-------+------+------+
9 rows in set (0.00 sec)

mysql> select * from user where age<11;
Empty set (0.00 sec)

mysql> select * from user where age<=11;
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
|  6 | vijay | vj1  |   11 |
|  8 | aman  | am1  |   11 |
+----+-------+------+------+
2 rows in set (0.00 sec)

mysql> select * from user where name='ram' and age>20;
+----+------+------+------+
| id | name | pass | age  |
+----+------+------+------+
|  1 | ram  | r23  |   25 |
|  7 | ram  | r12  |   23 |
+----+------+------+------+
2 rows in set (0.00 sec)

mysql> select * from user where name='ram' and age>23;
+----+------+------+------+
| id | name | pass | age  |
+----+------+------+------+
|  1 | ram  | r23  |   25 |
+----+------+------+------+
1 row in set (0.00 sec)

mysql> select * from user where age>=20 and age<=25;
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
|  1 | ram   | r23  |   25 |
|  2 | shyam | s22  |   23 |
|  4 | manoj | m23  |   23 |
|  5 | manoj | m23  |   23 |
|  7 | ram   | r12  |   23 |
| 10 | kamal | km11 |   22 |
| 11 | kamal | km1  |   22 |
+----+-------+------+------+
7 rows in set (0.00 sec)

mysql> select * from user where age>=20 && age<=25;
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
|  1 | ram   | r23  |   25 |
|  2 | shyam | s22  |   23 |
|  4 | manoj | m23  |   23 |
|  5 | manoj | m23  |   23 |
|  7 | ram   | r12  |   23 |
| 10 | kamal | km11 |   22 |
| 11 | kamal | km1  |   22 |
+----+-------+------+------+
7 rows in set, 1 warning (0.02 sec)

mysql> select * from user where age between 20 and 25;
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
|  1 | ram   | r23  |   25 |
|  2 | shyam | s22  |   23 |
|  4 | manoj | m23  |   23 |
|  5 | manoj | m23  |   23 |
|  7 | ram   | r12  |   23 |
| 10 | kamal | km11 |   22 |
| 11 | kamal | km1  |   22 |
+----+-------+------+------+
7 rows in set (0.01 sec)

mysql> select * from user where name='ram' or name='manoj' or name='kamal';
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
|  1 | ram   | r23  |   25 |
|  4 | manoj | m23  |   23 |
|  5 | manoj | m23  |   23 |
|  7 | ram   | r12  |   23 |
| 10 | kamal | km11 |   22 |
| 11 | kamal | km1  |   22 |
+----+-------+------+------+
6 rows in set (0.00 sec)

mysql> select * from user where name in('ram','manoj','kamal');
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
|  1 | ram   | r23  |   25 |
|  4 | manoj | m23  |   23 |
|  5 | manoj | m23  |   23 |
|  7 | ram   | r12  |   23 |
| 10 | kamal | km11 |   22 |
| 11 | kamal | km1  |   22 |
+----+-------+------+------+
6 rows in set (0.00 sec)

mysql> select * from user where name='abc';
+----+------+------+------+
| id | name | pass | age  |
+----+------+------+------+
| 12 | abc  | ab23 |   33 |
+----+------+------+------+
1 row in set (0.00 sec)

mysql> select * from user where age in(11,15,22,23,25);
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
|  1 | ram   | r23  |   25 |
|  2 | shyam | s22  |   23 |
|  4 | manoj | m23  |   23 |
|  5 | manoj | m23  |   23 |
|  6 | vijay | vj1  |   11 |
|  7 | ram   | r12  |   23 |
|  8 | aman  | am1  |   11 |
| 10 | kamal | km11 |   22 |
| 11 | kamal | km1  |   22 |
+----+-------+------+------+
9 rows in set (0.00 sec)

mysql> select * from user where name like 'r%';
+----+------+------+------+
| id | name | pass | age  |
+----+------+------+------+
|  1 | ram  | r23  |   25 |
|  7 | ram  | r12  |   23 |
+----+------+------+------+
2 rows in set (0.01 sec)

mysql> select * from user where name like 'm%';
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
|  4 | manoj | m23  |   23 |
|  5 | manoj | m23  |   23 |
+----+-------+------+------+
2 rows in set (0.00 sec)

mysql> select * from user where name like 'a%';
+----+------+------+------+
| id | name | pass | age  |
+----+------+------+------+
|  8 | aman | am1  |   11 |
| 12 | abc  | ab23 |   33 |
+----+------+------+------+
2 rows in set (0.00 sec)

mysql> select * from user where name like '%m';
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
|  1 | ram   | r23  |   25 |
|  2 | shyam | s22  |   23 |
|  7 | ram   | r12  |   23 |
+----+-------+------+------+
3 rows in set (0.00 sec)

mysql> select * from user where name like '%am';
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
|  1 | ram   | r23  |   25 |
|  2 | shyam | s22  |   23 |
|  7 | ram   | r12  |   23 |
+----+-------+------+------+
3 rows in set (0.00 sec)

mysql>
