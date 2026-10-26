Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 56
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
11 rows in set (0.00 sec)

mysql> use pdb;
Database changed
mysql> show tables;
+---------------+
| Tables_in_pdb |
+---------------+
| user          |
+---------------+
1 row in set (0.03 sec)

mysql> select * from user order by age asc;
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
|  6 | vijay | vj1  |   11 |
|  8 | aman  | am1  |   11 |
| 10 | kamal | km11 |   22 |
| 11 | kamal | km1  |   22 |
|  2 | shyam | s22  |   23 |
|  4 | manoj | m23  |   23 |
|  5 | manoj | m23  |   23 |
|  7 | ram   | r12  |   23 |
|  1 | ram   | r23  |   25 |
|  9 | vijay | v12  |   33 |
| 12 | abc   | ab23 |   33 |
+----+-------+------+------+
11 rows in set (0.00 sec)

mysql> select * from user order by age desc;
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
|  9 | vijay | v12  |   33 |
| 12 | abc   | ab23 |   33 |
|  1 | ram   | r23  |   25 |
|  2 | shyam | s22  |   23 |
|  4 | manoj | m23  |   23 |
|  5 | manoj | m23  |   23 |
|  7 | ram   | r12  |   23 |
| 10 | kamal | km11 |   22 |
| 11 | kamal | km1  |   22 |
|  6 | vijay | vj1  |   11 |
|  8 | aman  | am1  |   11 |
+----+-------+------+------+
11 rows in set (0.00 sec)

mysql> select distinct name from user;
+-------+
| name  |
+-------+
| ram   |
| shyam |
| manoj |
| vijay |
| aman  |
| kamal |
| abc   |
+-------+
7 rows in set (0.02 sec)

mysql> select count(*) from user;
+----------+
| count(*) |
+----------+
|       11 |
+----------+
1 row in set (0.05 sec)

mysql> select min(age) from user;
+----------+
| min(age) |
+----------+
|       11 |
+----------+
1 row in set (0.02 sec)

mysql> select max(age) from user;
+----------+
| max(age) |
+----------+
|       33 |
+----------+
1 row in set (0.00 sec)

mysql> select avg(age) from user;
+----------+
| avg(age) |
+----------+
|  22.6364 |
+----------+
1 row in set (0.02 sec)

mysql> select sum(age) from user;
+----------+
| sum(age) |
+----------+
|      249 |
+----------+
1 row in set (0.00 sec)

mysql> select name, age from user where age>22;
+-------+------+
| name  | age  |
+-------+------+
| ram   |   25 |
| shyam |   23 |
| manoj |   23 |
| manoj |   23 |
| ram   |   23 |
| vijay |   33 |
| abc   |   33 |
+-------+------+
7 rows in set (0.00 sec)

mysql> select * from user order by name asc;
+----+-------+------+------+
| id | name  | pass | age  |
+----+-------+------+------+
| 12 | abc   | ab23 |   33 |
|  8 | aman  | am1  |   11 |
| 10 | kamal | km11 |   22 |
| 11 | kamal | km1  |   22 |
|  4 | manoj | m23  |   23 |
|  5 | manoj | m23  |   23 |
|  1 | ram   | r23  |   25 |
|  7 | ram   | r12  |   23 |
|  2 | shyam | s22  |   23 |
|  6 | vijay | vj1  |   11 |
|  9 | vijay | v12  |   33 |
+----+-------+------+------+
11 rows in set (0.00 sec)

mysql>
