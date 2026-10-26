mysql> create database arundbms;
Query OK, 1 row affected (0.01 sec)

mysql> use arundbms;
Database changed
mysql> create table Employee(first_name varchar(30),last_name varchar(30),department_id int,salary int,primary key (department_id));
Query OK, 0 rows affected (0.03 sec)

mysql> show tables;
+------------------+
| Tables_in_arundbms |
+------------------+
| employee         |
+------------------+
1 row in set (0.00 sec)

mysql> desc Employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| first_name    | varchar(30) | YES  |     | NULL    |       |
| last_name     | varchar(30) | YES  |     | NULL    |       |
| department_id | int         | NO   | PRI | NULL    |       |
| salary        | int         | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into Employee(first_name,last_name,department_id,salary)values('Badal','Vishwakarma',100,50000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee(first_name,last_name,department_id,salary)values('Arun','Tiwari',101,40000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee(first_name,last_name,department_id,salary)values('Darshan','Jain',102,30000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee(first_name,last_name,department_id,salary)values('Mayank','Gupta',103,20000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee(first_name,last_name,department_id,salary)values('Ayush','Sharma',104,10000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee(first_name,last_name,department_id,salary)values('Aryan','Sahu',105,100000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee(first_name,last_name,department_id,salary)values('Kavayansh','Rathore',106,200000);
Query OK, 1 row affected (0.01 sec)

mysql> select * from Employee;
+------------+-------------+---------------+--------+
| first_name | last_name   | department_id | salary |
+------------+-------------+---------------+--------+
| Badal      | Vishwakarma |           100 |  50000 |
| Arun       | Tiwari      |           101 |  40000 |
| Darshan    | Jain        |           102 |  30000 |
| Mayank     | Gupta       |           103 |  20000 |
| Ayush      | Sharma      |           104 |  10000 |
| Aryan      | Sahu        |           105 | 100000 |
| Kavayansh  | Rathore     |           106 | 200000 |
+------------+-------------+---------------+--------+
7 rows in set (0.00 sec)

mysql>  select first_name AS 'First Name',last_name As 'Last Name' from Employee;
+------------+-------------+
| First Name | Last Name   |
+------------+-------------+
| Badal      | Vishwakarma |
| Arun       | Tiwari      |
| Darshan    | Jain        |
| Mayank     | Gupta       |
| Ayush      | Sharma      |
| Aryan      | Sahu        |
| Kavayansh  | Rathore     |
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

mysql>  select * from Employee order by first_name desc;
+------------+-------------+---------------+--------+
| first_name | last_name   | department_id | salary |
+------------+-------------+---------------+--------+
| Mayank     | Gupta       |           103 |  20000 |
| Kavayansh  | Rathore     |           106 | 200000 |
| Darshan    | Jain        |           102 |  30000 |
| Badal      | Vishwakarma |           100 |  50000 |
| Ayush      | Sharma      |           104 |  10000 |
| Aryan      | Sahu        |           105 | 100000 |
| Arun       | Tiwari      |           101 |  40000 |
+------------+-------------+---------------+--------+
7 rows in set (0.00 sec)

mysql> select first_name,last_name,salary, (salary * 0.15) AS PF from Employee;
+------------+-------------+--------+----------+
| first_name | last_name   | salary | PF       |
+------------+-------------+--------+----------+
| Badal      | Vishwakarma |  50000 |  7500.00 |
| Arun       | Tiwari      |  40000 |  6000.00 |
| Darshan    | Jain        |  30000 |  4500.00 |
| Mayank     | Gupta       |  20000 |  3000.00 |
| Ayush      | Sharma      |  10000 |  1500.00 |
| Aryan      | Sahu        | 100000 | 15000.00 |
| Kavayansh  | Rathore     | 200000 | 30000.00 |
+------------+-------------+--------+----------+
7 rows in set (0.00 sec)

mysql>
