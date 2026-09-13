mysql> create database arundbms;
Query OK, 1 row affected (0.05 sec)

mysql> use arundbms;
Database changed
mysql> create table Employee(first_name varchar(30),last_name varchar(30),department_id int,primary key (department_id));
Query OK, 0 rows affected (0.11 sec)

mysql> show tables;
+--------------------+
| Tables_in_ajaydbms |
+--------------------+
| employee           |
+--------------------+
1 row in set (0.03 sec)

mysql> desc Employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| first_name    | varchar(30) | YES  |     | NULL    |       |
| last_name     | varchar(30) | YES  |     | NULL    |       |
| department_id | int         | NO   | PRI | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.03 sec)

mysql> insert into Employee(first_name,last_name,department_id)values('Badal','Vishwakarma',100);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee(first_name,last_name,department_id)values('Arun','Tiwari',101);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee(first_name,last_name,department_id)values('Darshan','Jain',102);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee(first_name,last_name,department_id)values('Mayank','Gupta',103);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee(first_name,last_name,department_id)values('Ayush','Sharma',104);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee(first_name,last_name,department_id)values('Aryan','Sahu',105);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee(first_name,last_name,department_id)values('kavayansh','Rathore',106);
Query OK, 1 row affected (0.01 sec)

mysql> select * from Employee;
+------------+-------------+---------------+
| first_name | last_name   | department_id |
+------------+-------------+---------------+
| Badal      | Vishwakarma |           100 |
| Arun       | Tiwari      |           101 |
| Darshan    | Jain        |           102 |
| Mayank     | Gupta       |           103 |
| Ayush      | Sharma      |           104 |
| Aryan      | Sahu        |           105 |
| kavayansh  | Rathore     |           106 |
+------------+-------------+---------------+
7 rows in set (0.00 sec)

mysql> select first_name AS 'First Name',last_name As 'Last Name' from Employee;
+------------+-------------+
| First Name | Last Name   |
+------------+-------------+
| Badal      | Vishwakarma |
| Arun       | Tiwari      |
| Darshan    | Jain        |
| Mayank     | Gupta       |
| Ayush      | Sharma      |
| Aryan      | Sahu        |
| kavayansh  | Rathore     |
+------------+-------------+
7 rows in set (0.00 sec)

mysql> select DISTINCT department_id from Employee;
+---------------+
| department_id |
+---------------+
|           100 |
|           101 |
|           102 |
|           103 |
|           104 |
|           105 |
|           106 |
+---------------+
7 rows in set (0.00 sec)

mysql>
