mysql> create database pdb;
Query OK, 1 row affected (0.01 sec)

mysql> use pdb;
Database changed
mysql> create table students(
    -> id INT,
    -> name VARCHAR(30),
    -> pass VARCHAR(30),
    -> age INT
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> show tables;
+---------------+
| Tables_in_pdb |
+---------------+
| students      |
+---------------+
1 row in set (0.00 sec)

mysql> insert into students VALUES(1,'Ram','r23',25);
Query OK, 1 row affected (0.02 sec)

mysql> select * from students;
+------+------+------+------+
| id   | name | pass | age  |
+------+------+------+------+
|    1 | Ram  | r23  |   25 |
+------+------+------+------+
1 row in set (0.00 sec)

mysql> insert into students VALUES(2,'Shyam','s22',23);
Query OK, 1 row affected (0.01 sec)

mysql> insert into students VALUES(3,'Manoj','m23',23);
Query OK, 1 row affected (0.01 sec)

mysql> insert into students VALUES(4,'Vijay','vjl',11);
Query OK, 1 row affected (0.01 sec)

mysql> insert into students VALUES(5,'Ram','r12',23);
Query OK, 1 row affected (0.01 sec)

mysql> insert into students VALUES(6,'Aman','am1',11);
Query OK, 1 row affected (0.01 sec)

mysql> insert into students VALUES(7,'Vijay','v12',33);
Query OK, 1 row affected (0.01 sec)

mysql> insert into students VALUES(8,'Kamal','km11',22);
Query OK, 1 row affected (0.01 sec)

mysql> insert into students VALUES(9,'Kamal','km1',22);
Query OK, 1 row affected (0.01 sec)

mysql> insert into students VALUES(10,'abc','ab23',33);
Query OK, 1 row affected (0.01 sec)

mysql> select * from students;
+------+-------+------+------+
| id   | name  | pass | age  |
+------+-------+------+------+
|    1 | Ram   | r23  |   25 |
|    2 | Shyam | s22  |   23 |
|    3 | Manoj | m23  |   23 |
|    4 | Vijay | vjl  |   11 |
|    5 | Ram   | r12  |   23 |
|    6 | Aman  | am1  |   11 |
|    7 | Vijay | v12  |   33 |
|    8 | Kamal | km11 |   22 |
|    9 | Kamal | km1  |   22 |
|   10 | abc   | ab23 |   33 |
+------+-------+------+------+
10 rows in set (0.00 sec)

mysql> select name,age from students;
+-------+------+
| name  | age  |
+-------+------+
| Ram   |   25 |
| Shyam |   23 |
| Manoj |   23 |
| Vijay |   11 |
| Ram   |   23 |
| Aman  |   11 |
| Vijay |   33 |
| Kamal |   22 |
| Kamal |   22 |
| abc   |   33 |
+-------+------+
10 rows in set (0.00 sec)
mysql> select * from students where id=1;
+------+------+------+------+
| id   | name | pass | age  |
+------+------+------+------+
|    1 | Ram  | r23  |   25 |
+------+------+------+------+
1 row in set (0.00 sec)
mysql> select * from students where name='Ram';
+------+------+------+------+
| id   | name | pass | age  |
+------+------+------+------+
|    1 | Ram  | r23  |   25 |
|    5 | Ram  | r12  |   23 |
+------+------+------+------+
2 rows in set (0.00 sec)

mysql> select * from students where age=23;
+------+-------+------+------+
| id   | name  | pass | age  |
+------+-------+------+------+
|    2 | Shyam | s22  |   23 |
|    3 | Manoj | m23  |   23 |
|    5 | Ram   | r12  |   23 |
+------+-------+------+------+
3 rows in set (0.00 sec)

mysql> select * from students where age<23;
+------+-------+------+------+
| id   | name  | pass | age  |
+------+-------+------+------+
|    4 | Vijay | vjl  |   11 |
|    6 | Aman  | am1  |   11 |
|    8 | Kamal | km11 |   22 |
|    9 | Kamal | km1  |   22 |
+------+-------+------+------+
4 rows in set (0.00 sec)

mysql> select * from students where age<20;
+------+-------+------+------+
| id   | name  | pass | age  |
+------+-------+------+------+
|    4 | Vijay | vjl  |   11 |
|    6 | Aman  | am1  |   11 |
+------+-------+------+------+
2 rows in set (0.00 sec)

mysql> select * from students where age>20;
+------+-------+------+------+
| id   | name  | pass | age  |
+------+-------+------+------+
|    1 | Ram   | r23  |   25 |
|    2 | Shyam | s22  |   23 |
|    3 | Manoj | m23  |   23 |
|    5 | Ram   | r12  |   23 |
|    7 | Vijay | v12  |   33 |
|    8 | Kamal | km11 |   22 |
|    9 | Kamal | km1  |   22 |
|   10 | abc   | ab23 |   33 |
+------+-------+------+------+
8 rows in set (0.00 sec)

mysql> select * from students where age>11;
+------+-------+------+------+
| id   | name  | pass | age  |
+------+-------+------+------+
|    1 | Ram   | r23  |   25 |
|    2 | Shyam | s22  |   23 |
|    3 | Manoj | m23  |   23 |
|    5 | Ram   | r12  |   23 |
|    7 | Vijay | v12  |   33 |
|    8 | Kamal | km11 |   22 |
|    9 | Kamal | km1  |   22 |
|   10 | abc   | ab23 |   33 |
+------+-------+------+------+
8 rows in set (0.00 sec)

mysql> select * from students where age<11;
Empty set (0.00 sec)

mysql> select * from students where age<=11;
+------+-------+------+------+
| id   | name  | pass | age  |
+------+-------+------+------+
|    4 | Vijay | vjl  |   11 |
|    6 | Aman  | am1  |   11 |
+------+-------+------+------+
2 rows in set (0.00 sec)
mysql> select * from students where name='Ram' and age>20;
+------+------+------+------+
| id   | name | pass | age  |
+------+------+------+------+
|    1 | Ram  | r23  |   25 |
|    5 | Ram  | r12  |   23 |
+------+------+------+------+
2 rows in set (0.00 sec)

mysql> select * from students where name='Ram' and age>23;
+------+------+------+------+
| id   | name | pass | age  |
+------+------+------+------+
|    1 | Ram  | r23  |   25 |
+------+------+------+------+
1 row in set (0.00 sec)

mysql> select * from students where name='Ram' or age>23;
+------+-------+------+------+
| id   | name  | pass | age  |
+------+-------+------+------+
|    1 | Ram   | r23  |   25 |
|    5 | Ram   | r12  |   23 |
|    7 | Vijay | v12  |   33 |
|   10 | abc   | ab23 |   33 |
+------+-------+------+------+
4 rows in set (0.00 sec)

mysql> select * from students where age>=20 and age<=25;
+------+-------+------+------+
| id   | name  | pass | age  |
+------+-------+------+------+
|    1 | Ram   | r23  |   25 |
|    2 | Shyam | s22  |   23 |
|    3 | Manoj | m23  |   23 |
|    5 | Ram   | r12  |   23 |
|    8 | Kamal | km11 |   22 |
|    9 | Kamal | km1  |   22 |
+------+-------+------+------+
6 rows in set (0.00 sec)

mysql> select * from students where age>=20 && age<=25;
+------+-------+------+------+
| id   | name  | pass | age  |
+------+-------+------+------+
|    1 | Ram   | r23  |   25 |
|    2 | Shyam | s22  |   23 |
|    3 | Manoj | m23  |   23 |
|    5 | Ram   | r12  |   23 |
|    8 | Kamal | km11 |   22 |
|    9 | Kamal | km1  |   22 |
+------+-------+------+------+
6 rows in set, 1 warning (0.00 sec)
